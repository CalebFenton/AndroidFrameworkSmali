.class public final Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA512;
.super Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
.source "OpenSSLMessageDigestJDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA512"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 223
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    sget v2, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->SIZE_BYTES:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/android/org/conscrypt/OpenSSLMessageDigestJDK-IA;)V

    .line 224
    return-void
.end method
