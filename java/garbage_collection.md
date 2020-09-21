# Garbage collection
Daemon thread - running always in background

### Objective:
   free heap memory by destroying unreachable objects
    
### Ways to make an object Eligible for garbage collection
   1. Nullifying the reference variable
   2. local scope object
   3. reassigning reference variable
   4. Island of Isolation

### Ways to request JVM to run garbage collectors
   1. System.gc()
   2. Runtime.getRuntime.gc()
      Runtime class provides an interface to interact with JVM
     
### Finalise
   Before destroying the object, garbage collector calls the finalise method of Object class
   
   finalize() - empty implementation - recommended to override
   
   Called only once on any object
   
   Exceptions that are raised by the finalize() method are ignored and finalization of objects terminate
   
   `System.runFinalization` can be used to trigger the finalize method
   
### Island of isolation
   group of objects that reference each other and are not referenced by any other active object in the application
   