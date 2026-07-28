import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.BasicHypergeometricRootSystem

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure BasicHypergeometricFunctionPackage {R : RootSystemPackage} where
  parameters : List ℂ
  q : ℂ
  pochhammerSymbols : List (ℕ → ℂ)
  seriesRepresentation : ℕ → ℂ
  radiusOfConvergence : ℝ
  analyticalContinuation : ℂ → ℂ
  invarianceUnderWeylGroup : Prop
  evaluationAtSpecialPoints : Prop

structure BasicHypergeometricFunctionEvidence {R : RootSystemPackage}
    (F : BasicHypergeometricFunctionPackage R) where
  invarianceUnderWeylGroupClosed : F.invarianceUnderWeylGroup
  evaluationAtSpecialPointsClosed : F.evaluationAtSpecialPoints

def BasicHypergeometricFunctionClosed {R : RootSystemPackage}
    (F : BasicHypergeometricFunctionPackage R) : Prop :=
  F.invarianceUnderWeylGroup ∧ F.evaluationAtSpecialPoints

theorem basic_hypergeometric_function_closed_from_evidence
    {R : RootSystemPackage} (F : BasicHypergeometricFunctionPackage R)
    (E : BasicHypergeometricFunctionEvidence F) : BasicHypergeometricFunctionClosed F := by
  exact And.intro E.invarianceUnderWeylGroupClosed E.evaluationAtSpecialPointsClosed

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse