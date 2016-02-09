.class public Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;
.super Ljava/lang/Object;
.source "RandomDSAKCalculator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private q:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 9
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    #@8
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 2
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "d"    # Ljava/math/BigInteger;
    .param p3, "message"    # [B

    #@0
    .prologue
    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Operation not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    #@2
    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->random:Ljava/security/SecureRandom;

    #@4
    .line 19
    return-void
.end method

.method public isDeterministic()Z
    .locals 1

    #@0
    .prologue
    .line 16
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public nextK()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 32
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    #@5
    move-result v1

    #@6
    .line 37
    .local v1, "qBitLength":I
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    #@8
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->random:Ljava/security/SecureRandom;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    #@d
    .line 39
    .local v0, "k":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    #@17
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@1a
    move-result v2

    #@1b
    if-gez v2, :cond_0

    #@1d
    .line 41
    return-object v0
.end method
