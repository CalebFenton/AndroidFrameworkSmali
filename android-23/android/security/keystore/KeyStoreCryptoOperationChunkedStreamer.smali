.class Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;,
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CHUNK_SIZE:I = 0x10000


# instance fields
.field private mBuffered:[B

.field private mBufferedLength:I

.field private mBufferedOffset:I

.field private mConsumedInputSizeBytes:J

.field private final mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private final mMaxChunkSize:I

.field private mProducedOutputSizeBytes:J


# direct methods
.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .locals 1
    .param p1, "operation"    # Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    #@0
    .prologue
    .line 82
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    #@5
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .locals 1
    .param p1, "operation"    # Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    .param p2, "maxChunkSize"    # I

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@5
    iput-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@7
    .line 86
    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    #@9
    .line 87
    iput p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    #@b
    .line 85
    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "signature"    # [B
    .param p5, "additionalEntropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    if-nez p3, :cond_0

    #@2
    .line 212
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    #@4
    .line 213
    const/4 p2, 0x0

    #@5
    .line 217
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    #@8
    move-result-object v1

    #@9
    .line 218
    .local v1, "output":[B
    invoke-virtual {p0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->flush()[B

    #@c
    move-result-object v2

    #@d
    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    #@10
    move-result-object v1

    #@11
    .line 220
    iget-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    #@13
    invoke-interface {v2, p4, p5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)Landroid/security/keymaster/OperationResult;

    #@16
    move-result-object v0

    #@17
    .line 221
    .local v0, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v0, :cond_1

    #@19
    .line 222
    new-instance v2, Landroid/security/keystore/KeyStoreConnectException;

    #@1b
    invoke-direct {v2}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 223
    :cond_1
    iget v2, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@21
    const/4 v3, 0x1

    #@22
    if-eq v2, v3, :cond_2

    #@24
    .line 224
    iget v2, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@26
    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@29
    move-result-object v2

    #@2a
    throw v2

    #@2b
    .line 226
    :cond_2
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@2d
    iget-object v4, v0, Landroid/security/keymaster/OperationResult;->output:[B

    #@2f
    array-length v4, v4

    #@30
    int-to-long v4, v4

    #@31
    add-long/2addr v2, v4

    #@32
    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@34
    .line 228
    iget-object v2, v0, Landroid/security/keymaster/OperationResult;->output:[B

    #@36
    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    #@39
    move-result-object v2

    #@3a
    return-object v2
.end method

.method public flush()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 232
    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@4
    if-gtz v5, :cond_0

    #@6
    .line 233
    sget-object v5, Llibcore/util/EmptyArray;->BYTE:[B

    #@8
    return-object v5

    #@9
    .line 238
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 239
    :cond_1
    :goto_0
    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@c
    if-lez v5, :cond_4

    #@e
    .line 240
    iget-object v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@10
    iget v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    #@12
    iget v7, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@14
    invoke-static {v5, v6, v7}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    #@17
    move-result-object v1

    #@18
    .line 241
    .local v1, "chunk":[B
    iget-object v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    #@1a
    invoke-interface {v5, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    #@1d
    move-result-object v3

    #@1e
    .line 242
    .local v3, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v3, :cond_2

    #@20
    .line 243
    new-instance v5, Landroid/security/keystore/KeyStoreConnectException;

    #@22
    invoke-direct {v5}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    #@25
    throw v5

    #@26
    .line 244
    :cond_2
    iget v5, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@28
    if-eq v5, v9, :cond_3

    #@2a
    .line 245
    iget v5, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@2c
    invoke-static {v5}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@2f
    move-result-object v5

    #@30
    throw v5

    #@31
    .line 248
    :cond_3
    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@33
    if-gtz v5, :cond_5

    #@35
    .line 293
    .end local v1    # "chunk":[B
    .end local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_4
    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@37
    if-lez v5, :cond_b

    #@39
    .line 294
    new-instance v6, Landroid/security/KeyStoreException;

    #@3b
    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v7, "Keystore failed to consume last "

    #@43
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    .line 296
    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@49
    if-eq v5, v9, :cond_a

    #@4b
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    iget v8, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@52
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    const-string/jumbo v8, " bytes"

    #@59
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    .line 295
    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    .line 297
    const-string/jumbo v7, " of input"

    #@68
    .line 295
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .line 294
    const/16 v7, -0x15

    #@72
    invoke-direct {v6, v7, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@75
    throw v6

    #@76
    .line 253
    .restart local v1    # "chunk":[B
    .restart local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_5
    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@78
    array-length v6, v1

    #@79
    if-lt v5, v6, :cond_6

    #@7b
    .line 255
    sget-object v5, Llibcore/util/EmptyArray;->BYTE:[B

    #@7d
    iput-object v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@7f
    .line 256
    iput v8, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    #@81
    .line 257
    iput v8, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@83
    .line 265
    :goto_2
    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@85
    array-length v6, v1

    #@86
    if-le v5, v6, :cond_7

    #@88
    .line 266
    new-instance v5, Landroid/security/KeyStoreException;

    #@8a
    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v7, "Keystore consumed more input than provided. Provided: "

    #@92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    .line 268
    array-length v7, v1

    #@97
    .line 267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    .line 268
    const-string/jumbo v7, ", consumed: "

    #@9e
    .line 267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    .line 268
    iget v7, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@a4
    .line 267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v6

    #@ac
    .line 266
    const/16 v7, -0x3e8

    #@ae
    invoke-direct {v5, v7, v6}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@b1
    throw v5

    #@b2
    .line 260
    :cond_6
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@b4
    .line 261
    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@b6
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    #@b8
    .line 262
    array-length v5, v1

    #@b9
    iget v6, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@bb
    sub-int/2addr v5, v6

    #@bc
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@be
    goto :goto_2

    #@bf
    .line 271
    :cond_7
    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    #@c1
    if-eqz v5, :cond_1

    #@c3
    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    #@c5
    array-length v5, v5

    #@c6
    if-lez v5, :cond_1

    #@c8
    .line 273
    if-nez v0, :cond_9

    #@ca
    .line 275
    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@cc
    if-nez v5, :cond_8

    #@ce
    .line 277
    iget-wide v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@d0
    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    #@d2
    array-length v5, v5

    #@d3
    int-to-long v8, v5

    #@d4
    add-long/2addr v6, v8

    #@d5
    iput-wide v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@d7
    .line 278
    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    #@d9
    return-object v5

    #@da
    .line 281
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@dc
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@df
    .line 286
    :cond_9
    :try_start_0
    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    #@e1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e4
    goto/16 :goto_0

    #@e6
    .line 287
    :catch_0
    move-exception v2

    #@e7
    .line 288
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/ProviderException;

    #@e9
    const-string/jumbo v6, "Failed to buffer output"

    #@ec
    invoke-direct {v5, v6, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ef
    throw v5

    #@f0
    .line 296
    .end local v1    # "chunk":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_a
    const-string/jumbo v5, "byte"

    #@f3
    goto/16 :goto_1

    #@f5
    .line 300
    :cond_b
    if-eqz v0, :cond_c

    #@f7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@fa
    move-result-object v4

    #@fb
    .line 301
    .local v4, "result":[B
    :goto_3
    iget-wide v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@fd
    array-length v5, v4

    #@fe
    int-to-long v8, v5

    #@ff
    add-long/2addr v6, v8

    #@100
    iput-wide v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@102
    .line 302
    return-object v4

    #@103
    .line 300
    .end local v4    # "result":[B
    :cond_c
    sget-object v4, Llibcore/util/EmptyArray;->BYTE:[B

    #@105
    .restart local v4    # "result":[B
    goto :goto_3
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    #@0
    .prologue
    .line 307
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    #@2
    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    #@0
    .prologue
    .line 312
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@2
    return-wide v0
.end method

.method public update([BII)[B
    .locals 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    if-nez p3, :cond_0

    #@2
    .line 94
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@4
    return-object v0

    #@5
    .line 97
    :cond_0
    const/4 v6, 0x0

    #@6
    .line 99
    :cond_1
    :goto_0
    if-lez p3, :cond_c

    #@8
    .line 102
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@a
    add-int/2addr v0, p3

    #@b
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    #@d
    if-le v0, v1, :cond_2

    #@f
    .line 105
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    #@11
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@13
    sub-int v5, v0, v1

    #@15
    .line 106
    .local v5, "inputBytesInChunk":I
    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@17
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    #@19
    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@1b
    move-object v3, p1

    #@1c
    move v4, p2

    #@1d
    invoke-static/range {v0 .. v5}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    #@20
    move-result-object v7

    #@21
    .line 124
    .local v7, "chunk":[B
    :goto_1
    add-int/2addr p2, v5

    #@22
    .line 125
    sub-int/2addr p3, v5

    #@23
    .line 126
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    #@25
    int-to-long v2, v5

    #@26
    add-long/2addr v0, v2

    #@27
    iput-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    #@29
    .line 128
    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    #@2b
    invoke-interface {v0, v7}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    #@2e
    move-result-object v9

    #@2f
    .line 129
    .local v9, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v9, :cond_4

    #@31
    .line 130
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    #@33
    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    #@36
    throw v0

    #@37
    .line 110
    .end local v5    # "inputBytesInChunk":I
    .end local v7    # "chunk":[B
    .end local v9    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_2
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@39
    if-nez v0, :cond_3

    #@3b
    if-nez p2, :cond_3

    #@3d
    .line 111
    array-length v0, p1

    #@3e
    if-ne p3, v0, :cond_3

    #@40
    .line 114
    move-object v7, p1

    #@41
    .line 115
    .restart local v7    # "chunk":[B
    array-length v5, p1

    #@42
    .restart local v5    # "inputBytesInChunk":I
    goto :goto_1

    #@43
    .line 118
    .end local v5    # "inputBytesInChunk":I
    .end local v7    # "chunk":[B
    :cond_3
    move v5, p3

    #@44
    .line 119
    .restart local v5    # "inputBytesInChunk":I
    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@46
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    #@48
    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@4a
    move-object v3, p1

    #@4b
    move v4, p2

    #@4c
    invoke-static/range {v0 .. v5}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    #@4f
    move-result-object v7

    #@50
    .restart local v7    # "chunk":[B
    goto :goto_1

    #@51
    .line 131
    .restart local v9    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_4
    iget v0, v9, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@53
    const/4 v1, 0x1

    #@54
    if-eq v0, v1, :cond_5

    #@56
    .line 132
    iget v0, v9, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@58
    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@5b
    move-result-object v0

    #@5c
    throw v0

    #@5d
    .line 135
    :cond_5
    iget v0, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@5f
    array-length v1, v7

    #@60
    if-ne v0, v1, :cond_6

    #@62
    .line 137
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@64
    iput-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@66
    .line 138
    const/4 v0, 0x0

    #@67
    iput v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    #@69
    .line 139
    const/4 v0, 0x0

    #@6a
    iput v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@6c
    .line 164
    :goto_2
    iget-object v0, v9, Landroid/security/keymaster/OperationResult;->output:[B

    #@6e
    if-eqz v0, :cond_1

    #@70
    iget-object v0, v9, Landroid/security/keymaster/OperationResult;->output:[B

    #@72
    array-length v0, v0

    #@73
    if-lez v0, :cond_1

    #@75
    .line 165
    if-lez p3, :cond_a

    #@77
    .line 167
    if-nez v6, :cond_1

    #@79
    .line 168
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    #@7b
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@7e
    .line 170
    .local v6, "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v0, v9, Landroid/security/keymaster/OperationResult;->output:[B

    #@80
    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@83
    goto :goto_0

    #@84
    .line 171
    :catch_0
    move-exception v8

    #@85
    .line 172
    .local v8, "e":Ljava/io/IOException;
    new-instance v0, Ljava/security/ProviderException;

    #@87
    const-string/jumbo v1, "Failed to buffer output"

    #@8a
    invoke-direct {v0, v1, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8d
    throw v0

    #@8e
    .line 140
    .end local v6    # "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_6
    iget v0, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@90
    if-gtz v0, :cond_8

    #@92
    .line 142
    if-lez p3, :cond_7

    #@94
    .line 146
    new-instance v0, Landroid/security/KeyStoreException;

    #@96
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v2, "Keystore consumed nothing from max-sized chunk: "

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    array-length v2, v7

    #@a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    .line 148
    const-string/jumbo v2, " bytes"

    #@aa
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    .line 146
    const/16 v2, -0x3e8

    #@b4
    invoke-direct {v0, v2, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@b7
    throw v0

    #@b8
    .line 150
    :cond_7
    iput-object v7, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@ba
    .line 151
    const/4 v0, 0x0

    #@bb
    iput v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    #@bd
    .line 152
    array-length v0, v7

    #@be
    iput v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@c0
    goto :goto_2

    #@c1
    .line 153
    :cond_8
    iget v0, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@c3
    array-length v1, v7

    #@c4
    if-ge v0, v1, :cond_9

    #@c6
    .line 155
    iput-object v7, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    #@c8
    .line 156
    iget v0, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@ca
    iput v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    #@cc
    .line 157
    array-length v0, v7

    #@cd
    iget v1, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@cf
    sub-int/2addr v0, v1

    #@d0
    iput v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    #@d2
    goto :goto_2

    #@d3
    .line 159
    :cond_9
    new-instance v0, Landroid/security/KeyStoreException;

    #@d5
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v2, "Keystore consumed more input than provided. Provided: "

    #@dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    array-length v2, v7

    #@e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    .line 161
    const-string/jumbo v2, ", consumed: "

    #@e9
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    .line 161
    iget v2, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@ef
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v1

    #@f3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v1

    #@f7
    .line 159
    const/16 v2, -0x3e8

    #@f9
    invoke-direct {v0, v2, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@fc
    throw v0

    #@fd
    .line 178
    :cond_a
    if-nez v6, :cond_b

    #@ff
    .line 180
    iget-object v10, v9, Landroid/security/keymaster/OperationResult;->output:[B

    #@101
    .line 190
    .local v10, "result":[B
    :goto_3
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@103
    array-length v2, v10

    #@104
    int-to-long v2, v2

    #@105
    add-long/2addr v0, v2

    #@106
    iput-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@108
    .line 191
    return-object v10

    #@109
    .line 184
    .end local v10    # "result":[B
    :cond_b
    :try_start_1
    iget-object v0, v9, Landroid/security/keymaster/OperationResult;->output:[B

    #@10b
    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@10e
    .line 188
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@111
    move-result-object v10

    #@112
    .restart local v10    # "result":[B
    goto :goto_3

    #@113
    .line 185
    .end local v10    # "result":[B
    :catch_1
    move-exception v8

    #@114
    .line 186
    .restart local v8    # "e":Ljava/io/IOException;
    new-instance v0, Ljava/security/ProviderException;

    #@116
    const-string/jumbo v1, "Failed to buffer output"

    #@119
    invoke-direct {v0, v1, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11c
    throw v0

    #@11d
    .line 197
    .end local v5    # "inputBytesInChunk":I
    .end local v7    # "chunk":[B
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_c
    if-nez v6, :cond_d

    #@11f
    .line 199
    sget-object v10, Llibcore/util/EmptyArray;->BYTE:[B

    #@121
    .line 203
    .restart local v10    # "result":[B
    :goto_4
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@123
    array-length v2, v10

    #@124
    int-to-long v2, v2

    #@125
    add-long/2addr v0, v2

    #@126
    iput-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    #@128
    .line 204
    return-object v10

    #@129
    .line 201
    .end local v10    # "result":[B
    :cond_d
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@12c
    move-result-object v10

    #@12d
    .restart local v10    # "result":[B
    goto :goto_4
.end method
