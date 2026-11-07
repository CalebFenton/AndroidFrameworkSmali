.class public final Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA1;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA1"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 619
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    sget v2, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;-><init>(JI)V

    .line 620
    return-void
.end method
