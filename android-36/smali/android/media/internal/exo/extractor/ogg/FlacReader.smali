.class final Landroid/media/internal/exo/extractor/ogg/FlacReader;
.super Landroid/media/internal/exo/extractor/ogg/StreamReader;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;
    }
.end annotation


# instance fields
.field private blacklist flacOggSeeker:Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;

.field private blacklist streamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private blacklist getFlacFrameBlockSize(Landroid/media/internal/exo/util/ParsableByteArray;)I
    .registers 4

    .line 107
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x4

    shr-int/2addr p0, v0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_11

    const/4 v1, 0x7

    if-ne p0, v1, :cond_17

    .line 110
    :cond_11
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUtf8EncodedLong()J

    .line 113
    :cond_17
    invoke-static {p1, p0}, Landroid/media/internal/exo/extractor/FlacFrameReader;->readFrameBlockSizeSamplesFromKey(Landroid/media/internal/exo/util/ParsableByteArray;I)I

    move-result p0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return p0
.end method

.method private static blacklist isAudioPacket([B)Z
    .registers 3

    const/4 v0, 0x0

    .line 62
    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return v0
.end method

.method public static blacklist verifyBitstreamType(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 5

    .line 46
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1c

    .line 47
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1c

    .line 49
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected blacklist preparePayload(Landroid/media/internal/exo/util/ParsableByteArray;)J
    .registers 3

    .line 67
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 p0, -0x1

    return-wide p0

    .line 70
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ogg/FlacReader;->getFlacFrameBlockSize(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method protected blacklist readHeaders(Landroid/media/internal/exo/util/ParsableByteArray;JLandroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;)Z
    .registers 11

    .line 76
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 77
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader;->streamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 79
    new-instance p2, Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;-><init>([BI)V

    .line 80
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader;->streamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    const/16 p0, 0x9

    .line 81
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {v0, p0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p2, p0, p1}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getFormat([BLandroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/Format;

    move-result-object p0

    iput-object p0, p4, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->format:Landroid/media/internal/exo/Format;

    return v2

    :cond_24
    const/4 v3, 0x0

    .line 86
    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3e

    .line 87
    invoke-static {p1}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    move-result-object p1

    .line 88
    invoke-virtual {v1, p1}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->copyWithSeekTable(Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    move-result-object p2

    .line 89
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader;->streamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    .line 90
    new-instance p3, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;

    invoke-direct {p3, p2, p1}, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;)V

    iput-object p3, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader;->flacOggSeeker:Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;

    return v2

    .line 94
    :cond_3e
    invoke-static {v0}, Landroid/media/internal/exo/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 95
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader;->flacOggSeeker:Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;

    if-eqz p1, :cond_4f

    .line 96
    invoke-virtual {p1, p2, p3}, Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;->setFirstFrameOffset(J)V

    .line 97
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader;->flacOggSeeker:Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;

    iput-object p0, p4, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    .line 99
    :cond_4f
    iget-object p0, p4, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->format:Landroid/media/internal/exo/Format;

    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_55
    return v2
.end method

.method protected blacklist reset(Z)V
    .registers 2

    .line 54
    invoke-super {p0, p1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader;->streamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    .line 57
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/FlacReader;->flacOggSeeker:Landroid/media/internal/exo/extractor/ogg/FlacReader$FlacOggSeeker;

    :cond_a
    return-void
.end method
