.class public final Lcom/android/org/conscrypt/OpenSSLXDHKeyAgreement;
.super Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;
.source "OpenSSLXDHKeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist computeKey([BLjava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 28
    check-cast p2, [B

    check-cast p3, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLXDHKeyAgreement;->computeKey([B[B[B)I

    move-result p1

    return p1
.end method

.method protected blacklist computeKey([B[B[B)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "theirPublicKey"    # [B
    .param p3, "ourPrivateKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 53
    invoke-static {p1, p3, p2}, Lcom/android/org/conscrypt/NativeCrypto;->X25519([B[B[B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    const/16 v0, 0x20

    return v0

    .line 57
    :cond_9
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Error running X25519"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic blacklist convertPrivateKey(Ljava/security/PrivateKey;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyAgreement;->convertPrivateKey(Ljava/security/PrivateKey;)[B

    move-result-object p1

    return-object p1
.end method

.method protected blacklist convertPrivateKey(Ljava/security/PrivateKey;)[B
    .registers 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 44
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    if-eqz v0, :cond_c

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->getU()[B

    move-result-object v0

    return-object v0

    .line 45
    :cond_c
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only OpenSSLX25519PublicKey accepted"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic blacklist convertPublicKey(Ljava/security/PublicKey;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyAgreement;->convertPublicKey(Ljava/security/PublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method protected blacklist convertPublicKey(Ljava/security/PublicKey;)[B
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 35
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    if-eqz v0, :cond_c

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->getU()[B

    move-result-object v0

    return-object v0

    .line 36
    :cond_c
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only OpenSSLX25519PublicKey accepted"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic blacklist getOutputSize(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyAgreement;->getOutputSize([B)I

    move-result p1

    return p1
.end method

.method protected blacklist getOutputSize([B)I
    .registers 3
    .param p1, "key"    # [B

    .line 66
    const/16 v0, 0x20

    return v0
.end method
