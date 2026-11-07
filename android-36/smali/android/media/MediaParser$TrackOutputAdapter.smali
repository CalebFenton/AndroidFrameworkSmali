.class Landroid/media/MediaParser$TrackOutputAdapter;
.super Ljava/lang/Object;
.source "MediaParser.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackOutputAdapter"
.end annotation


# instance fields
.field private blacklist mEncryptionDataReadState:I

.field private blacklist mEncryptionDataSizeToSubtractFromSampleDataSize:I

.field private blacklist mEncryptionVectorSize:I

.field private blacklist mHasSubsampleEncryptionData:Z

.field private blacklist mLastOutputCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private blacklist mLastOutputEncryptionPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

.field private blacklist mLastReceivedCryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

.field private blacklist mScratchIvSpace:[B

.field private blacklist mScratchSubsampleClearBytesCount:[I

.field private blacklist mScratchSubsampleEncryptedBytesCount:[I

.field private blacklist mSkippedSupplementalDataBytes:I

.field private blacklist mSubsampleEncryptionDataSize:I

.field private final blacklist mTrackIndex:I

.field final synthetic blacklist this$0:Landroid/media/MediaParser;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaParser;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1687
    iput-object p1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1688
    iput p2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mTrackIndex:I

    const/16 p1, 0x10

    .line 1689
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchIvSpace:[B

    const/16 p1, 0x20

    .line 1690
    new-array p2, p1, [I

    iput-object p2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleEncryptedBytesCount:[I

    .line 1691
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleClearBytesCount:[I

    const/4 p1, 0x0

    .line 1692
    iput p1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataReadState:I

    .line 1693
    new-instance p2, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {p2, p1, p1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputEncryptionPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaParser;ILandroid/media/MediaParser-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaParser$TrackOutputAdapter;-><init>(Landroid/media/MediaParser;I)V

    return-void
.end method

.method private blacklist createNewCryptoInfoAndPopulateWithCryptoData(Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;)Landroid/media/MediaCodec$CryptoInfo;
    .registers 5

    .line 1855
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 1856
    iget-object v1, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 1857
    iget v1, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 1858
    iget v1, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iget-object v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputEncryptionPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getSkipBlocks()I

    move-result v2

    if-ne v1, v2, :cond_21

    iget v1, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget-object v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputEncryptionPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 1860
    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getEncryptBlocks()I

    move-result v2

    if-eq v1, v2, :cond_2c

    .line 1861
    :cond_21
    new-instance v1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget v2, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget p1, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->clearBlocks:I

    invoke-direct {v1, v2, p1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputEncryptionPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 1864
    :cond_2c
    iget-object p0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputEncryptionPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-object v0
.end method

.method private blacklist getPopulatedCryptoInfo(Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;)Landroid/media/MediaCodec$CryptoInfo;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1809
    :cond_4
    iget-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmInBandCryptoInfo(Landroid/media/MediaParser;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1810
    iget-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastReceivedCryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    if-eq p1, v0, :cond_7f

    .line 1812
    invoke-direct {p0, p1}, Landroid/media/MediaParser$TrackOutputAdapter;->createNewCryptoInfoAndPopulateWithCryptoData(Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 1815
    invoke-static {}, Landroid/media/MediaParser;->-$$Nest$sfgetEMPTY_BYTE_ARRAY()[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    goto :goto_7f

    .line 1821
    :cond_1d
    invoke-direct {p0, p1}, Landroid/media/MediaParser$TrackOutputAdapter;->createNewCryptoInfoAndPopulateWithCryptoData(Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 1822
    iget-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchIvSpace:[B

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 1823
    iget-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_38

    iget v1, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget v4, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSubsampleEncryptionDataSize:I

    if-ne v1, v4, :cond_38

    move v1, v3

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    move v4, v2

    .line 1827
    :goto_3a
    iget v5, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSubsampleEncryptionDataSize:I

    if-ge v4, v5, :cond_5c

    if-eqz v1, :cond_5c

    .line 1828
    iget-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v5, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v5, v5, v4

    iget-object v6, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleClearBytesCount:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_58

    iget-object v1, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    aget v1, v1, v4

    iget-object v5, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleEncryptedBytesCount:[I

    aget v5, v5, v4

    if-ne v1, v5, :cond_58

    move v1, v3

    goto :goto_59

    :cond_58
    move v1, v2

    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 1834
    :cond_5c
    iput v5, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-eqz v1, :cond_6b

    .line 1836
    iget-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v2, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object v2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 1837
    iget-object v1, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    goto :goto_7d

    .line 1840
    :cond_6b
    iget-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleClearBytesCount:[I

    .line 1841
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 1843
    iget-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleEncryptedBytesCount:[I

    iget v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSubsampleEncryptionDataSize:I

    .line 1844
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 1848
    :goto_7d
    iput-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 1850
    :cond_7f
    :goto_7f
    iput-object p1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastReceivedCryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    .line 1851
    iget-object p0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mLastOutputCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object p0
.end method

.method private blacklist outputSampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V
    .registers 6

    .line 1869
    iget-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmScratchParsableByteArrayAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$ParsableByteArrayAdapter;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaParser$ParsableByteArrayAdapter;->resetWithByteArray(Landroid/media/internal/exo/util/ParsableByteArray;J)V

    .line 1873
    :goto_a
    :try_start_a
    iget-object p1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p1}, Landroid/media/MediaParser;->-$$Nest$fgetmScratchParsableByteArrayAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$ParsableByteArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaParser$ParsableByteArrayAdapter;->getLength()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_2c

    .line 1874
    iget-object p1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p1}, Landroid/media/MediaParser;->-$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;

    move-result-object p1

    iget p2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mTrackIndex:I

    iget-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmScratchParsableByteArrayAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$ParsableByteArrayAdapter;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/media/MediaParser$OutputConsumer;->onSampleDataFound(ILandroid/media/MediaParser$InputReader;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2d

    goto :goto_a

    :cond_2c
    return-void

    :catch_2d
    move-exception p0

    .line 1879
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public blacklist format(Landroid/media/internal/exo/Format;)V
    .registers 6

    .line 1699
    iget-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmTrackFormats(Landroid/media/MediaParser;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mTrackIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1700
    iget-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mTrackIndex:I

    new-instance v2, Landroid/media/MediaParser$TrackData;

    .line 1703
    invoke-static {p1}, Landroid/media/MediaParser;->-$$Nest$smtoMediaFormat(Landroid/media/internal/exo/Format;)Landroid/media/MediaFormat;

    move-result-object v3

    iget-object p0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    iget-object p1, p1, Landroid/media/internal/exo/Format;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    invoke-static {p0, p1}, Landroid/media/MediaParser;->-$$Nest$mtoFrameworkDrmInitData(Landroid/media/MediaParser;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/DrmInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v2, v3, p0, p1}, Landroid/media/MediaParser$TrackData;-><init>(Landroid/media/MediaFormat;Landroid/media/DrmInitData;Landroid/media/MediaParser-IA;)V

    .line 1700
    invoke-interface {v0, v1, v2}, Landroid/media/MediaParser$OutputConsumer;->onTrackDataFound(ILandroid/media/MediaParser$TrackData;)V

    return-void
.end method

.method public bridge synthetic blacklist sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-super {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method public blacklist sampleData(Landroid/media/internal/exo/upstream/DataReader;IZI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1713
    iget-object p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p3}, Landroid/media/MediaParser;->-$$Nest$fgetmScratchDataReaderAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$DataReaderAdapter;

    move-result-object p3

    int-to-long v0, p2

    invoke-virtual {p3, p1, v0, v1}, Landroid/media/MediaParser$DataReaderAdapter;->setDataReader(Landroid/media/internal/exo/upstream/DataReader;J)V

    .line 1714
    iget-object p1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p1}, Landroid/media/MediaParser;->-$$Nest$fgetmScratchDataReaderAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$DataReaderAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaParser$DataReaderAdapter;->getPosition()J

    move-result-wide p1

    .line 1715
    iget-object p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p3}, Landroid/media/MediaParser;->-$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;

    move-result-object p3

    iget p4, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mTrackIndex:I

    iget-object v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v0}, Landroid/media/MediaParser;->-$$Nest$fgetmScratchDataReaderAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$DataReaderAdapter;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Landroid/media/MediaParser$OutputConsumer;->onSampleDataFound(ILandroid/media/MediaParser$InputReader;)V

    .line 1716
    iget-object p0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p0}, Landroid/media/MediaParser;->-$$Nest$fgetmScratchDataReaderAdapter(Landroid/media/MediaParser;)Landroid/media/MediaParser$DataReaderAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaParser$DataReaderAdapter;->getPosition()J

    move-result-wide p3

    sub-long/2addr p3, p1

    long-to-int p0, p3

    return p0
.end method

.method public bridge synthetic blacklist sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    return-void
.end method

.method public blacklist sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_9b

    .line 1722
    iget-object v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v2}, Landroid/media/MediaParser;->-$$Nest$fgetmInBandCryptoInfo(Landroid/media/MediaParser;)Z

    move-result v2

    if-nez v2, :cond_9b

    :goto_c
    if-lez p2, :cond_9a

    .line 1724
    iget p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataReadState:I

    const/4 v2, 0x0

    if-eqz p3, :cond_81

    if-eq p3, v1, :cond_66

    const/4 v3, 0x3

    if-eq p3, v0, :cond_46

    if-ne p3, v3, :cond_40

    move p3, v2

    .line 1762
    :goto_1b
    iget v3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSubsampleEncryptionDataSize:I

    if-ge p3, v3, :cond_32

    .line 1763
    iget-object v3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleClearBytesCount:[I

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    aput v4, v3, p3

    .line 1764
    iget-object v3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleEncryptedBytesCount:[I

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    aput v4, v3, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    :cond_32
    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr p2, v3

    .line 1769
    iput v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataReadState:I

    if-nez p2, :cond_3a

    goto :goto_c

    .line 1771
    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 1776
    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 1746
    :cond_46
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p3

    iput p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSubsampleEncryptionDataSize:I

    .line 1747
    iget-object v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleClearBytesCount:[I

    array-length v2, v2

    if-ge v2, p3, :cond_59

    .line 1749
    new-array v2, p3, [I

    iput-object v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleClearBytesCount:[I

    .line 1751
    new-array v2, p3, [I

    iput-object v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchSubsampleEncryptedBytesCount:[I

    :cond_59
    add-int/lit8 p2, p2, -0x2

    .line 1755
    iget v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataSizeToSubtractFromSampleDataSize:I

    mul-int/lit8 p3, p3, 0x6

    add-int/2addr p3, v0

    add-int/2addr v2, p3

    iput v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataSizeToSubtractFromSampleDataSize:I

    .line 1759
    iput v3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataReadState:I

    goto :goto_c

    .line 1735
    :cond_66
    iget-object p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchIvSpace:[B

    invoke-static {p3, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 1736
    iget-object p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mScratchIvSpace:[B

    iget v3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionVectorSize:I

    invoke-virtual {p1, p3, v2, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1737
    iget p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionVectorSize:I

    sub-int/2addr p2, p3

    .line 1738
    iget-boolean p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mHasSubsampleEncryptionData:Z

    if-eqz p3, :cond_7c

    .line 1739
    iput v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataReadState:I

    goto :goto_c

    .line 1741
    :cond_7c
    iput v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSubsampleEncryptionDataSize:I

    .line 1742
    iput v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataReadState:I

    goto :goto_c

    .line 1726
    :cond_81
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p3

    add-int/lit8 p2, p2, -0x1

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v1

    if-eqz v3, :cond_8d

    move v2, v1

    .line 1728
    :cond_8d
    iput-boolean v2, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mHasSubsampleEncryptionData:Z

    and-int/lit8 p3, p3, 0x7f

    .line 1729
    iput p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionVectorSize:I

    add-int/2addr p3, v1

    .line 1730
    iput p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataSizeToSubtractFromSampleDataSize:I

    .line 1732
    iput v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataReadState:I

    goto/16 :goto_c

    :cond_9a
    return-void

    :cond_9b
    if-ne p3, v0, :cond_ae

    .line 1779
    iget-object p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {p3}, Landroid/media/MediaParser;->-$$Nest$fgetmIncludeSupplementalData(Landroid/media/MediaParser;)Z

    move-result p3

    if-nez p3, :cond_ae

    .line 1781
    iget p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSkippedSupplementalDataBytes:I

    add-int/2addr p3, p2

    iput p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSkippedSupplementalDataBytes:I

    .line 1782
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    return-void

    .line 1784
    :cond_ae
    invoke-direct {p0, p1, p2}, Landroid/media/MediaParser$TrackOutputAdapter;->outputSampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    return-void
.end method

.method public blacklist sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V
    .registers 17

    .line 1791
    iget v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSkippedSupplementalDataBytes:I

    sub-int/2addr p4, v0

    const/4 v0, 0x0

    .line 1792
    iput v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mSkippedSupplementalDataBytes:I

    .line 1793
    iget-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    invoke-static {v1}, Landroid/media/MediaParser;->-$$Nest$fgetmOutputConsumer(Landroid/media/MediaParser;)Landroid/media/MediaParser$OutputConsumer;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mTrackIndex:I

    iget-object v1, p0, Landroid/media/MediaParser$TrackOutputAdapter;->this$0:Landroid/media/MediaParser;

    .line 1796
    invoke-static {v1, p3}, Landroid/media/MediaParser;->-$$Nest$mgetMediaParserFlags(Landroid/media/MediaParser;I)I

    move-result v6

    iget p3, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataSizeToSubtractFromSampleDataSize:I

    sub-int v7, p4, p3

    move-object/from16 p3, p6

    .line 1799
    invoke-direct {p0, p3}, Landroid/media/MediaParser$TrackOutputAdapter;->getPopulatedCryptoInfo(Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v9

    move-wide v4, p1

    move v8, p5

    .line 1793
    invoke-interface/range {v2 .. v9}, Landroid/media/MediaParser$OutputConsumer;->onSampleCompleted(IJIIILandroid/media/MediaCodec$CryptoInfo;)V

    .line 1800
    iput v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataReadState:I

    .line 1801
    iput v0, p0, Landroid/media/MediaParser$TrackOutputAdapter;->mEncryptionDataSizeToSubtractFromSampleDataSize:I

    return-void
.end method
