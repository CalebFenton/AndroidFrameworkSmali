.class public Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "GLVTypeBParameters.java"


# instance fields
.field protected final beta:Ljava/math/BigInteger;

.field protected final bits:I

.field protected final g1:Ljava/math/BigInteger;

.field protected final g2:Ljava/math/BigInteger;

.field protected final lambda:Ljava/math/BigInteger;

.field protected final v1A:Ljava/math/BigInteger;

.field protected final v1B:Ljava/math/BigInteger;

.field protected final v2A:Ljava/math/BigInteger;

.field protected final v2B:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 3
    .param p1, "beta"    # Ljava/math/BigInteger;
    .param p2, "lambda"    # Ljava/math/BigInteger;
    .param p3, "v1"    # [Ljava/math/BigInteger;
    .param p4, "v2"    # [Ljava/math/BigInteger;
    .param p5, "g1"    # Ljava/math/BigInteger;
    .param p6, "g2"    # Ljava/math/BigInteger;
    .param p7, "bits"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 24
    const-string/jumbo v0, "v1"

    #@8
    invoke-static {p3, v0}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    #@b
    .line 25
    const-string/jumbo v0, "v2"

    #@e
    invoke-static {p4, v0}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    #@11
    .line 27
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    #@13
    .line 28
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    #@15
    .line 29
    aget-object v0, p3, v1

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    #@19
    .line 30
    aget-object v0, p3, v2

    #@1b
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    #@1d
    .line 31
    aget-object v0, p4, v1

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    #@21
    .line 32
    aget-object v0, p4, v2

    #@23
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    #@25
    .line 33
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    #@27
    .line 34
    iput-object p6, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    #@29
    .line 35
    iput p7, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    #@2b
    .line 22
    return-void
.end method

.method private static checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3
    .param p0, "v"    # [Ljava/math/BigInteger;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9
    if-eqz p0, :cond_0

    #@2
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "\'"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "\' must consist of exactly 2 (non-null) values"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 9
    :cond_1
    const/4 v0, 0x0

    #@28
    aget-object v0, p0, v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    const/4 v0, 0x1

    #@2d
    aget-object v0, p0, v0

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 7
    return-void
.end method


# virtual methods
.method public getBeta()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getBits()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    #@2
    return v0
.end method

.method public getG1()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getG2()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getLambda()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getV1()[Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 53
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/math/BigInteger;

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    return-object v0
.end method

.method public getV1A()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getV1B()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getV2()[Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 71
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/math/BigInteger;

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    return-object v0
.end method

.method public getV2A()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getV2B()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
