.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$NoPadding;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE$CBC;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE$CBC;
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
    .line 745
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE$CBC;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@5
    .line 744
    return-void
.end method
