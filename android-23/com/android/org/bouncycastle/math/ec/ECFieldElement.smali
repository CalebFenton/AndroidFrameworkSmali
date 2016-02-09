.class public abstract Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.super Ljava/lang/Object;
.source "ECFieldElement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;,
        Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public bitLength()I
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public abstract divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x7

    #@6
    div-int/lit8 v0, v0, 0x8

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public abstract getFieldName()Ljava/lang/String;
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public isOne()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 34
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isZero()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 39
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public abstract multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public abstract negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public squareMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public abstract subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public testBitZero()Z
    .locals 2

    #@0
    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public abstract toBigInteger()Ljava/math/BigInteger;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x10

    #@6
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
