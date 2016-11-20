.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$ECB$NoPadding;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$ECB;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 667
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$ECB;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@5
    .line 666
    return-void
.end method
