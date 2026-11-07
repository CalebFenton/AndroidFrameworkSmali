.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPrivateKeyParameters.java"


# instance fields
.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    .line 20
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    .line 21
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 36
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 38
    return v1

    .line 41
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 43
    .local v0, "other":Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public blacklist getX()Ljava/math/BigInteger;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
