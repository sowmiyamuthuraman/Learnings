# Unit tests

### Three laws

1. Write **production** code only after writing a failing test
2. Write a unit test that is sufficient to fail
3. Write a production code that is sufficient to pass the test

`Readability` is most important in test than in production code

* Tests should be in `Build-operate-check` pattern

* Minimise the number of asserts in a test and should test only one concept in a unit test

### FIRST rule

`F` - fast. 

   * Should run quickly. 
   * If running a test takes lot of time, then tests won't be run often and we wont find problem quickly 

`I` - independent

   * One test should not be dependent on other 
   * We should be able to run test in different order
   

`R` - repeatable
    
   * tests should not be bound to a specific environment. if a test is runnable in dev env, the same should be runnable in qa

`S` - self validation
  
  * tests should have boolean evaluation
  
`T` - timely

  * code should be written after writing tests.

