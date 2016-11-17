.class public abstract Ljava/security/MessageDigestSpi;
.super Ljava/lang/Object;
.source "MessageDigestSpi.java"


# instance fields
.field private tempArray:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    instance-of v0, p0, Ljava/lang/Cloneable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 201
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 203
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@b
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@e
    throw v0
.end method

.method protected engineDigest([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    #@3
    move-result-object v0

    #@4
    .line 177
    .local v0, "digest":[B
    array-length v1, v0

    #@5
    if-ge p3, v1, :cond_0

    #@7
    .line 178
    new-instance v1, Ljava/security/DigestException;

    #@9
    const-string/jumbo v2, "partial digests not returned"

    #@c
    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 179
    :cond_0
    array-length v1, p1

    #@11
    sub-int/2addr v1, p2

    #@12
    array-length v2, v0

    #@13
    if-ge v1, v2, :cond_1

    #@15
    .line 180
    new-instance v1, Ljava/security/DigestException;

    #@17
    const-string/jumbo v2, "insufficient space in the output buffer to store the digest"

    #@1a
    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 182
    :cond_1
    array-length v1, v0

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@23
    .line 183
    array-length v1, v0

    #@24
    return v1
.end method

.method protected abstract engineDigest()[B
.end method

.method protected engineGetDigestLength()I
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_0

    #@7
    .line 107
    return-void

    #@8
    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_2

    #@e
    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@11
    move-result-object v0

    #@12
    .line 111
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@15
    move-result v5

    #@16
    .line 112
    .local v5, "ofs":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@19
    move-result v6

    #@1a
    .line 113
    .local v6, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1d
    move-result v3

    #@1e
    .line 114
    .local v3, "lim":I
    add-int v7, v5, v6

    #@20
    sub-int v8, v3, v6

    #@22
    invoke-virtual {p0, v0, v7, v8}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    #@25
    .line 115
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@28
    .line 105
    .end local v0    # "b":[B
    .end local v3    # "lim":I
    .end local v5    # "ofs":I
    .end local v6    # "pos":I
    :cond_1
    return-void

    #@29
    .line 117
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@2c
    move-result v2

    #@2d
    .line 118
    .local v2, "len":I
    invoke-static {v2}, Lsun/security/jca/JCAUtil;->getTempArraySize(I)I

    #@30
    move-result v4

    #@31
    .line 119
    .local v4, "n":I
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    #@33
    if-eqz v7, :cond_3

    #@35
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    #@37
    array-length v7, v7

    #@38
    if-le v4, v7, :cond_4

    #@3a
    .line 120
    :cond_3
    new-array v7, v4, [B

    #@3c
    iput-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    #@3e
    .line 122
    :cond_4
    :goto_0
    if-lez v2, :cond_1

    #@40
    .line 123
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    #@42
    array-length v7, v7

    #@43
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    #@46
    move-result v1

    #@47
    .line 124
    .local v1, "chunk":I
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    #@49
    invoke-virtual {p1, v7, v8, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@4c
    .line 125
    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    #@4e
    invoke-virtual {p0, v7, v8, v1}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    #@51
    .line 126
    sub-int/2addr v2, v1

    #@52
    goto :goto_0
.end method

.method protected abstract engineUpdate([BII)V
.end method
