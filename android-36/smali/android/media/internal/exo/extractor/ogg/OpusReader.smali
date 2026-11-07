.class final Landroid/media/internal/exo/extractor/ogg/OpusReader;
.super Landroid/media/internal/exo/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field private static final blacklist OPUS_SIGNATURE:[B


# instance fields
.field private blacklist headerRead:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 32
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    return-void

    :array_a
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private blacklist getPacketDurationUs([B)J
    .registers 7

    const/4 p0, 0x0

    .line 89
    aget-byte p0, p1, p0

    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x3

    and-int/2addr p0, v1

    const/4 v2, 0x1

    if-eqz p0, :cond_14

    const/4 v3, 0x2

    if-eq p0, v2, :cond_15

    if-eq p0, v3, :cond_15

    .line 100
    aget-byte p0, p1, v2

    and-int/lit8 v3, p0, 0x3f

    goto :goto_15

    :cond_14
    move v3, v2

    :cond_15
    :goto_15
    shr-int/lit8 p0, v0, 0x3

    and-int/lit8 p1, p0, 0x3

    const/16 v0, 0x10

    if-lt p0, v0, :cond_21

    const/16 p0, 0x9c4

    shl-int/2addr p0, p1

    goto :goto_33

    :cond_21
    const/16 v0, 0xc

    const/16 v4, 0x2710

    if-lt p0, v0, :cond_2b

    and-int/2addr p0, v2

    shl-int p0, v4, p0

    goto :goto_33

    :cond_2b
    if-ne p1, v1, :cond_31

    const p0, 0xea60

    goto :goto_33

    :cond_31
    shl-int p0, v4, p1

    :goto_33
    int-to-long v0, v3

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static blacklist verifyBitstreamType(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 5

    .line 37
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    sget-object v1, Landroid/media/internal/exo/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_b

    return v3

    .line 40
    :cond_b
    array-length v0, v1

    new-array v0, v0, [B

    .line 41
    array-length v2, v1

    invoke-virtual {p0, v0, v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 42
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected blacklist preparePayload(Landroid/media/internal/exo/util/ParsableByteArray;)J
    .registers 4

    .line 55
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ogg/OpusReader;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected blacklist readHeaders(Landroid/media/internal/exo/util/ParsableByteArray;JLandroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;)Z
    .registers 7

    .line 61
    iget-boolean p2, p0, Landroid/media/internal/exo/extractor/ogg/OpusReader;->headerRead:Z

    const/4 p3, 0x1

    if-nez p2, :cond_3c

    .line 62
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 63
    invoke-static {p1}, Landroid/media/internal/exo/audio/OpusUtil;->getChannelCount([B)I

    move-result p2

    .line 64
    invoke-static {p1}, Landroid/media/internal/exo/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object p1

    .line 65
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v1, "audio/opus"

    .line 67
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p2}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    const v0, 0xbb80

    .line 69
    invoke-virtual {p2, v0}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    iput-object p1, p4, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->format:Landroid/media/internal/exo/Format;

    .line 72
    iput-boolean p3, p0, Landroid/media/internal/exo/extractor/ogg/OpusReader;->headerRead:Z

    return p3

    .line 75
    :cond_3c
    iget-object p0, p4, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->format:Landroid/media/internal/exo/Format;

    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    const p2, 0x4f707573

    const/4 p4, 0x0

    if-ne p0, p2, :cond_4c

    goto :goto_4d

    :cond_4c
    move p3, p4

    .line 77
    :goto_4d
    invoke-virtual {p1, p4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return p3
.end method

.method protected blacklist reset(Z)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ogg/OpusReader;->headerRead:Z

    :cond_8
    return-void
.end method
