.class public final Landroid/media/internal/exo/extractor/ts/Ac3Extractor;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;


# instance fields
.field private final blacklist reader:Landroid/media/internal/exo/extractor/ts/Ac3Reader;

.field private final blacklist sampleData:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist startedPacket:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->reader:Landroid/media/internal/exo/extractor/ts/Ac3Reader;

    .line 57
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->sampleData:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 5

    .line 109
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->reader:Landroid/media/internal/exo/extractor/ts/Ac3Reader;

    new-instance v0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 110
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    .line 111
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->sampleData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0xae2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_11

    return p2

    .line 133
    :cond_11
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->sampleData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 134
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->sampleData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 136
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->startedPacket:Z

    if-nez p1, :cond_2a

    .line 138
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->reader:Landroid/media/internal/exo/extractor/ts/Ac3Reader;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->packetStarted(JI)V

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 143
    :cond_2a
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->reader:Landroid/media/internal/exo/extractor/ts/Ac3Reader;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->sampleData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, p0}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;)V

    return v1
.end method

.method public blacklist seek(JJ)V
    .registers 5

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 117
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Extractor;->reader:Landroid/media/internal/exo/extractor/ts/Ac3Reader;

    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->seek()V

    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance p0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 68
    :goto_9
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-interface {p1, v3, v1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 69
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 70
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_60

    .line 78
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 79
    invoke-interface {p1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v0, v1

    move v3, v2

    .line 84
    :goto_24
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {p1, v4, v1, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 85
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 86
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    const/16 v5, 0xb77

    if-eq v4, v5, :cond_48

    .line 89
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v3, v3, 0x1

    sub-int v0, v3, v2

    const/16 v4, 0x2000

    if-lt v0, v4, :cond_43

    return v1

    .line 93
    :cond_43
    invoke-interface {p1, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v0, v1

    goto :goto_24

    :cond_48
    const/4 v4, 0x1

    add-int/2addr v0, v4

    const/4 v5, 0x4

    if-lt v0, v5, :cond_4e

    return v4

    .line 98
    :cond_4e
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v4}, Landroid/media/internal/exo/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5a

    return v1

    :cond_5a
    add-int/lit8 v4, v4, -0x6

    .line 102
    invoke-interface {p1, v4}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_24

    :cond_60
    const/4 v3, 0x3

    .line 73
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 74
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/lit8 v4, v3, 0xa

    add-int/2addr v2, v4

    .line 76
    invoke-interface {p1, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_9
.end method
