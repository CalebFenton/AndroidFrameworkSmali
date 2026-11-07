.class public Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$ECB;
.super Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$ECB$PKCS5Padding;,
        Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES$ECB$NoPadding;
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 3
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 124
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 125
    return-void
.end method
