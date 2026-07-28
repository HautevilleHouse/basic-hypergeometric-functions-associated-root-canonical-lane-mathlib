import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.RootSystem

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure MacdonaldPolynomial (R : Type) where
  rootSystem : RootSystem R
  q : ℚ
  t : ℚ
  polynomial : (R → ℚ) → ℚ
  orthogonalityProperty : Prop
  evaluationFormula : Prop

structure MacdonaldPolynomialEvidence (R : Type) (m : MacdonaldPolynomial R) where
  orthogonalityPropertyClosed : m.orthogonalityProperty
  evaluationFormulaClosed : m.evaluationFormula

def MacdonaldPolynomialClosed (R : Type) (m : MacdonaldPolynomial R) : Prop :=
  m.orthogonalityProperty ∧ m.evaluationFormula

theorem macdonaldPolynomialClosedFromEvidence (R : Type) (m : MacdonaldPolynomial R) (E : MacdonaldPolynomialEvidence R m) :
    MacdonaldPolynomialClosed R m := by
  exact And.intro E.orthogonalityPropertyClosed E.evaluationFormulaClosed

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse