# Bugs found

###in destroy method

#1  
```ruby
ActiveRecord::RecordNotFound:
  Couldn't find Event without an ID
```

`@event = Event.find(params[:iid])` should be `@event = Event.find(params[:id])`

#2
```ruby
NameError:
  undefined local variable or method `event_params' for <EventsController:0x007ff679fe3018>
```

`events_params` is not defined for destroy method. Add the following to controller

```ruby
private
  def event_params
  end
```

#3

```ruby
ArgumentError:
  wrong number of arguments (1 for 0)
```
found out that `Event::destroy` takes 0 arguments and changed to `@event.destroy`
