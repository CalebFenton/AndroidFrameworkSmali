.class public Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;
.super Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;
.source "OpenSSLDigest.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 108
    const-string v0, "SHA-384"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;-><init>(Ljava/lang/String;I)V

    return-void
.end method
