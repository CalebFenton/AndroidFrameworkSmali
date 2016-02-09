.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AES"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;
    }
.end annotation


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method protected constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@0
    .prologue
    .line 1070
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    #@3
    .line 1069
    return-void
.end method


# virtual methods
.method protected checkSupportedKeySize(I)V
    .locals 3
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1075
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1080
    new-instance v0, Ljava/security/InvalidKeyException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported key size: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 1081
    const-string/jumbo v2, " bytes (must be 16 or 32)"

    #@18
    .line 1080
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1078
    :sswitch_0
    return-void

    #@25
    .line 1075
    nop

    #@26
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getBaseCipherName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1087
    const-string/jumbo v0, "AES"

    #@3
    return-object v0
.end method

.method protected getCipherBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 1092
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected getOutputSizeForUpdate(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 1100
    const/4 v0, 0x0

    #@1
    return v0
.end method
