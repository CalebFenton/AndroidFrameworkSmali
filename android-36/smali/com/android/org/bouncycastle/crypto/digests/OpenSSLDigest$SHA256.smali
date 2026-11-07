.class public Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;
.super Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;
.source "OpenSSLDigest.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 101
    const-string v0, "SHA-256"

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;-><init>(Ljava/lang/String;I)V

    return-void
.end method
