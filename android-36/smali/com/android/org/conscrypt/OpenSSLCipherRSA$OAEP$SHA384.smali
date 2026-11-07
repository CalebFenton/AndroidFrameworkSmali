.class public final Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA384;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 646
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    sget v2, Lcom/android/org/conscrypt/EvpMdRef$SHA384;->SIZE_BYTES:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;-><init>(JI)V

    .line 647
    return-void
.end method
