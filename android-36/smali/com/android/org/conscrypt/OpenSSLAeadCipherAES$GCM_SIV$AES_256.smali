.class public Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM_SIV$AES_256;
.super Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM_SIV;
.source "OpenSSLAeadCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM_SIV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES_256"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipherAES$GCM_SIV;-><init>()V

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

    .line 236
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 240
    return-void

    .line 237
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
