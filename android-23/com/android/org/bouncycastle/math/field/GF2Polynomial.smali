.class Lcom/android/org/bouncycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;
.source "GF2Polynomial.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/field/Polynomial;


# instance fields
.field protected final exponents:[I


# direct methods
.method constructor <init>([I)V
    .locals 1
    .param p1, "exponents"    # [I

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 11
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    #@9
    .line 9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 26
    if-ne p0, p1, :cond_0

    #@2
    .line 28
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 30
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 32
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 34
    check-cast v0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;

    #@d
    .line 35
    .local v0, "other":Lcom/android/org/bouncycastle/math/field/GF2Polynomial;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    #@11
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getDegree()I
    .locals 2

    #@0
    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    #@4
    array-length v1, v1

    #@5
    add-int/lit8 v1, v1, -0x1

    #@7
    aget v0, v0, v1

    #@9
    return v0
.end method

.method public getExponentsPresent()[I
    .locals 1

    #@0
    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
