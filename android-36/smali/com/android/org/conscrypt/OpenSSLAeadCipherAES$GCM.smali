.class public Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM;
.super Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;
.source "OpenSSLAeadCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM$AES_256;,
        Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM$AES_128;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 120
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 121
    return-void
.end method


# virtual methods
.method blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_5

    .line 128
    return-void

    .line 126
    :cond_5
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Mode must be GCM"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

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

    .line 132
    const/16 v0, 0x10

    if-ne p1, v0, :cond_9

    .line 133
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_128_gcm()J

    move-result-wide v0

    return-wide v0

    .line 134
    :cond_9
    const/16 v0, 0x20

    if-ne p1, v0, :cond_12

    .line 135
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_256_gcm()J

    move-result-wide v0

    return-wide v0

    .line 137
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
