.class public final Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;
.super Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;
.source "OpenSSLECDHKeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement<",
        "Lcom/android/org/conscrypt/OpenSSLKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLBaseDHKeyAgreement;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist computeKey([BLcom/android/org/conscrypt/OpenSSLKey;Lcom/android/org/conscrypt/OpenSSLKey;)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "theirPublicKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p3, "ourPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 45
    nop

    .line 46
    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    .line 45
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->ECDH_compute_key([BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    return v0
.end method

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
    check-cast p2, Lcom/android/org/conscrypt/OpenSSLKey;

    check-cast p3, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->computeKey([BLcom/android/org/conscrypt/OpenSSLKey;Lcom/android/org/conscrypt/OpenSSLKey;)I

    move-result p1

    return p1
.end method

.method protected blacklist convertPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 3
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->convertPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist convertPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 34
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->convertPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getOutputSize(Lcom/android/org/conscrypt/OpenSSLKey;)I
    .registers 5
    .param p1, "openSslKey"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 51
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 52
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 51
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_degree(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I

    move-result v0

    .line 53
    .local v0, "fieldSizeBits":I
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
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
    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->getOutputSize(Lcom/android/org/conscrypt/OpenSSLKey;)I

    move-result p1

    return p1
.end method
