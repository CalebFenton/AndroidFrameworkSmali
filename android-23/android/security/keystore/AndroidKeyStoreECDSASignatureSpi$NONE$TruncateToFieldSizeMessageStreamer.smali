.class Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;
.super Ljava/lang/Object;
.source "AndroidKeyStoreECDSASignatureSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruncateToFieldSizeMessageStreamer"
.end annotation


# instance fields
.field private mConsumedInputSizeBytes:J

.field private final mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private final mGroupSizeBits:I

.field private final mInputBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;I)V
    .locals 1
    .param p1, "delegate"    # Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .param p2, "groupSizeBits"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    #@a
    .line 68
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@c
    .line 69
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    #@e
    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;ILandroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;)V
    .locals 0
    .param p1, "delegate"    # Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .param p2, "groupSizeBits"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;I)V

    #@3
    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 8
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
    const/4 v2, 0x0

    #@1
    .line 85
    if-lez p3, :cond_0

    #@3
    .line 86
    iget-wide v4, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    #@5
    int-to-long v6, p3

    #@6
    add-long/2addr v4, v6

    #@7
    iput-wide v4, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    #@9
    .line 87
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    #@b
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@e
    .line 90
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    #@10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@13
    move-result-object v1

    #@14
    .line 91
    .local v1, "bufferedInput":[B
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    #@16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@19
    .line 93
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@1b
    .line 95
    array-length v3, v1

    #@1c
    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    #@1e
    add-int/lit8 v4, v4, 0x7

    #@20
    div-int/lit8 v4, v4, 0x8

    #@22
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@25
    move-result v3

    #@26
    move-object v4, p4

    #@27
    move-object v5, p5

    #@28
    .line 93
    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    #@0
    .prologue
    .line 101
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    #@2
    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@2
    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    #@5
    move-result-wide v0

    #@6
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
    .line 75
    if-lez p3, :cond_0

    #@2
    .line 76
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@7
    .line 77
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    #@9
    int-to-long v2, p3

    #@a
    add-long/2addr v0, v2

    #@b
    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    #@d
    .line 79
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@f
    return-object v0
.end method
