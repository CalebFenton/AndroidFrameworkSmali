.class public abstract Ljavax/crypto/MacSpi;
.super Ljava/lang/Object;
.source "MacSpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 147
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api engineDoFinal()[B
.end method

.method protected abstract whitelist test-api engineGetMacLength()I
.end method

.method protected abstract whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineReset()V
.end method

.method protected abstract whitelist test-api engineUpdate(B)V
.end method

.method protected whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 103
    return-void

    .line 105
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 107
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 108
    .local v1, "ofs":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 109
    .local v2, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 110
    .local v3, "lim":I
    add-int v4, v1, v2

    sub-int v5, v3, v2

    invoke-virtual {p0, v0, v4, v5}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 111
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    .end local v0    # "b":[B
    .end local v1    # "ofs":I
    .end local v2    # "pos":I
    .end local v3    # "lim":I
    goto :goto_42

    .line 113
    :cond_28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 114
    .local v0, "len":I
    invoke-static {v0}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v1

    new-array v1, v1, [B

    .line 115
    .local v1, "b":[B
    :goto_32
    if-lez v0, :cond_42

    .line 116
    array-length v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 117
    .local v2, "chunk":I
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p0, v1, v3, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 119
    sub-int/2addr v0, v2

    .line 120
    .end local v2    # "chunk":I
    goto :goto_32

    .line 122
    .end local v0    # "len":I
    .end local v1    # "b":[B
    :cond_42
    :goto_42
    return-void
.end method

.method protected abstract whitelist test-api engineUpdate([BII)V
.end method
