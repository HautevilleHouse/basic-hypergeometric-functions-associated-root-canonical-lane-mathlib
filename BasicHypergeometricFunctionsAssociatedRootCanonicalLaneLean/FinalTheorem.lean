import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.RootSystemPackage
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.BasicHypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

def ConstrainedHypergeometricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem hypergeometric_endgame (A : AdmissibleClass) : ConstrainedHypergeometricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse
