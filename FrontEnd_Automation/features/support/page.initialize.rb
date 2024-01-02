Dir[File.join(File.dirname(_FILE_), 'C:\Users\Phskaterock.LAPTOP-I2GLHEIP\Desktop\Automation Quality Assurance Software Engineer\FrontEnd_Automation\features\pages'.page.rb)].each {|file| require file}

module Page

    def login
        @login || = LoginPage.new
    end

    def home
        @home || = HomePage.new
    end

end