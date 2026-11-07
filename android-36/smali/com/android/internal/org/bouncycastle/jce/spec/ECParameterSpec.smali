.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private blacklist G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field private blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field private blacklist h:Ljava/math/BigInteger;

.field private blacklist n:Ljava/math/BigInteger;

.field private blacklist seed:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 29
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 30
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 31
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 42
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 43
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 44
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 7
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 56
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 57
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 58
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    .line 59
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 111
    return v1

    .line 114
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 116
    .local v0, "other":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public blacklist getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public blacklist getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist getH()Ljava/math/BigInteger;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getN()Ljava/math/BigInteger;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSeed()[B
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
