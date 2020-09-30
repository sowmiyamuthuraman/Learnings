# Docker

```ruby 
  docker rm --force <container_name>
```
  - --force flag stops the conatianer if its running and before removing it
  
  
## Multi stage builds
   - A Dockerfile can have multiple *FROM* statements
   - Each *From* statement begins a new stage of build
   - Final FROM statement is saved as part of the built image and all the intermediate images are discarded
   - By default, the build stages can be referred using index starting from 0. best practice is to assign a name to each stage.
   ```ruby
        COPY --from=0 src/ .
        COPY --from=stage1 src/ .
   ```
   - External image can also be used as a stage
   ```ruby
      COPY --from=nginx
   ```
   
   ## Best practices
   
   - Keep images small
      - choose appropriate base image
      - use multi stage builds
   - tag images with information that can be used while deploying application in different envs. Donot rely on the default tag latest
   - use volumes to store application data
   - use secrets for sensitive information and configs for non-sensitive information using config files
      
  
