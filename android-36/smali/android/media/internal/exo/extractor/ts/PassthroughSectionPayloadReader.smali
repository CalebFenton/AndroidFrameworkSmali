.class public final Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;
.super Ljava/lang/Object;
.source "PassthroughSectionPayloadReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;


# instance fields
.field private blacklist format:Landroid/media/internal/exo/Format;

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->format:Landroid/media/internal/exo/Format;

    return-void
.end method

.method private blacklist assertInitialized()V
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 10

    .line 64
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->assertInitialized()V

    .line 65
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    move-result-wide v2

    .line 66
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_49

    cmp-long v4, v0, v4

    if-nez v4, :cond_1d

    goto :goto_49

    .line 71
    :cond_1d
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->format:Landroid/media/internal/exo/Format;

    iget-wide v5, v4, Landroid/media/internal/exo/Format;->subsampleOffsetUs:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_38

    .line 72
    invoke-virtual {v4}, Landroid/media/internal/exo/Format;->buildUpon()Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/media/internal/exo/Format$Builder;->setSubsampleOffsetUs(J)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->format:Landroid/media/internal/exo/Format;

    .line 73
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 75
    :cond_38
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    .line 76
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v0, p1, v5}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 77
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public blacklist init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 54
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    .line 55
    invoke-virtual {p3}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 56
    invoke-virtual {p3}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 59
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;->format:Landroid/media/internal/exo/Format;

    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    return-void
.end method
