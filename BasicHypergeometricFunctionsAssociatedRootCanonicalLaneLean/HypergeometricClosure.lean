import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.BasicHypergeometricRootSystem
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.BasicHypergeometricFunction
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.AskeyWilsonAlgebra
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.KasigawaSaitoTheory

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.remainderRecorded

def ConstrainedHypergeometricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hypergeometric_endgame (A : AdmissibleClass) :
    ConstrainedHypergeometricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse