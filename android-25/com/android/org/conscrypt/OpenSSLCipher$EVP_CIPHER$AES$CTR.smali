.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$CTR;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTR"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 656
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@2
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@7
    .line 655
    return-void
.end method
