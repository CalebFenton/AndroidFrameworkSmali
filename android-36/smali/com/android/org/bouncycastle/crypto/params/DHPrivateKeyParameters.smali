.class public Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPrivateKeyParameters.java"


# instance fields
.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 4

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    .line 20
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 36
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 41
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 43
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public blacklist getX()Ljava/math/BigInteger;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
