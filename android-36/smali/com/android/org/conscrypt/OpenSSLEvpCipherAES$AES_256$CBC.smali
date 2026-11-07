.class public Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES_256$CBC;
.super Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES_256;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES_256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES_256$CBC$PKCS5Padding;,
        Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES_256$CBC$NoPadding;
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 3
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 252
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$AES_256;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 253
    return-void
.end method
