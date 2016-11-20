.class public abstract Ljava/security/SignatureSpi;
.super Ljava/lang/Object;
.source "SignatureSpi.java"


# instance fields
.field protected appRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    #@6
    .line 53
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
    .line 386
    instance-of v0, p0, Ljava/lang/Cloneable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 387
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 389
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@b
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@e
    throw v0
.end method

.method protected abstract engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected abstract engineInitSign(Ljava/security/PrivateKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    #@2
    .line 104
    invoke-virtual {p0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    #@5
    .line 102
    return-void
.end method

.method protected abstract engineInitVerify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected engineSign([BII)I
    .locals 3
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    invoke-virtual {p0}, Ljava/security/SignatureSpi;->engineSign()[B

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "sig":[B
    array-length v1, v0

    #@5
    if-ge p3, v1, :cond_0

    #@7
    .line 229
    new-instance v1, Ljava/security/SignatureException;

    #@9
    .line 230
    const-string/jumbo v2, "partial signatures not returned"

    #@c
    .line 229
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 232
    :cond_0
    array-length v1, p1

    #@11
    sub-int/2addr v1, p2

    #@12
    array-length v2, v0

    #@13
    if-ge v1, v2, :cond_1

    #@15
    .line 233
    new-instance v1, Ljava/security/SignatureException;

    #@17
    .line 234
    const-string/jumbo v2, "insufficient space in the output buffer to store the signature"

    #@1a
    .line 233
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 237
    :cond_1
    array-length v1, v0

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@23
    .line 238
    array-length v1, v0

    #@24
    return v1
.end method

.method protected abstract engineSign()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@3
    move-result v7

    #@4
    if-nez v7, :cond_0

    #@6
    .line 144
    return-void

    #@7
    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_2

    #@d
    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@10
    move-result-object v0

    #@11
    .line 149
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@14
    move-result v5

    #@15
    .line 150
    .local v5, "ofs":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@18
    move-result v6

    #@19
    .line 151
    .local v6, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1c
    move-result v4

    #@1d
    .line 152
    .local v4, "lim":I
    add-int v7, v5, v6

    #@1f
    sub-int v8, v4, v6

    #@21
    invoke-virtual {p0, v0, v7, v8}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    #@24
    .line 153
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@27
    .line 142
    .end local v4    # "lim":I
    .end local v5    # "ofs":I
    .end local v6    # "pos":I
    :cond_1
    return-void

    #@28
    .line 155
    .end local v0    # "b":[B
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@2b
    move-result v3

    #@2c
    .line 156
    .local v3, "len":I
    invoke-static {v3}, Lsun/security/jca/JCAUtil;->getTempArraySize(I)I

    #@2f
    move-result v7

    #@30
    new-array v0, v7, [B

    #@32
    .line 157
    .restart local v0    # "b":[B
    :goto_0
    if-lez v3, :cond_1

    #@34
    .line 158
    array-length v7, v0

    #@35
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@38
    move-result v1

    #@39
    .line 159
    .local v1, "chunk":I
    const/4 v7, 0x0

    #@3a
    invoke-virtual {p1, v0, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@3d
    .line 160
    const/4 v7, 0x0

    #@3e
    invoke-virtual {p0, v0, v7, v1}, Ljava/security/SignatureSpi;->engineUpdate([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 161
    sub-int/2addr v3, v1

    #@42
    goto :goto_0

    #@43
    .line 164
    .end local v0    # "b":[B
    .end local v1    # "chunk":I
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    #@44
    .line 167
    .local v2, "e":Ljava/security/SignatureException;
    new-instance v7, Ljava/security/ProviderException;

    #@46
    const-string/jumbo v8, "update() failed"

    #@49
    invoke-direct {v7, v8, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    throw v7
.end method

.method protected abstract engineUpdate([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected abstract engineVerify([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected engineVerify([BII)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    new-array v0, p3, [B

    #@2
    .line 278
    .local v0, "sigBytesCopy":[B
    const/4 v1, 0x0

    #@3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6
    .line 279
    invoke-virtual {p0, v0}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    #@9
    move-result v1

    #@a
    return v1
.end method
