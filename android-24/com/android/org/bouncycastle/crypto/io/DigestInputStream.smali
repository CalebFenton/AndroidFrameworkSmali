.class public Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.java"


# instance fields
.field protected digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 19
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 16
    return-void
.end method


# virtual methods
.method public getDigest()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 25
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 27
    .local v0, "b":I
    if-ltz v0, :cond_0

    #@8
    .line 29
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@a
    int-to-byte v2, v0

    #@b
    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    #@e
    .line 31
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
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
    .line 40
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    .line 41
    .local v0, "n":I
    if-lez v0, :cond_0

    #@8
    .line 43
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@a
    invoke-interface {v1, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@d
    .line 45
    :cond_0
    return v0
.end method
