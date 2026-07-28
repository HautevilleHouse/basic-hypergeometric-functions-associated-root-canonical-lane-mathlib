import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure RootSystemPackage where
  rootDatum : Type u
  weylGroup : Type v
  simpleRoots : List rootDatum
  positiveRoots : List rootDatum
  bilinearForm : rootDatum → rootDatum → ℝ
  weylGroupAction : weylGroup → rootDatum → rootDatum
  rootReflections : weylGroup → rootDatum → rootDatum
  rootPositivityCondition : Prop
  weylGroupFinite : Prop
  rootSystemIntegrity : Prop

structure RootSystemEvidence (R : RootSystemPackage) where
  rootPositivityConditionClosed : R.rootPositivityCondition
  weylGroupFiniteClosed : R.weylGroupFinite
  rootSystemIntegrityClosed : R.rootSystemIntegrity

def RootSystemClosed (R : RootSystemPackage) : Prop :=
  R.rootPositivityCondition ∧ R.weylGroupFinite ∧ R.rootSystemIntegrity

theorem root_system_closed_from_evidence (R : RootSystemPackage) (E : RootSystemEvidence R) : RootSystemClosed R := by
  exact And.intro E.rootPositivityConditionClosed (And.intro E.weylGroupFiniteClosed E.rootSystemIntegrityClosed)

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse