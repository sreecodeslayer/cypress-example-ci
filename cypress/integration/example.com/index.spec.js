describe('TEST THAT PASSES', function() {
  it('makes a dummy passing test!', function() {
    expect(true).to.equal(true)
  })
})
describe('TEST THAT FAILS', function() {
  it('makes a fummy failing test!', function() {
    expect(false).to.equal(true)
  })
})