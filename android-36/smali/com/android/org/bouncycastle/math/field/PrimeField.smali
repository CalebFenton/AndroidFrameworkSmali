.class Lcom/android/org/bouncycastle/math/field/PrimeField;
.super Ljava/lang/Object;
.source "PrimeField.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/field/FiniteField;


# instance fields
.field protected final blacklist characteristic:Ljava/math/BigInteger;


# direct methods
.method constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 31
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/field/PrimeField;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 35
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/field/PrimeField;

    .line 36
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist getCharacteristic()Ljava/math/BigInteger;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getDimension()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method
