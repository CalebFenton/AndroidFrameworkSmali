.class public Landroid/media/internal/exo/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;


# instance fields
.field private blacklist output:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

.field private blacklist streamReaderInitialized:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist resetPosition(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/util/ParsableByteArray;
    .registers 2

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object p0
.end method

.method private blacklist sniffInternal(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;-><init>()V

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, p1, v1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->populate(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5e

    iget v2, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_14

    goto :goto_5e

    .line 98
    :cond_14
    iget v0, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    new-instance v2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 100
    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 102
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->resetPosition(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/extractor/ogg/FlacReader;->verifyBitstreamType(Landroid/media/internal/exo/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 103
    new-instance p1, Landroid/media/internal/exo/extractor/ogg/FlacReader;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/ogg/FlacReader;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    goto :goto_5d

    .line 104
    :cond_3a
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->resetPosition(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->verifyBitstreamType(Landroid/media/internal/exo/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 105
    new-instance p1, Landroid/media/internal/exo/extractor/ogg/VorbisReader;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/ogg/VorbisReader;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    goto :goto_5d

    .line 106
    :cond_4c
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->resetPosition(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/extractor/ogg/OpusReader;->verifyBitstreamType(Landroid/media/internal/exo/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 107
    new-instance p1, Landroid/media/internal/exo/extractor/ogg/OpusReader;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/ogg/OpusReader;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    :goto_5d
    return v1

    :cond_5e
    :goto_5e
    return v3
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 2

    .line 57
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    if-nez v0, :cond_1b

    .line 76
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->sniffInternal(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 80
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_1b

    .line 77
    :cond_13
    const-string p0, "Failed to determine bitstream type"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 82
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    if-nez v0, :cond_35

    .line 83
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    .line 84
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    .line 85
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-virtual {v1, v3, v0}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->init(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/TrackOutput;)V

    .line 86
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    .line 88
    :cond_35
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public blacklist seek(JJ)V
    .registers 5

    .line 62
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    if-eqz p0, :cond_7

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->seek(JJ)V

    :cond_7
    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ogg/OggExtractor;->sniffInternal(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_4
    .catch Landroid/media/internal/exo/ParserException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method
