.class public Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;
.super Ljava/io/OutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public blacklist getDigest()[B
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 42
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 2

    .line 26
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 4

    .line 35
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
