import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.RootHypergeometricObjects

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure ConvergencePackage {R : RootSystem n} {D : BasicHypergeometricData R} where
  radiusPositive : Prop
  termDecay : Prop
  absoluteConvergence : Prop

structure ConvergenceEvidence {R : RootSystem n} {D : BasicHypergeometricData R} (C : ConvergencePackage) where
  radiusPositiveClosed : C.radiusPositive
  termDecayClosed : C.termDecay
  absoluteConvergenceClosed : C.absoluteConvergence

def ConvergenceClosed {R : RootSystem n} {D : BasicHypergeometricData R} (C : ConvergencePackage) : Prop :=
  C.radiusPositive ∧ C.termDecay ∧ C.absoluteConvergence

theorem convergence_closed_from_evidence
    {R : RootSystem n} {D : BasicHypergeometricData R}
    (C : ConvergencePackage) (E : ConvergenceEvidence C) :
    ConvergenceClosed C := by
  exact And.intro E.radiusPositiveClosed
    (And.intro E.termDecayClosed E.absoluteConvergenceClosed)

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse