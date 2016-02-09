.class public Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "RSAKeyGenerationParameters.java"


# instance fields
.field private certainty:I

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V
    .locals 2
    .param p1, "publicExponent"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "strength"    # I
    .param p4, "certainty"    # I

    #@0
    .prologue
    .line 20
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@3
    .line 22
    const/16 v0, 0xc

    #@5
    if-ge p3, v0, :cond_0

    #@7
    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "key strength too small"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 30
    :cond_0
    const/4 v0, 0x0

    #@11
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v1, "public exponent cannot be even"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 35
    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    #@22
    .line 36
    iput p4, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    #@24
    .line 18
    return-void
.end method


# virtual methods
.method public getCertainty()I
    .locals 1

    #@0
    .prologue
    .line 46
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    #@2
    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
