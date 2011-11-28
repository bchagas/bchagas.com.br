def should_be_delivered_on_creation_with(clazz)
  context "on creation" do
    it "should be send on an email" do
      mailer = mock(clazz)
      clazz.should_receive(subject.class.to_s.underscore).with(an_instance_of(subject.class)).and_return(mailer)
      mailer.should_receive :deliver
      Factory subject.class.to_s.underscore
    end
  end
end

def should_allow_only_email_values_for(name)
  should_allow_values_for name, "dc.rec1@gmail.com", "boss@mouseoverstudio.com.br"
  should_not_allow_values_for name, "dc.rec1@gmail.", "boss@mouseoverstudio", "mouseoverstudio"
end

def should_have_url_field(name)
  it "should have #{name} as an URL field"  do
    subject.should respond_to("clean_#{name}_url_field")
  end
end

def should_have_an_slugged_id(name)
  it "should be found by the slugged #{name} as an id" do
    clazz = subject.class
    object = Factory(clazz.to_s.underscore, name => "Hello World")
    clazz.find(object.id).should == clazz.find("hello-world")
  end
end

def should_have_an_id(name)
  it "should have the #{name} as an id" do
    clazz = subject.class
    clazz.find(Factory(clazz.to_s.underscore).send(name)).should_not be_nil
  end
end

def should_have_attached_file(name, opts = {})
  it "should have #{name} as an attached file" do
    (subject.class.attachment_definitions || {})[name].should_not be_nil
  end

  opts.fetch(:styles, {}).each do |style, size|
    it "should have #{name} as an attached file with the #{style} style as #{size}" do
      subject.class.attachment_definitions[name].fetch(:styles, {})[style].should == opts[:styles][style]
    end
  end
end

def should_be_a_tagger
  it "should be a tagger" do
    subject.class.should be_is_tagger
  end
end

def should_be_taggable
  it "should be taggable" do
    subject.class.should be_taggable
  end
end

def should_have_tags_on(*names)
  names.each do |name|
    it "should have #{name} as tags" do
      subject.class.tag_types.should include(name) 
    end
  end
end

def should_be_a_state_machine
  it "should be a state machine" do
    subject.class.included_modules.should be_include(AASM)
  end
end

def should_have_default_state(state)
  it "should be #{state} by default" do
    Factory(subject.class.to_s.underscore).aasm_state.should eql(state.to_s)
  end
end

def should_be(state)
  it "should be #{state}" do
    subject.class.aasm_states.map(&:name).should be_include(state)
  end
end

def should_change(opts)
  it "should change from #{opts[:from]} to #{opts[:to]} on ##{opts[:on]}" do
    subject.aasm_state = opts[:from]
    subject.send "#{opts[:on]}"
    subject.aasm_state.should eql(opts[:to].to_s)
  end
end

def should_be_versioned
  it "should be versioned" do
    subject.class.should be_versioned
  end
end

def should_be_audited
  it "should be audited" do
    subject.paper_trail_active.should be_true
  end
end
