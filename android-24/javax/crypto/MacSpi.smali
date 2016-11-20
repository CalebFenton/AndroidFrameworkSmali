.class public abstract Ljavax/crypto/MacSpi;
.super Ljava/lang/Object;
.source "MacSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
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
    .line 147
    instance-of v0, p0, Ljava/lang/Cloneable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 148
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 150
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@b
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@e
    throw v0
.end method

.method protected abstract engineDoFinal()[B
.end method

.method protected abstract engineGetMacLength()I
.end method

.method protected abstract engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 103
    return-void

    #@8
    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_2

    #@e
    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@11
    move-result-object v0

    #@12
    .line 107
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@15
    move-result v4

    #@16
    .line 108
    .local v4, "ofs":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@19
    move-result v5

    #@1a
    .line 109
    .local v5, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1d
    move-result v3

    #@1e
    .line 110
    .local v3, "lim":I
    add-int v6, v4, v5

    #@20
    sub-int v7, v3, v5

    #@22
    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@25
    .line 111
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@28
    .line 101
    .end local v3    # "lim":I
    .end local v4    # "ofs":I
    .end local v5    # "pos":I
    :cond_1
    return-void

    #@29
    .line 113
    .end local v0    # "b":[B
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@2c
    move-result v2

    #@2d
    .line 114
    .local v2, "len":I
    invoke-static {v2}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    #@30
    move-result v6

    #@31
    new-array v0, v6, [B

    #@33
    .line 115
    .restart local v0    # "b":[B
    :goto_0
    if-lez v2, :cond_1

    #@35
    .line 116
    array-length v6, v0

    #@36
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    #@39
    move-result v1

    #@3a
    .line 117
    .local v1, "chunk":I
    invoke-virtual {p1, v0, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@3d
    .line 118
    invoke-virtual {p0, v0, v7, v1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@40
    .line 119
    sub-int/2addr v2, v1

    #@41
    goto :goto_0
.end method

.method protected abstract engineUpdate([BII)V
.end method
