.class public abstract Ljava/security/MessageDigestSpi;
.super Ljava/lang/Object;
.source "MessageDigestSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
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
    .line 149
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected engineDigest([BII)I
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 121
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    #@4
    move-result v1

    #@5
    if-ge p3, v1, :cond_0

    #@7
    .line 122
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    #@a
    .line 123
    new-instance v1, Ljava/security/DigestException;

    #@c
    const-string/jumbo v2, "The value of len parameter is less than the actual digest length"

    #@f
    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 125
    :cond_0
    if-gez p2, :cond_1

    #@15
    .line 126
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    #@18
    .line 127
    new-instance v1, Ljava/security/DigestException;

    #@1a
    const-string/jumbo v2, "offset < 0"

    #@1d
    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 129
    :cond_1
    add-int v1, p2, p3

    #@23
    array-length v2, p1

    #@24
    if-le v1, v2, :cond_2

    #@26
    .line 130
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    #@29
    .line 131
    new-instance v1, Ljava/security/DigestException;

    #@2b
    const-string/jumbo v2, "offset + len > buf.length"

    #@2e
    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1

    #@32
    .line 133
    :cond_2
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    #@35
    move-result-object v0

    #@36
    .line 134
    .local v0, "tmp":[B
    array-length v1, v0

    #@37
    if-ge p3, v1, :cond_3

    #@39
    .line 135
    new-instance v1, Ljava/security/DigestException;

    #@3b
    const-string/jumbo v2, "The value of len parameter is less than the actual digest length"

    #@3e
    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1

    #@42
    .line 137
    :cond_3
    array-length v1, v0

    #@43
    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@46
    .line 138
    array-length v1, v0

    #@47
    return v1
.end method

.method protected abstract engineDigest()[B
.end method

.method protected engineGetDigestLength()I
    .locals 1

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 74
    return-void

    #@7
    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@10
    move-result-object v3

    #@11
    .line 79
    .local v3, "tmp":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@14
    move-result v1

    #@15
    .line 80
    .local v1, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@18
    move-result v2

    #@19
    .line 81
    .local v2, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1c
    move-result v0

    #@1d
    .line 82
    .local v0, "limit":I
    add-int v4, v1, v2

    #@1f
    sub-int v5, v0, v2

    #@21
    invoke-virtual {p0, v3, v4, v5}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    #@24
    .line 83
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@27
    .line 72
    .end local v0    # "limit":I
    .end local v1    # "offset":I
    .end local v2    # "position":I
    :goto_0
    return-void

    #@28
    .line 85
    .end local v3    # "tmp":[B
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@2f
    move-result v5

    #@30
    sub-int/2addr v4, v5

    #@31
    new-array v3, v4, [B

    #@33
    .line 86
    .restart local v3    # "tmp":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@36
    .line 87
    array-length v4, v3

    #@37
    const/4 v5, 0x0

    #@38
    invoke-virtual {p0, v3, v5, v4}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    #@3b
    goto :goto_0
.end method

.method protected abstract engineUpdate([BII)V
.end method
