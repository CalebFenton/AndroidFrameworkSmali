.class public Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;
.super Ljava/io/OutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "Digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 14
    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 3

    #@0
    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@5
    move-result v1

    #@6
    new-array v0, v1, [B

    #@8
    .line 38
    .local v0, "res":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@e
    .line 40
    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    int-to-byte v1, p1

    #@3
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    #@6
    .line 20
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 29
    return-void
.end method
