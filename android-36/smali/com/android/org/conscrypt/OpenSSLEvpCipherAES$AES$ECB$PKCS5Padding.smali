.class public Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$ECB$PKCS5Padding;
.super Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$ECB;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS5Padding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 141
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$ECB;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 142
    return-void
.end method
