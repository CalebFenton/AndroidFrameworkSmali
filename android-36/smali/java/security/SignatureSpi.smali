.class public abstract Ljava/security/SignatureSpi;
.super Ljava/lang/Object;
.source "SignatureSpi.java"


# instance fields
.field protected whitelist test-api appRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

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

    .line 386
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 387
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 389
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 103
    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    .line 104
    invoke-virtual {p0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 105
    return-void
.end method

.method protected abstract whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected whitelist test-api engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api engineSign([BII)I
    .registers 7
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    .line 228
    .local v0, "sig":[B
    array-length v1, v0

    if-lt p3, v1, :cond_1b

    .line 232
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-lt v1, v2, :cond_13

    .line 237
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    array-length v1, v0

    return v1

    .line 233
    :cond_13
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "insufficient space in the output buffer to store the signature"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_1b
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "partial signatures not returned"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract whitelist test-api engineSign()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineUpdate(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 144
    return-void

    .line 147
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 149
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 150
    .local v1, "ofs":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 151
    .local v2, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 152
    .local v3, "lim":I
    add-int v4, v1, v2

    sub-int v5, v3, v2

    invoke-virtual {p0, v0, v4, v5}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    .line 153
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    nop

    .end local v0    # "b":[B
    .end local v1    # "ofs":I
    .end local v2    # "pos":I
    .end local v3    # "lim":I
    goto :goto_43

    .line 155
    :cond_29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 156
    .local v0, "len":I
    invoke-static {v0}, Lsun/security/jca/JCAUtil;->getTempArraySize(I)I

    move-result v1

    new-array v1, v1, [B

    .line 157
    .local v1, "b":[B
    :goto_33
    if-lez v0, :cond_43

    .line 158
    array-length v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 159
    .local v2, "chunk":I
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {p0, v1, v3, v2}, Ljava/security/SignatureSpi;->engineUpdate([BII)V
    :try_end_41
    .catch Ljava/security/SignatureException; {:try_start_7 .. :try_end_41} :catch_45

    .line 161
    sub-int/2addr v0, v2

    .line 162
    .end local v2    # "chunk":I
    goto :goto_33

    .line 168
    .end local v0    # "len":I
    .end local v1    # "b":[B
    :cond_43
    :goto_43
    nop

    .line 169
    return-void

    .line 164
    :catch_45
    move-exception v0

    .line 167
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "update() failed"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract whitelist test-api engineUpdate([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineVerify([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineVerify([BII)Z
    .registers 6
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 277
    new-array v0, p3, [B

    .line 278
    .local v0, "sigBytesCopy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-virtual {p0, v0}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v1

    return v1
.end method
