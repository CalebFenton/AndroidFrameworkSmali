.class public abstract Ljavax/crypto/MacSpi;
.super Ljava/lang/Object;
.source "MacSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 144
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .locals 6
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 97
    return-void

    #@7
    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@10
    move-result-object v0

    #@11
    .line 102
    .local v0, "bInput":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@14
    move-result v2

    #@15
    .line 103
    .local v2, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@18
    move-result v3

    #@19
    .line 104
    .local v3, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1c
    move-result v1

    #@1d
    .line 105
    .local v1, "limit":I
    add-int v4, v2, v3

    #@1f
    sub-int v5, v1, v3

    #@21
    invoke-virtual {p0, v0, v4, v5}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@24
    .line 106
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@27
    .line 95
    .end local v1    # "limit":I
    .end local v2    # "offset":I
    .end local v3    # "position":I
    :goto_0
    return-void

    #@28
    .line 108
    .end local v0    # "bInput":[B
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
    new-array v0, v4, [B

    #@33
    .line 109
    .restart local v0    # "bInput":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@36
    .line 110
    array-length v4, v0

    #@37
    const/4 v5, 0x0

    #@38
    invoke-virtual {p0, v0, v5, v4}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    #@3b
    goto :goto_0
.end method

.method protected abstract engineUpdate([BII)V
.end method
