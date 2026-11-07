.class public final Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSAPSS;
.super Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA224RSAPSS"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 512
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    const-string v2, "SHA-224"

    sget v3, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->SIZE_BYTES:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;-><init>(JLjava/lang/String;I)V

    .line 513
    return-void
.end method
