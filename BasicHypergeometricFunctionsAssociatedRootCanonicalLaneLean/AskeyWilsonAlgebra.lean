import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.BasicHypergeometricRootSystem

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure AskeyWilsonAlgebraPackage {R : RootSystemPackage} where
  generators : List ℂ
  relations : Prop
  representationOnWeightSpace : Type u
  quantumGroupSymmetry : Prop
  connectionToBasicHypergeometric : Prop

structure AskeyWilsonAlgebraEvidence {R : RootSystemPackage}
    (A : AskeyWilsonAlgebraPackage R) where
  relationsClosed : A.relations
  quantumGroupSymmetryClosed : A.quantumGroupSymmetry
  connectionToBasicHypergeometricClosed : A.connectionToBasicHypergeometric

def AskeyWilsonAlgebraClosed {R : RootSystemPackage}
    (A : AskeyWilsonAlgebraPackage R) : Prop :=
  A.relations ∧ A.quantumGroupSymmetry ∧ A.connectionToBasicHypergeometric

theorem askey_wilson_algebra_closed_from_evidence
    {R : RootSystemPackage} (A : AskeyWilsonAlgebraPackage R)
    (E : AskeyWilsonAlgebraEvidence A) : AskeyWilsonAlgebraClosed A := by
  exact And.intro E.relationsClosed (And.intro E.quantumGroupSymmetryClosed E.connectionToBasicHypergeometricClosed)

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse