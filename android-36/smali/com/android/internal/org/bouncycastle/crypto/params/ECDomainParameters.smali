.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source "ECDomainParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field private final blacklist G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field private final blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field private final blacklist h:Ljava/math/BigInteger;

.field private blacklist hInv:Ljava/math/BigInteger;

.field private final blacklist n:Ljava/math/BigInteger;

.field private final blacklist seed:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .registers 8
    .param p1, "x9"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 10
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    .line 38
    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local p2    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local p3    # "n":Ljava/math/BigInteger;
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v2, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v3, "n":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .line 47
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local p2    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local p3    # "n":Ljava/math/BigInteger;
    .end local p4    # "h":Ljava/math/BigInteger;
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v2, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v3, "n":Ljava/math/BigInteger;
    .local v4, "h":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 8
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    .line 57
    if-eqz p1, :cond_25

    .line 61
    if-eqz p3, :cond_1d

    .line 67
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 68
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 69
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 70
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 71
    invoke-static {p5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 72
    return-void

    .line 63
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "n"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "curve"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "q"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 163
    if-eqz p1, :cond_27

    .line 168
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 180
    return-object p1

    .line 177
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point not on curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point at infinity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Point cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 113
    return v0

    .line 116
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 118
    return v2

    .line 121
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 123
    .local v1, "other":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 124
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 123
    :goto_2d
    return v0
.end method

.method public blacklist getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public blacklist getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist getH()Ljava/math/BigInteger;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public declared-synchronized blacklist getHInv()Ljava/math/BigInteger;
    .registers 3

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    if-nez v0, :cond_f

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    .line 100
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 95
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public blacklist getN()Ljava/math/BigInteger;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSeed()[B
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 131
    const/4 v0, 0x4

    .line 132
    .local v0, "hc":I
    mul-int/lit16 v0, v0, 0x101

    .line 133
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 134
    mul-int/lit16 v0, v0, 0x101

    .line 135
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 136
    mul-int/lit16 v0, v0, 0x101

    .line 137
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 138
    return v0
.end method

.method public blacklist validatePrivateScalar(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "d"    # Ljava/math/BigInteger;

    .line 143
    if-eqz p1, :cond_1d

    .line 148
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_15

    .line 153
    return-object p1

    .line 150
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scalar is not in the interval [1, n - 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Scalar cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "q"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
