.class public Lcom/android/org/conscrypt/OpenSSLAeadCipherChaCha20;
.super Lcom/android/org/conscrypt/OpenSSLAeadCipher;
.source "OpenSSLAeadCipherChaCha20.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->POLY1305:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 30
    return-void
.end method


# virtual methods
.method blacklist checkSupportedKeySize(I)V
    .registers 5
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 34
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 38
    return-void

    .line 35
    :cond_5
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (must be 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->POLY1305:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_5

    .line 55
    return-void

    .line 53
    :cond_5
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Mode must be Poly1305"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getBaseCipherName()Ljava/lang/String;
    .registers 2

    .line 42
    const-string v0, "ChaCha20"

    return-object v0
.end method

.method blacklist getCipherBlockSize()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getEVP_AEAD(I)J
    .registers 5
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 59
    const/16 v0, 0x20

    if-ne p1, v0, :cond_9

    .line 60
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_chacha20_poly1305()J

    move-result-wide v0

    return-wide v0

    .line 62
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getOutputSizeForFinal(I)I
    .registers 4
    .param p1, "inputLen"    # I

    .line 71
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipherChaCha20;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 72
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherChaCha20;->bufCount:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x10

    return v0

    .line 74
    :cond_c
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipherChaCha20;->bufCount:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
