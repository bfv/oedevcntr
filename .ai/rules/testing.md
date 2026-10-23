## unit tests
unittests are placed next to the classes that are tested and get suffix `_UT`. Note that the execution of the unit test in the CI builds relies on the suffix being `_UT`. To standardize naming:

```
  @BeforeAll.
  method public void _BeforeAll():

  @BeforeEach.
  method public void _BeforeEach():
  
  @AfterEach.
  method public void AfterEach():
  
  @AfterAll.
  method public void AfterAll():
```
Note that `@Before`, `@Setup`, `@Teardown` and `@After` are deprecated in favor of the above mentioned.
The actual `@Test` method are, au contraire the regular guidelines concerning method names, in snake case. This is because the readability in the output in the CI builds vastly improves this way. The method name should describe the success scenario, f.e. `serialized_arrayobj_equal_to_template`. 

## class to test
The class to test should have a `@unittest`. Assumed is that the test class for `util/blabla/HelloWorld.cls` is `util/blabla/HelloWorld_UT.cls` and is located in the same dir as the class to test.
The `@unittest` annotion is preferably right above the class statement:
```
@unittest.
class sports2020.service.OrderLineService implements IGetDataService, IPostDataService:
  ...
```

### alternate location
future consideration

### more than one unit test
future consideration

