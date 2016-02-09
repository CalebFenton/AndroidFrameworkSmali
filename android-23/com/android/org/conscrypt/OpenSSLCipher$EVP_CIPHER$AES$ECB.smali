.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$ECB;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$ECB$NoPadding;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES$ECB$PKCS5Padding;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@0
    .prologue
    .line 662
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@5
    .line 661
    return-void
.end method
