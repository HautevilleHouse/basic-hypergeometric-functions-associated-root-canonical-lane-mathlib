import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HypergeometricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse