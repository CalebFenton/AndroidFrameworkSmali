.class public Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$CBC$NoPadding;
.super Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$CBC;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$CBC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 96
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$CBC;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 97
    return-void
.end method
