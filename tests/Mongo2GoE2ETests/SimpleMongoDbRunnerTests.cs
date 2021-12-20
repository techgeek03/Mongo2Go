using Mongo2Go;
using MongoDB.Driver;
using Xunit;

namespace Mongo2GoE2ETests
{
    public class SimpleMongoDbRunnerTests
    {
        [Fact]
        public void Given_MongoDbRunner_ThatIsStartedWithDefaultParametars_MongoD_Is_Started_And_TestDocumentIsInserted()
        {
            var runner = MongoDbRunner.StartForDebugging(singleNodeReplSet: false);

            var client = new MongoClient(runner.ConnectionString);
            var database = client.GetDatabase("mongo2go-e2e-tests");
            var collection = database.GetCollection<TestDocument>("test-collection");

            collection.InsertOne(new TestDocument("Test"));
        }
    }

    public record TestDocument(string Name);
}
