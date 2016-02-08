using Telerik.OpenAccess;

namespace Package1 {
    public partial class EntitiesModel : OpenAccessContext {
        static partial void CustomizeBackendConfiguration(ref BackendConfiguration config) {
            config.Backend = "sqlite";
        }
    }
}
