.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1105
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    #@5
    .line 1104
    return-void
.end method


# virtual methods
.method protected checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 2
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 1110
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 1111
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@6
    const-string/jumbo v1, "Mode must be GCM"

    #@9
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1109
    :cond_0
    return-void
.end method

.method protected getEVP_AEAD(I)J
    .locals 3
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1118
    const/16 v0, 0x10

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1119
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_128_gcm()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0

    #@9
    .line 1120
    :cond_0
    const/16 v0, 0x20

    #@b
    if-ne p1, v0, :cond_1

    #@d
    .line 1121
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_256_gcm()J

    #@10
    move-result-wide v0

    #@11
    return-wide v0

    #@12
    .line 1123
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Unexpected key length: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
.end method
