.class public Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;
.super Ljava/lang/Object;
.source "GLVTypeBEndomorphism.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# instance fields
.field protected final curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected final parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

.field protected final pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V
    .locals 2
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    .line 19
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@7
    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;

    #@9
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getBeta()Ljava/math/BigInteger;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    #@16
    .line 16
    return-void
.end method


# virtual methods
.method protected calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 4
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "t"    # I

    #@0
    .prologue
    .line 48
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v3

    #@4
    if-gez v3, :cond_2

    #@6
    const/4 v2, 0x1

    #@7
    .line 49
    .local v2, "negative":Z
    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e
    move-result-object v0

    #@f
    .line 50
    .local v0, "b":Ljava/math/BigInteger;
    add-int/lit8 v3, p3, -0x1

    #@11
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    #@14
    move-result v1

    #@15
    .line 51
    .local v1, "extra":Z
    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    .line 52
    if-eqz v1, :cond_0

    #@1b
    .line 54
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@1d
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@20
    move-result-object v0

    #@21
    .line 56
    :cond_0
    if-eqz v2, :cond_1

    #@23
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@26
    move-result-object v0

    #@27
    .end local v0    # "b":Ljava/math/BigInteger;
    :cond_1
    return-object v0

    #@28
    .line 48
    .end local v1    # "extra":Z
    .end local v2    # "negative":Z
    :cond_2
    const/4 v2, 0x0

    #@29
    .restart local v2    # "negative":Z
    goto :goto_0
.end method

.method public decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 25
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@4
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getBits()I

    #@7
    move-result v4

    #@8
    .line 26
    .local v4, "bits":I
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@a
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getG1()Ljava/math/BigInteger;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {p0, p1, v7, v4}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@11
    move-result-object v2

    #@12
    .line 27
    .local v2, "b1":Ljava/math/BigInteger;
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@14
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getG2()Ljava/math/BigInteger;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {p0, p1, v7, v4}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@1b
    move-result-object v3

    #@1c
    .line 29
    .local v3, "b2":Ljava/math/BigInteger;
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@1e
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getV1()[Ljava/math/BigInteger;

    #@21
    move-result-object v5

    #@22
    .local v5, "v1":[Ljava/math/BigInteger;
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@24
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getV2()[Ljava/math/BigInteger;

    #@27
    move-result-object v6

    #@28
    .line 30
    .local v6, "v2":[Ljava/math/BigInteger;
    aget-object v7, v5, v9

    #@2a
    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2d
    move-result-object v7

    #@2e
    aget-object v8, v6, v9

    #@30
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3b
    move-result-object v0

    #@3c
    .line 31
    .local v0, "a":Ljava/math/BigInteger;
    aget-object v7, v5, v10

    #@3e
    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@41
    move-result-object v7

    #@42
    aget-object v8, v6, v10

    #@44
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@4f
    move-result-object v1

    #@50
    .line 33
    .local v1, "b":Ljava/math/BigInteger;
    const/4 v7, 0x2

    #@51
    new-array v7, v7, [Ljava/math/BigInteger;

    #@53
    aput-object v0, v7, v9

    #@55
    aput-object v1, v7, v10

    #@57
    return-object v7
.end method

.method public getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    #@2
    return-object v0
.end method

.method public hasEfficientPointMap()Z
    .locals 1

    #@0
    .prologue
    .line 43
    const/4 v0, 0x1

    #@1
    return v0
.end method
