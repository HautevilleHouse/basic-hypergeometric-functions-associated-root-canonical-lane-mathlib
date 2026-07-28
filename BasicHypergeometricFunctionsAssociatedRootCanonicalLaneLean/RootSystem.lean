import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure RootSystemWitness (R : Type) where
  rootSystem : RootSystem R
  closureProperty : Prop
  closureTerm : closureProperty

def RootSystemWitnessClosed (R : Type) (rs : RootSystem R) : Prop :=
  rs.satisfiesRootAxioms

structure RootSystemEvidence (R : Type) (rs : RootSystem R) where
  satisfiesRootAxiomsClosed : rs.satisfiesRootAxioms

theorem rootSystemClosedFromEvidence (R : Type) (rs : RootSystem R) (E : RootSystemEvidence R rs) :
    RootSystemWitnessClosed R rs := by
  exact E.satisfiesRootAxiomsClosed

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse