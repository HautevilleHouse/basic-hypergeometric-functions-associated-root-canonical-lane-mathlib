import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure RootSystemPackage where
  rootSpaceType : Type u
  simpleRoots : rootSpaceType
  weylGroup : Type v
  weylGroupAction : weylGroup → rootSpaceType → rootSpaceType
  positiveRoots : List rootSpaceType
  rootPairing : rootSpaceType → rootSpaceType → ℝ
  dynkinDiagram : Prop
  finiteType : Prop
  crystallographic : Prop
  reducedRootSystem : Prop

defaultRootSystemPackage : RootSystemPackage where
  rootSpaceType := Unit
  simpleRoots := ()
  weylGroup := Unit
  weylGroupAction := λ _ _ => ()
  positiveRoots := []
  rootPairing := λ _ _ => 0
  dynkinDiagram := True
  finiteType := True
  crystallographic := True
  reducedRootSystem := True

structure RootSystemEvidence (R : RootSystemPackage) where
  dynkinDiagramClosed : R.dynkinDiagram
  finiteTypeClosed : R.finiteType
  crystallographicClosed : R.crystallographic
  reducedRootSystemClosed : R.reducedRootSystem

def RootSystemClosed (R : RootSystemPackage) : Prop :=
  R.dynkinDiagram ∧ R.finiteType ∧ R.crystallographic ∧ R.reducedRootSystem

theorem root_system_closed_from_evidence (R : RootSystemPackage) (E : RootSystemEvidence R) : RootSystemClosed R := by
  exact And.intro E.dynkinDiagramClosed (And.intro E.finiteTypeClosed (And.intro E.crystallographicClosed E.reducedRootSystemClosed))

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse
