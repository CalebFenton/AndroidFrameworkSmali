.class public Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;
.super Ljava/lang/Object;
.source "RandomDSAKCalculator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final blacklist ZERO:Ljava/math/BigInteger;


# instance fields
.field private blacklist q:Ljava/math/BigInteger;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 6
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "d"    # Ljava/math/BigInteger;
    .param p3, "message"    # [B

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .registers 3
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 27
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    .line 28
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->random:Ljava/security/SecureRandom;

    .line 29
    return-void
.end method

.method public blacklist isDeterministic()Z
    .registers 2

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nextK()Ljava/math/BigInteger;
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 43
    .local v0, "qBitLength":I
    :cond_6
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 45
    .local v1, "k":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_6

    .line 47
    return-object v1
.end method
