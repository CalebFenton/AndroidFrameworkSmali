.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "q"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 503
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getPrimeField(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V

    #@7
    .line 501
    return-void
.end method


# virtual methods
.method protected decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 513
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    move-result-object v1

    #@5
    .line 514
    .local v1, "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8
    move-result-object v3

    #@9
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v3

    #@13
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@18
    move-result-object v0

    #@19
    .line 515
    .local v0, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c
    move-result-object v2

    #@1d
    .line 520
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v2, :cond_0

    #@1f
    .line 522
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v4, "Invalid point compression"

    #@24
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 525
    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    #@2b
    move-result v5

    #@2c
    if-ne p1, v4, :cond_2

    #@2e
    move v3, v4

    #@2f
    :goto_0
    if-eq v5, v3, :cond_1

    #@31
    .line 528
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    move-result-object v2

    #@35
    .line 531
    :cond_1
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@38
    move-result-object v3

    #@39
    return-object v3

    #@3a
    .line 525
    :cond_2
    const/4 v3, 0x0

    #@3b
    goto :goto_0
.end method

.method public isValidFieldElement(Ljava/math/BigInteger;)Z
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 508
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@14
    move-result v1

    #@15
    if-gez v1, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    :cond_0
    return v0
.end method
