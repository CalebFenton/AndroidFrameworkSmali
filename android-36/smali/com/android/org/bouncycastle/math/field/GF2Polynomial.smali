.class Lcom/android/org/bouncycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;
.source "GF2Polynomial.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/field/Polynomial;


# instance fields
.field protected final blacklist exponents:[I


# direct methods
.method constructor blacklist <init>([I)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

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
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 35
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;

    .line 36
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result p0

    return p0
.end method

.method public blacklist getDegree()I
    .registers 2

    .line 17
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0
.end method

.method public blacklist getExponentsPresent()[I
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method
