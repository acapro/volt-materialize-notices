# Volt::Flash-Notices for Materialize

Utilizes toasts for flash messages with customizable css classes in Volt.

## Installation

This gem requires Volt -v '0.8.27.beta3' or higher and volt-materialize 

Add this line to your application's Gemfile:

    gem 'volt-materialize-notices'

Add the toast component to your application's `app/main/config/dependencies.rb`:

    component 'toast'

And then execute:

    $ bundle

Replace `<:volt:notices />` inside `app/main/views/main/main.html` with:

    <:toasts:notices />

### Customizable CSS

The toasts have a default look with a black background, however you can customize them depending on their status:

`flash._successes << "Success Message"`  -> `.toast.success{background-color: green;}`
`flash._warnings << "Warning Message"`  -> `.toast.warning{background-color: orange;}`
`flash._errors << "Error Message"`  -> `.toast.error{background-color: red;}`
`flash._notices << "Default Message"`  -> `.toast.default{background-color: black;}`

The container style can be accessed through `#toast-container` which is good if you want to reposition it.  

## Contributing

1. Fork it ( http://github.com/acapro/volt-materialize-fields/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request