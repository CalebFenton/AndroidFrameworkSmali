.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$ARC4;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARC4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 808
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@2
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@7
    .line 806
    return-void
.end method


# virtual methods
.method protected checkSupportedKeySize(I)V
    .locals 0
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 822
    return-void
.end method

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
    .line 827
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@2
    const-string/jumbo v1, "ARC4 does not support modes"

    #@5
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 2
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 832
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    #@2
    const-string/jumbo v1, "ARC4 does not support padding"

    #@5
    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected getBaseCipherName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 813
    const-string/jumbo v0, "ARCFOUR"

    #@3
    return-object v0
.end method

.method protected getCipherBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 837
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .locals 1
    .param p1, "keySize"    # I
    .param p2, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@0
    .prologue
    .line 818
    const-string/jumbo v0, "rc4"

    #@3
    return-object v0
.end method

.method protected supportsVariableSizeKey()Z
    .locals 1

    #@0
    .prologue
    .line 842
    const/4 v0, 0x1

    #@1
    return v0
.end method
