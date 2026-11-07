.class public Lcom/android/org/conscrypt/OpenSSLEvpCipherARC4;
.super Lcom/android/org/conscrypt/OpenSSLEvpCipher;
.source "OpenSSLEvpCipherARC4.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 31
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEvpCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 32
    return-void
.end method


# virtual methods
.method blacklist checkSupportedKeySize(I)V
    .registers 2
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 5
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->NONE:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-eq p1, v0, :cond_26

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_9

    goto :goto_26

    .line 51
    :cond_9
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_26
    :goto_26
    return-void
.end method

.method blacklist checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 5
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_5

    .line 60
    return-void

    .line 58
    :cond_5
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getBaseCipherName()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "ARCFOUR"

    return-object v0
.end method

.method blacklist getCipherBlockSize()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .registers 4
    .param p1, "keySize"    # I
    .param p2, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 41
    const-string v0, "rc4"

    return-object v0
.end method

.method blacklist supportsVariableSizeKey()Z
    .registers 2

    .line 69
    const/4 v0, 0x1

    return v0
.end method
