.class Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;
.source "GF2Polynomial.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/field/Polynomial;


# instance fields
.field protected final blacklist exponents:[I


# direct methods
.method constructor blacklist <init>([I)V
    .registers 3
    .param p1, "exponents"    # [I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    .line 13
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 27
    if-ne p0, p1, :cond_4

    .line 29
    const/4 v0, 0x1

    return v0

    .line 31
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_a

    .line 33
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;

    .line 36
    .local v0, "other":Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getDegree()I
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getExponentsPresent()[I
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
