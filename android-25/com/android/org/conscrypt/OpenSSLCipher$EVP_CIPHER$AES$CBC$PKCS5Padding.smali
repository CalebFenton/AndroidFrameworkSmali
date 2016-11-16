.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$CBC$PKCS5Padding;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$CBC;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$CBC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS5Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 649
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$CBC;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@5
    .line 648
    return-void
.end method
