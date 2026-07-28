import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.BasicHypergeometricRootSystem

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure KasigawaSaitoPackage {R : RootSystemPackage} where
  qDifferenceOperators : Type u
  coordinateRing : Type v
  integrableConnection : Prop
  monodromyRepresentation : Type w
  isomonodromicDeformation : Prop
  correspondenceWithBasicHypergeometric : Prop

structure KasigawaSaitoEvidence {R : RootSystemPackage}
    (K : KasigawaSaitoPackage R) where
  integrableConnectionClosed : K.integrableConnection
  isomonodromicDeformationClosed : K.isomonodromicDeformation
  correspondenceWithBasicHypergeometricClosed : K.correspondenceWithBasicHypergeometric

def KasigawaSaitoClosed {R : RootSystemPackage}
    (K : KasigawaSaitoPackage R) : Prop :=
  K.integrableConnection ∧ K.isomonodromicDeformation ∧ K.correspondenceWithBasicHypergeometric

theorem kasigawa_saito_closed_from_evidence
    {R : RootSystemPackage} (K : KasigawaSaitoPackage R)
    (E : KasigawaSaitoEvidence K) : KasigawaSaitoClosed K := by
  exact And.intro E.integrableConnectionClosed (And.intro E.isomonodromicDeformationClosed E.correspondenceWithBasicHypergeometricClosed)

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse