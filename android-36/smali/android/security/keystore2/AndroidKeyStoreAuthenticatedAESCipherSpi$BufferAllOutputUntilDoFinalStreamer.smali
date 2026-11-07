.class Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferAllOutputUntilDoFinalStreamer"
.end annotation


# instance fields
.field private blacklist mBufferedOutput:Ljava/io/ByteArrayOutputStream;

.field private final blacklist mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mProducedOutputSizeBytes:J


# direct methods
.method private constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;)V
    .registers 3
    .param p1, "delegate"    # Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    .line 376
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 377
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;)V

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BII[B)[B
    .registers 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v0

    .line 397
    .local v0, "output":[B
    if-eqz v0, :cond_17

    .line 399
    :try_start_8
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    .line 402
    goto :goto_17

    .line 400
    :catch_e
    move-exception v1

    .line 401
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to buffer output"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 404
    .end local v1    # "e":Ljava/io/IOException;
    :cond_17
    :goto_17
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 405
    .local v1, "result":[B
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 406
    iget-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    .line 407
    return-object v1
.end method

.method public blacklist getConsumedInputSizeBytes()J
    .registers 3

    .line 412
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getProducedOutputSizeBytes()J
    .registers 3

    .line 417
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public blacklist update([BII)[B
    .registers 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0

    .line 383
    .local v0, "output":[B
    if-eqz v0, :cond_17

    .line 385
    :try_start_8
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    .line 388
    goto :goto_17

    .line 386
    :catch_e
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to buffer output"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 390
    .end local v1    # "e":Ljava/io/IOException;
    :cond_17
    :goto_17
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v1
.end method
