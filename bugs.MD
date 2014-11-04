# Bugs found

###in destroy method
* `@event = Event.find(params[:iid])` should be `@event = Event.find(params[:id])
`

* `events_params` is not defined for destroy method
  * added
```ruby
  def event_params
  end
```
* ```ruby
    ArgumentError:
      wrong number of arguments (1 for 0)
  ```
found out that `@event.destroy` takes 0 arguments
