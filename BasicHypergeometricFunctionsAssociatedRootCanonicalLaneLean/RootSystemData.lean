import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure RootSystem (n : ℕ) where
  simpleRoots : Vector (Vector ℚ (n+1)) n
  coroots : Vector (Vector ℚ (n+1)) n
  cartanMatrix : Matrix (Fin n) (Fin n) ℤ
  rank : ℕ := n
  positiveRoots : List (Vector ℚ (n+1))
  fundamentalWeights : Vector (Vector ℚ (n+1)) n

structure BasicHypergeometricParameters (n : ℕ) where
  q : ℂ
  t : ℂ
  rootSystem : RootSystem n
  spectralParameter : ℂ
  multiplicityFunction : Vector ℚ (n+1) → ℕ

structure HypergeometricAdmittedObject where
  parameters : BasicHypergeometricParameters (n : ℕ)
  seriesDefined : Prop
  convergenceZone : Prop
  connectionCoefficients : Prop
  conclusion : seriesDefined ∧ convergenceZone ∧ connectionCoefficients

def HypergeometricWitnessClosed (O : HypergeometricAdmittedObject) : Prop :=
  O.conclusion

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse