.class public Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private blacklist G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private blacklist h:Ljava/math/BigInteger;

.field private blacklist n:Ljava/math/BigInteger;

.field private blacklist seed:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 29
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 30
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    const-wide/16 p1, 0x1

    .line 31
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 42
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 43
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 44
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 56
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 57
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 58
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    .line 59
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 109
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 114
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 116
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v1
.end method

.method public blacklist getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object p0
.end method

.method public blacklist getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public blacklist getH()Ljava/math/BigInteger;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getN()Ljava/math/BigInteger;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getSeed()[B
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
