.class public interface abstract Landroid/icu/impl/number/DecimalQuantity;
.super Ljava/lang/Object;
.source "DecimalQuantity.java"

# interfaces
.implements Landroid/icu/text/PluralRules$IFixedDecimal;


# virtual methods
.method public abstract blacklist adjustExponent(I)V
.end method

.method public abstract blacklist adjustMagnitude(I)V
.end method

.method public abstract blacklist applyMaxInteger(I)V
.end method

.method public abstract blacklist copyFrom(Landroid/icu/impl/number/DecimalQuantity;)V
.end method

.method public abstract blacklist createCopy()Landroid/icu/impl/number/DecimalQuantity;
.end method

.method public abstract blacklist getDigit(I)B
.end method

.method public abstract blacklist getExponent()I
.end method

.method public abstract blacklist getLowerDisplayMagnitude()I
.end method

.method public abstract blacklist getMagnitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation
.end method

.method public abstract blacklist getPositionFingerprint()J
.end method

.method public abstract blacklist getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;
.end method

.method public abstract blacklist getUpperDisplayMagnitude()I
.end method

.method public abstract blacklist isInfinite()Z
.end method

.method public abstract blacklist isNaN()Z
.end method

.method public abstract blacklist isNegative()Z
.end method

.method public abstract blacklist isZeroish()Z
.end method

.method public abstract blacklist maxRepresentableDigits()I
.end method

.method public abstract blacklist multiplyBy(Ljava/math/BigDecimal;)V
.end method

.method public abstract blacklist negate()V
.end method

.method public abstract blacklist populateUFieldPosition(Ljava/text/FieldPosition;)V
.end method

.method public abstract blacklist resetExponent()V
.end method

.method public abstract blacklist roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
.end method

.method public abstract blacklist roundToInfinity()V
.end method

.method public abstract blacklist roundToMagnitude(ILjava/math/MathContext;)V
.end method

.method public abstract blacklist roundToNickel(ILjava/math/MathContext;)V
.end method

.method public abstract blacklist setMinFraction(I)V
.end method

.method public abstract blacklist setMinInteger(I)V
.end method

.method public abstract blacklist setToBigDecimal(Ljava/math/BigDecimal;)V
.end method

.method public abstract blacklist signum()Landroid/icu/impl/number/Modifier$Signum;
.end method

.method public abstract blacklist toBigDecimal()Ljava/math/BigDecimal;
.end method

.method public abstract blacklist toDouble()D
.end method

.method public abstract blacklist toExponentString()Ljava/lang/String;
.end method

.method public abstract blacklist toLong(Z)J
.end method

.method public abstract blacklist toPlainString()Ljava/lang/String;
.end method
