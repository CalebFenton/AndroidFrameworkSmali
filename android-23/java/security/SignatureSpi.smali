.class public abstract Ljava/security/SignatureSpi;
.super Ljava/lang/Object;
.source "SignatureSpi.java"


# instance fields
.field protected appRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
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
    .line 310
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 289
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
    .line 75
    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    #@2
    .line 76
    invoke-virtual {p0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    #@5
    .line 74
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
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected engineSign([BII)I
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 184
    invoke-virtual {p0}, Ljava/security/SignatureSpi;->engineSign()[B

    #@4
    move-result-object v0

    #@5
    .line 185
    .local v0, "tmp":[B
    if-nez v0, :cond_0

    #@7
    .line 186
    return v3

    #@8
    .line 188
    :cond_0
    array-length v1, v0

    #@9
    if-ge p3, v1, :cond_1

    #@b
    .line 189
    new-instance v1, Ljava/security/SignatureException;

    #@d
    const-string/jumbo v2, "The value of len parameter is less than the actual signature length"

    #@10
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 191
    :cond_1
    if-gez p2, :cond_2

    #@16
    .line 192
    new-instance v1, Ljava/security/SignatureException;

    #@18
    const-string/jumbo v2, "offset < 0"

    #@1b
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 194
    :cond_2
    add-int v1, p2, p3

    #@21
    array-length v2, p1

    #@22
    if-le v1, v2, :cond_3

    #@24
    .line 195
    new-instance v1, Ljava/security/SignatureException;

    #@26
    const-string/jumbo v2, "offset + len > outbuf.length"

    #@29
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 197
    :cond_3
    array-length v1, v0

    #@2e
    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 198
    array-length v1, v0

    #@32
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
    .locals 7
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 122
    return-void

    #@7
    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@10
    move-result-object v4

    #@11
    .line 127
    .local v4, "tmp":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@14
    move-result v2

    #@15
    .line 128
    .local v2, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@18
    move-result v3

    #@19
    .line 129
    .local v3, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1c
    move-result v1

    #@1d
    .line 131
    .local v1, "limit":I
    add-int v5, v2, v3

    #@1f
    sub-int v6, v1, v3

    #@21
    :try_start_0
    invoke-virtual {p0, v4, v5, v6}, Ljava/security/SignatureSpi;->engineUpdate([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 135
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@27
    .line 120
    .end local v1    # "limit":I
    .end local v2    # "offset":I
    .end local v3    # "position":I
    :goto_0
    return-void

    #@28
    .line 132
    .restart local v1    # "limit":I
    .restart local v2    # "offset":I
    .restart local v3    # "position":I
    :catch_0
    move-exception v0

    #@29
    .line 133
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@2b
    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v5

    #@2f
    .line 137
    .end local v0    # "e":Ljava/security/SignatureException;
    .end local v1    # "limit":I
    .end local v2    # "offset":I
    .end local v3    # "position":I
    .end local v4    # "tmp":[B
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@32
    move-result v5

    #@33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@36
    move-result v6

    #@37
    sub-int/2addr v5, v6

    #@38
    new-array v4, v5, [B

    #@3a
    .line 138
    .restart local v4    # "tmp":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@3d
    .line 140
    :try_start_1
    array-length v5, v4

    #@3e
    const/4 v6, 0x0

    #@3f
    invoke-virtual {p0, v4, v6, v5}, Ljava/security/SignatureSpi;->engineUpdate([BII)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1

    #@42
    goto :goto_0

    #@43
    .line 141
    :catch_1
    move-exception v0

    #@44
    .line 142
    .restart local v0    # "e":Ljava/security/SignatureException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@46
    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@49
    throw v5
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
    .line 246
    new-array v0, p3, [B

    #@2
    .line 247
    .local v0, "tmp":[B
    const/4 v1, 0x0

    #@3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6
    .line 248
    invoke-virtual {p0, v0}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    #@9
    move-result v1

    #@a
    return v1
.end method
