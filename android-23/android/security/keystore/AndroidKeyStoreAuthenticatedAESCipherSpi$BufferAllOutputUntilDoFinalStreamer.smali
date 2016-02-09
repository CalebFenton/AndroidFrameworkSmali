.class Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferAllOutputUntilDoFinalStreamer"
.end annotation


# instance fields
.field private mBufferedOutput:Ljava/io/ByteArrayOutputStream;

.field private final mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mProducedOutputSizeBytes:J


# direct methods
.method private constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;)V
    .locals 1
    .param p1, "delegate"    # Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@0
    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 349
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    #@a
    .line 353
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@c
    .line 352
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;)V
    .locals 0
    .param p1, "delegate"    # Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;)V

    #@3
    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 9
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
    .line 373
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    #@a
    move-result-object v7

    #@b
    .line 375
    .local v7, "output":[B
    if-eqz v7, :cond_0

    #@d
    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    #@f
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 382
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    #@14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@17
    move-result-object v8

    #@18
    .line 383
    .local v8, "result":[B
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    #@1a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@1d
    .line 384
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    #@1f
    array-length v2, v8

    #@20
    int-to-long v2, v2

    #@21
    add-long/2addr v0, v2

    #@22
    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    #@24
    .line 385
    return-object v8

    #@25
    .line 378
    .end local v8    # "result":[B
    :catch_0
    move-exception v6

    #@26
    .line 379
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Ljava/security/ProviderException;

    #@28
    const-string/jumbo v1, "Failed to buffer output"

    #@2b
    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v0
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@2
    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    #@0
    .prologue
    .line 395
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    #@2
    return-wide v0
.end method

.method public update([BII)[B
    .locals 4
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
    .line 359
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@2
    invoke-interface {v2, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B

    #@5
    move-result-object v1

    #@6
    .line 360
    .local v1, "output":[B
    if-eqz v1, :cond_0

    #@8
    .line 362
    :try_start_0
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 367
    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    #@f
    return-object v2

    #@10
    .line 363
    :catch_0
    move-exception v0

    #@11
    .line 364
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/ProviderException;

    #@13
    const-string/jumbo v3, "Failed to buffer output"

    #@16
    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
    throw v2
.end method
