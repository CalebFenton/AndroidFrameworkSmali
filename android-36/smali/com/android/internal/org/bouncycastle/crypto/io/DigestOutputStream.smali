.class public Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;
.super Ljava/io/OutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 2
    .param p1, "Digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 19
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getDigest()[B
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 42
    .local v0, "res":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 44
    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 27
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 36
    return-void
.end method
