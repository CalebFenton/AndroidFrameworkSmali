.class public Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM_SIV;
.super Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;
.source "OpenSSLAeadCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM_SIV"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM_SIV$AES_256;,
        Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM_SIV$AES_128;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 177
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM_SIV:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 178
    return-void
.end method


# virtual methods
.method blacklist allowsNonceReuse()Z
    .registers 2

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM_SIV:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_5

    .line 185
    return-void

    .line 183
    :cond_5
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Mode must be GCM-SIV"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkSupportedTagLength(I)V
    .registers 4
    .param p1, "tagLengthInBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 196
    const/16 v0, 0x80

    if-ne p1, v0, :cond_5

    .line 200
    return-void

    .line 197
    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Tag length must be 128 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getEVP_AEAD(I)J
    .registers 5
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 204
    const/16 v0, 0x10

    if-ne p1, v0, :cond_9

    .line 205
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_128_gcm_siv()J

    move-result-wide v0

    return-wide v0

    .line 206
    :cond_9
    const/16 v0, 0x20

    if-ne p1, v0, :cond_12

    .line 207
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_256_gcm_siv()J

    move-result-wide v0

    return-wide v0

    .line 209
    :cond_12
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
