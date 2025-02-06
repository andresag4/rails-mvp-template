# Rails MVP Template

This is a free-to-use all-in-one Ruby on Rails app template.

## Features

- **Ruby Version**: 3.4.1
- **Rails Version**: 8.0.1
- **PWA ✅**: Easily configurable for Progressive Web App support.
- **RSpec ✅**: Pre-configured for testing with RSpec.
- **User Authentication ✅**: Built-in user authentication system.
- **Tailwind CSS ✅**: Integrated with Tailwind CSS for styling.
- **Admin Dashboard ✅**: Ready-to-use admin dashboard.

## Getting Started

### Prerequisites

- Ruby 3.4.1
- Rails 7.x

### Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/andresag4/rails-mvp-template.git
   cd rails-mvp-template
   ```

2. Install dependencies:
	```shell
	bundle install
	yarn install
	```

3. Set up the database:

   ```shell
   rails db:create
   rails db:migrate
   ```
   
4. Start the server:

    ```shell
    bin/dev
    ```

## Running Tests

```shell
  rspec spec
```

## PWA Configuration
To enable PWA features, uncomment the relevant lines in `config/routes.rb` and add your PWA manifest.  

## User Authentication
User authentication is pre-configured. You can find the relevant code in the `app/controllers/sessions_controller.rb` and `app/controllers/registrations_controller.rb.`  

## Tailwind CSS
Tailwind CSS is integrated for styling. You can find the configuration in app/assets/stylesheets.  

## Admin Dashboard
An admin dashboard is ready to use. You can customize it according to your needs.  

## Contributing
Feel free to submit issues and pull requests.  

## License
This project is licensed under the MIT License.
