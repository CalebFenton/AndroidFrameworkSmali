.class public Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    .line 27
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    .line 28
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    #@d
    .line 29
    const-wide/16 v0, 0x1

    #@f
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    #@15
    .line 30
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    #@18
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    .line 40
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    .line 41
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    #@d
    .line 42
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    #@f
    .line 43
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    #@12
    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    .line 54
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    .line 55
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    #@d
    .line 56
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    #@f
    .line 57
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    #@11
    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 107
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 109
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 112
    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@9
    .line 114
    .local v0, "other":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    #@22
    move-result v1

    #@23
    :cond_1
    return v1
.end method

.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    return-object v0
.end method

.method public getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    #@f
    move-result v1

    #@10
    xor-int/2addr v0, v1

    #@11
    return v0
.end method
