.class public Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "RSAKeyGenerationParameters.java"


# instance fields
.field private blacklist certainty:I

.field private blacklist publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V
    .registers 5

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    const/16 p2, 0xc

    if-lt p3, p2, :cond_1b

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    .line 40
    iput p4, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    return-void

    .line 36
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public exponent cannot be even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key strength too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getCertainty()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    return p0
.end method

.method public blacklist getPublicExponent()Ljava/math/BigInteger;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method
