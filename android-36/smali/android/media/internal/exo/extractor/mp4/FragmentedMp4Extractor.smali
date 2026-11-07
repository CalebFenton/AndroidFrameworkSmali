.class public Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    }
.end annotation


# static fields
.field private static final blacklist EMSG_FORMAT:Landroid/media/internal/exo/Format;

.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

.field private static final blacklist PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B


# instance fields
.field private final blacklist additionalEmsgTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist atomData:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist atomHeaderBytesRead:I

.field private blacklist atomSize:J

.field private blacklist atomType:I

.field private blacklist ceaTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

.field private final blacklist closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist currentTrackBundle:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private blacklist durationUs:J

.field private blacklist emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist endOfMdatPosition:J

.field private final blacklist eventMessageEncoder:Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private final blacklist flags:I

.field private blacklist haveOutputSeekMap:Z

.field private final blacklist nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist nalPrefix:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist parserState:I

.field private blacklist pendingMetadataSampleBytes:I

.field private final blacklist pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist pendingSeekTimeUs:J

.field private blacklist processSeiNalUnitPayload:Z

.field private blacklist sampleBytesWritten:I

.field private blacklist sampleCurrentNalBytesRemaining:I

.field private blacklist sampleSize:I

.field private final blacklist scratch:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist scratchBytes:[B

.field private blacklist segmentIndexEarliestPresentationTimeUs:J

.field private final blacklist sideloadedTrack:Landroid/media/internal/exo/extractor/mp4/Track;

.field private final blacklist timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

.field private final blacklist trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    .line 114
    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 118
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    .line 119
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroid/media/internal/exo/Format;

    return-void

    :array_22
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, v0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroid/media/internal/exo/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/media/internal/exo/util/TimestampAdjuster;)V
    .registers 5

    const/4 v0, 0x0

    .line 196
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/mp4/Track;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/mp4/Track;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/media/internal/exo/util/TimestampAdjuster;",
            "Landroid/media/internal/exo/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 225
    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/mp4/Track;Ljava/util/List;Landroid/media/internal/exo/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/mp4/Track;Ljava/util/List;Landroid/media/internal/exo/extractor/TrackOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/media/internal/exo/util/TimestampAdjuster;",
            "Landroid/media/internal/exo/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/Format;",
            ">;",
            "Landroid/media/internal/exo/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 251
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    .line 252
    iput-object p3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroid/media/internal/exo/extractor/mp4/Track;

    .line 253
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 254
    iput-object p5, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 255
    new-instance p1, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;

    invoke-direct {p1}, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;

    .line 256
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 257
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    sget-object p3, Landroid/media/internal/exo/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p3}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 258
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 259
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 260
    new-array p1, p2, [B

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 261
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p2, p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 262
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 263
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 264
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 265
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 266
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 267
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 268
    sget-object p1, Landroid/media/internal/exo/extractor/ExtractorOutput;->PLACEHOLDER:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/4 p1, 0x0

    .line 269
    new-array p2, p1, [Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    .line 270
    new-array p1, p1, [Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    return-void
.end method

.method private static blacklist checkNonNegative(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    if-ltz p0, :cond_3

    return p0

    .line 1059
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist enterReadingAtomHeaderState()V
    .registers 2

    const/4 v0, 0x0

    .line 347
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 348
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private blacklist getDefaultSampleValues(Landroid/util/SparseArray;I)Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 554
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    const/4 p0, 0x0

    .line 557
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    return-object p0

    .line 559
    :cond_f
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    return-object p0
.end method

.method private static blacklist getDrmInitDataFromAtoms(Ljava/util/List;)Landroid/media/internal/exo/drm/DrmInitData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Landroid/media/internal/exo/drm/DrmInitData;"
        }
    .end annotation

    .line 1508
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_7
    if-ge v2, v0, :cond_3e

    .line 1510
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    .line 1511
    iget v5, v4, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_3b

    if-nez v3, :cond_1d

    .line 1513
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    :cond_1d
    iget-object v4, v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 1516
    invoke-static {v4}, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_31

    .line 1518
    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 1520
    :cond_31
    new-instance v6, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3e
    if-nez v3, :cond_41

    return-object v1

    .line 1524
    :cond_41
    new-instance p0, Landroid/media/internal/exo/drm/DrmInitData;

    invoke-direct {p0, v3}, Landroid/media/internal/exo/drm/DrmInitData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static blacklist getNextTrackBundle(Landroid/util/SparseArray;)Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1485
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_3d

    .line 1487
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1488
    # getter for: Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z
    invoke-static {v5}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-nez v6, :cond_21

    iget v6, v5, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v5, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget v7, v7, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v6, v7, :cond_3a

    .line 1490
    :cond_21
    # getter for: Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z
    invoke-static {v5}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-eqz v6, :cond_30

    iget v6, v5, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget v7, v7, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_30

    goto :goto_3a

    .line 1494
    :cond_30
    invoke-virtual {v5}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_3a

    move-object v1, v5

    move-wide v2, v6

    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_3d
    return-object v1
.end method

.method private blacklist initExtraTracks()V
    .registers 8

    const/4 v0, 0x2

    .line 585
    new-array v0, v0, [Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    .line 587
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 588
    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    .line 590
    :goto_f
    iget v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_25

    add-int/lit8 v3, v1, 0x1

    .line 591
    iget-object v5, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/4 v6, 0x5

    .line 592
    invoke-interface {v5, v4, v6}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v4, 0x65

    move v1, v3

    .line 594
    :cond_25
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0, v1}, Landroid/media/internal/exo/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    .line 595
    array-length v1, v0

    move v3, v2

    :goto_31
    if-ge v3, v1, :cond_3d

    aget-object v5, v0, v3

    .line 596
    sget-object v6, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroid/media/internal/exo/Format;

    invoke-interface {v5, v6}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 599
    :cond_3d
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    .line 600
    :goto_47
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v0, v0

    if-ge v2, v0, :cond_68

    .line 601
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    .line 602
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/Format;

    invoke-interface {v0, v3}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 603
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_47

    :cond_68
    return-void
.end method

.method private blacklist onContainerAtomRead(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 480
    iget v0, p1, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_b

    .line 481
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)V

    return-void

    :cond_b
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_14

    .line 483
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)V

    return-void

    .line 484
    :cond_14
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 485
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->add(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)V

    :cond_27
    return-void
.end method

.method private blacklist onEmsgLeafAtomRead(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 609
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v2, v2

    if-nez v2, :cond_b

    goto/16 :goto_11b

    :cond_b
    const/16 v2, 0x8

    .line 612
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 613
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 614
    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_73

    const/4 v5, 0x1

    if-eq v2, v5, :cond_39

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unsupported emsg version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentedMp4Extractor"

    invoke-static {v1, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 637
    :cond_39
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 639
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    invoke-static/range {v5 .. v10}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 641
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    invoke-static/range {v5 .. v10}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 642
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 643
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    move-wide v5, v3

    :goto_6f
    move-object v15, v2

    move-object/from16 v16, v9

    goto :goto_b4

    .line 624
    :cond_73
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 625
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 626
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 628
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 629
    iget-wide v7, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v10, v7, v3

    if-eqz v10, :cond_9f

    add-long/2addr v7, v5

    goto :goto_a0

    :cond_9f
    move-wide v7, v3

    .line 633
    :goto_a0
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    invoke-static/range {v10 .. v15}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 634
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    move-wide/from16 v17, v10

    move-wide/from16 v19, v12

    move-wide v11, v7

    goto :goto_6f

    .line 651
    :goto_b4
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v2, v2, [B

    .line 652
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 653
    new-instance v14, Landroid/media/internal/exo/metadata/emsg/EventMessage;

    move-object/from16 v21, v2

    invoke-direct/range {v14 .. v21}, Landroid/media/internal/exo/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 654
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v2, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;

    .line 655
    invoke-virtual {v2, v14}, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->encode(Landroid/media/internal/exo/metadata/emsg/EventMessage;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    .line 656
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 659
    iget-object v7, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v9, v7

    move v10, v8

    :goto_dc
    if-ge v10, v9, :cond_e9

    aget-object v13, v7, v10

    .line 660
    invoke-virtual {v1, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 661
    invoke-interface {v13, v1, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_dc

    :cond_e9
    cmp-long v1, v11, v3

    if-nez v1, :cond_fd

    .line 668
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v3, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v5, v6, v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 670
    iget v1, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    return-void

    .line 672
    :cond_fd
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    if-eqz v1, :cond_105

    .line 673
    invoke-virtual {v1, v11, v12}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v11

    :cond_105
    move-wide v14, v11

    .line 675
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v1, v0

    :goto_109
    if-ge v8, v1, :cond_11b

    aget-object v13, v0, v8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x1

    move/from16 v17, v2

    .line 676
    invoke-interface/range {v13 .. v19}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_109

    :cond_11b
    :goto_11b
    return-void
.end method

.method private blacklist onLeafAtomRead(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 468
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->add(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;)V

    return-void

    .line 469
    :cond_14
    iget v0, p1, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_38

    .line 470
    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {p1, p2, p3}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Landroid/media/internal/exo/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object p1

    .line 471
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 472
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/internal/exo/extractor/SeekMap;

    invoke-interface {p2, p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    const/4 p1, 0x1

    .line 473
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    return-void

    :cond_38
    const p2, 0x656d7367

    if-ne v0, p2, :cond_42

    .line 475
    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Landroid/media/internal/exo/util/ParsableByteArray;)V

    :cond_42
    return-void
.end method

.method private blacklist onMoofContainerAtomRead(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroid/media/internal/exo/extractor/mp4/Track;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    iget v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-static {p1, v0, v1, v3, v4}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V

    .line 565
    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroid/media/internal/exo/drm/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 567
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v2

    :goto_20
    if-ge v1, v0, :cond_30

    .line 569
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 573
    :cond_30
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_55

    .line 574
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_41
    if-ge v2, p1, :cond_53

    .line 576
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v5, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v0, v5, v6}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 578
    :cond_53
    iput-wide v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    :cond_55
    return-void
.end method

.method private blacklist onMoovContainerAtomRead(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroid/media/internal/exo/extractor/mp4/Track;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Landroid/media/internal/exo/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 492
    iget-object v0, p1, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroid/media/internal/exo/drm/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    .line 495
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    .line 496
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 498
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v4

    move v4, v1

    :goto_33
    if-ge v4, v3, :cond_68

    .line 500
    iget-object v8, v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    .line 501
    iget v9, v8, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_5a

    .line 502
    iget-object v8, v8, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v8}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v8

    .line 503
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v11, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_65

    :cond_5a
    const v10, 0x6d656864

    if-ne v9, v10, :cond_65

    .line 505
    iget-object v5, v8, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v5}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Landroid/media/internal/exo/util/ParsableByteArray;)J

    move-result-wide v5

    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 510
    :cond_68
    new-instance v4, Landroid/media/internal/exo/extractor/GaplessInfoHolder;

    invoke-direct {v4}, Landroid/media/internal/exo/extractor/GaplessInfoHolder;-><init>()V

    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_75

    move v8, v2

    goto :goto_76

    :cond_75
    move v8, v1

    :goto_76
    new-instance v10, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;)V

    const/4 v9, 0x0

    move-object v3, p1

    .line 511
    invoke-static/range {v3 .. v10}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseTraks(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/media/internal/exo/extractor/GaplessInfoHolder;JLandroid/media/internal/exo/drm/DrmInitData;ZZLandroid/media/internal/guava_common/base/Function;)Ljava/util/List;

    move-result-object p1

    .line 520
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 521
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_c4

    :goto_8d
    if-ge v1, v0, :cond_be

    .line 524
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    .line 525
    iget-object v3, v2, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    .line 526
    new-instance v4, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget v6, v3, Landroid/media/internal/exo/extractor/mp4/Track;->type:I

    .line 528
    invoke-interface {v5, v1, v6}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v5

    iget v6, v3, Landroid/media/internal/exo/extractor/mp4/Track;->id:I

    .line 530
    invoke-direct {p0, v11, v6}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;)V

    .line 531
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v3, Landroid/media/internal/exo/extractor/mp4/Track;->id:I

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v2, v3, Landroid/media/internal/exo/extractor/mp4/Track;->durationUs:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 534
    :cond_be
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    return-void

    .line 536
    :cond_c4
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_cd

    goto :goto_ce

    :cond_cd
    move v2, v1

    :goto_ce
    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    :goto_d1
    if-ge v1, v0, :cond_f1

    .line 538
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    .line 539
    iget-object v3, v2, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    .line 540
    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v3, Landroid/media/internal/exo/extractor/mp4/Track;->id:I

    .line 541
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v3, v3, Landroid/media/internal/exo/extractor/mp4/Track;->id:I

    .line 542
    invoke-direct {p0, v11, v3}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d1

    :cond_f1
    return-void
.end method

.method private blacklist outputPendingMetadataSamples(J)V
    .registers 14

    .line 1458
    :cond_0
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1459
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1460
    iget v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v2, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1461
    iget-wide v1, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    add-long/2addr v1, p1

    .line 1462
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    if-eqz v3, :cond_22

    .line 1463
    invoke-virtual {v3, v1, v2}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v1

    :cond_22
    move-wide v4, v1

    .line 1465
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v2, v1

    const/4 v3, 0x0

    move v10, v3

    :goto_28
    if-ge v10, v2, :cond_0

    aget-object v3, v1, v10

    .line 1466
    iget v7, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v8, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_38
    return-void
.end method

.method private static blacklist parseMehd(Landroid/media/internal/exo/util/ParsableByteArray;)J
    .registers 3

    const/16 v0, 0x8

    .line 702
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 703
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 704
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-nez v0, :cond_14

    .line 705
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    :cond_14
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist parseMoof(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 717
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    .line 719
    iget v3, v2, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_1b

    .line 720
    invoke-static {v2, p1, p2, p3, p4}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method private static blacklist parseSaio(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/mp4/TrackFragment;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 868
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 869
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 870
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_14

    .line 872
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 875
    :cond_14
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-ne v0, v3, :cond_2f

    .line 882
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 883
    iget-wide v1, p1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v0, :cond_27

    .line 884
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    :goto_2b
    add-long/2addr v1, v3

    iput-wide v1, p1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    return-void

    .line 878
    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist parseSaiz(Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/mp4/TrackFragment;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 823
    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    const/16 v0, 0x8

    .line 824
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 825
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 826
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    .line 828
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 830
    :cond_16
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 832
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 833
    iget v3, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v1, v3, :cond_52

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    .line 844
    iget-object v0, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    move v4, v3

    move v5, v4

    :goto_29
    if-ge v4, v1, :cond_45

    .line 846
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_34

    move v6, v2

    goto :goto_35

    :cond_34
    move v6, v3

    .line 848
    :goto_35
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_3a
    if-le v0, p0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    :goto_3e
    mul-int v5, v0, v1

    .line 853
    iget-object p0, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 855
    :cond_45
    iget-object p0, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_51

    .line 857
    invoke-virtual {p2, v5}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    :cond_51
    return-void

    .line 834
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Saiz sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist parseSampleGroups(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Ljava/lang/String;Landroid/media/internal/exo/extractor/mp4/TrackFragment;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move v4, v3

    .line 1123
    :goto_9
    iget-object v7, v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_44

    .line 1124
    iget-object v7, v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    .line 1125
    iget-object v8, v7, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1126
    iget v7, v7, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    const v9, 0x73626770

    const v10, 0x73656967

    const/16 v11, 0xc

    if-ne v7, v9, :cond_32

    .line 1127
    invoke-virtual {v8, v11}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1128
    invoke-virtual {v8}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v10, :cond_41

    move-object v5, v8

    goto :goto_41

    :cond_32
    const v9, 0x73677064

    if-ne v7, v9, :cond_41

    .line 1132
    invoke-virtual {v8, v11}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1133
    invoke-virtual {v8}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v10, :cond_41

    move-object v6, v8

    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_44
    if-eqz v5, :cond_e4

    if-nez v6, :cond_4a

    goto/16 :goto_e4

    :cond_4a
    const/16 v0, 0x8

    .line 1142
    invoke-virtual {v5, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1143
    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    const/4 v7, 0x4

    .line 1144
    invoke-virtual {v5, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_61

    .line 1146
    invoke-virtual {v5, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1148
    :cond_61
    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, v8, :cond_dd

    .line 1153
    invoke-virtual {v6, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1154
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1155
    invoke-virtual {v6, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    if-ne v0, v8, :cond_89

    .line 1157
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_82

    goto :goto_8f

    .line 1158
    :cond_82
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    :cond_89
    const/4 v4, 0x2

    if-lt v0, v4, :cond_8f

    .line 1162
    invoke-virtual {v6, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1164
    :cond_8f
    :goto_8f
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_d6

    .line 1170
    invoke-virtual {v6, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1171
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    .line 1174
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v8, :cond_ae

    move v10, v8

    goto :goto_af

    :cond_ae
    move v10, v3

    :goto_af
    if-nez v10, :cond_b2

    goto :goto_e4

    .line 1178
    :cond_b2
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v0, 0x10

    .line 1179
    new-array v13, v0, [B

    .line 1180
    invoke-virtual {v6, v13, v3, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    if-nez v12, :cond_c8

    .line 1183
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1184
    new-array v2, v0, [B

    .line 1185
    invoke-virtual {v6, v2, v3, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    :cond_c8
    move-object/from16 v16, v2

    .line 1187
    iput-boolean v8, v1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1188
    new-instance v9, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v9, v1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    return-void

    .line 1165
    :cond_d6
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    .line 1149
    :cond_dd
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    :cond_e4
    :goto_e4
    return-void
.end method

.method private static blacklist parseSenc(Landroid/media/internal/exo/util/ParsableByteArray;ILandroid/media/internal/exo/extractor/mp4/TrackFragment;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1088
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1089
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1090
    invoke-static {p1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_5c

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    move p1, v0

    .line 1099
    :goto_19
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez v1, :cond_27

    .line 1102
    iget-object p0, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 1104
    :cond_27
    iget v2, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v2, :cond_3b

    .line 1113
    iget-object v2, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1114
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1115
    invoke-virtual {p2, p0}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->fillEncryptionData(Landroid/media/internal/exo/util/ParsableByteArray;)V

    return-void

    .line 1105
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Senc sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 1094
    :cond_5c
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist parseSenc(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/mp4/TrackFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1083
    invoke-static {p0, v0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroid/media/internal/exo/util/ParsableByteArray;ILandroid/media/internal/exo/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static blacklist parseSidx(Landroid/media/internal/exo/util/ParsableByteArray;J)Landroid/util/Pair;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/media/internal/exo/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1209
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1210
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1211
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/4 v2, 0x4

    .line 1213
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1214
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    if-nez v1, :cond_25

    .line 1218
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1219
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    :goto_21
    add-long v5, p1, v5

    move-wide v9, v5

    goto :goto_2e

    .line 1221
    :cond_25
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    .line 1222
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    goto :goto_21

    :goto_2e
    const-wide/32 v5, 0xf4240

    .line 1225
    invoke-static/range {v3 .. v8}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    const/4 v1, 0x2

    .line 1227
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1229
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1230
    new-array v13, v1, [I

    .line 1231
    new-array v14, v1, [J

    .line 1232
    new-array v15, v1, [J

    .line 1233
    new-array v5, v1, [J

    const/4 v6, 0x0

    move-wide/from16 v16, v9

    move-wide/from16 v18, v11

    move v9, v6

    :goto_4b
    if-ge v9, v1, :cond_88

    .line 1238
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v6

    const/high16 v10, -0x80000000

    and-int/2addr v10, v6

    if-nez v10, :cond_80

    .line 1245
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v20

    const v10, 0x7fffffff

    and-int/2addr v6, v10

    .line 1247
    aput v6, v13, v9

    .line 1248
    aput-wide v16, v14, v9

    .line 1252
    aput-wide v18, v5, v9

    add-long v3, v3, v20

    move-object v10, v5

    const-wide/32 v5, 0xf4240

    .line 1254
    invoke-static/range {v3 .. v8}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 1255
    aget-wide v5, v10, v9

    sub-long v5, v18, v5

    aput-wide v5, v15, v9

    .line 1257
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1258
    aget v5, v13, v9

    int-to-long v5, v5

    add-long v16, v16, v5

    add-int/lit8 v9, v9, 0x1

    move-object v5, v10

    goto :goto_4b

    .line 1242
    :cond_80
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    :cond_88
    move-object v10, v5

    .line 1262
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Landroid/media/internal/exo/extractor/ChunkIndex;

    invoke-direct {v1, v13, v14, v15, v10}, Landroid/media/internal/exo/extractor/ChunkIndex;-><init>([I[J[J[J)V

    .line 1261
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseTfdt(Landroid/media/internal/exo/util/ParsableByteArray;)J
    .registers 3

    const/16 v0, 0x8

    .line 951
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 952
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 953
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 954
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    return-wide v0

    :cond_15
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist parseTfhd(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/util/SparseArray;Z)Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;Z)",
            "Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 902
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 903
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 904
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 905
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    if-eqz p2, :cond_1b

    const/4 p2, 0x0

    .line 908
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    :goto_18
    check-cast p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    goto :goto_20

    :cond_1b
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_18

    :goto_20
    if-nez p1, :cond_24

    const/4 p0, 0x0

    return-object p0

    :cond_24
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_32

    .line 913
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    .line 914
    iget-object p2, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iput-wide v1, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->dataPosition:J

    .line 915
    iput-wide v1, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 918
    :cond_32
    iget-object p2, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3f

    .line 921
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    .line 922
    :cond_3f
    iget v1, p2, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_41
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4a

    .line 925
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    goto :goto_4c

    .line 926
    :cond_4a
    iget v2, p2, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_4c
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_55

    .line 929
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v3

    goto :goto_57

    .line 930
    :cond_55
    iget v3, p2, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->size:I

    :goto_57
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_60

    .line 933
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    goto :goto_62

    .line 934
    :cond_60
    iget p0, p2, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->flags:I

    .line 935
    :goto_62
    iget-object p2, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    new-instance v0, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v0, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->header:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static blacklist parseTraf(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const v0, 0x74666864

    .line 733
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    .line 734
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v0, p1, p2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/util/SparseArray;Z)Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    if-nez p1, :cond_17

    goto/16 :goto_ae

    .line 739
    :cond_17
    iget-object p2, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    .line 740
    iget-wide v0, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 741
    iget-boolean v2, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 742
    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    const/4 v3, 0x1

    .line 743
    # setter for: Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z
    invoke-static {p1, v3}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$002(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z

    const v4, 0x74666474

    .line 744
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_3c

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_3c

    .line 746
    iget-object v0, v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Landroid/media/internal/exo/util/ParsableByteArray;)J

    move-result-wide v0

    iput-wide v0, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 747
    iput-boolean v3, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_40

    .line 749
    :cond_3c
    iput-wide v0, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 750
    iput-boolean v2, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 753
    :goto_40
    invoke-static {p0, p1, p3}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V

    .line 756
    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    iget-object p3, p2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->header:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    .line 758
    invoke-static {p3}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    iget p3, p3, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 757
    invoke-virtual {p1, p3}, Landroid/media/internal/exo/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-result-object p1

    const p3, 0x7361697a

    .line 760
    invoke-virtual {p0, p3}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_69

    .line 762
    invoke-static {p1}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    iget-object p3, p3, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v0, p3, p2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/mp4/TrackFragment;)V

    :cond_69
    const p3, 0x7361696f

    .line 765
    invoke-virtual {p0, p3}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_77

    .line 767
    iget-object p3, p3, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {p3, p2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/mp4/TrackFragment;)V

    :cond_77
    const p3, 0x73656e63

    .line 770
    invoke-virtual {p0, p3}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_85

    .line 772
    iget-object p3, p3, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {p3, p2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/mp4/TrackFragment;)V

    :cond_85
    if-eqz p1, :cond_8a

    .line 775
    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_8b

    :cond_8a
    const/4 p1, 0x0

    :goto_8b
    invoke-static {p0, p1, p2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseSampleGroups(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Ljava/lang/String;Landroid/media/internal/exo/extractor/mp4/TrackFragment;)V

    .line 777
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_95
    if-ge p3, p1, :cond_ae

    .line 779
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    .line 780
    iget v1, v0, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_ab

    .line 781
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v0, p2, p4}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/mp4/TrackFragment;[B)V

    :cond_ab
    add-int/lit8 p3, p3, 0x1

    goto :goto_95

    :cond_ae
    :goto_ae
    return-void
.end method

.method private static blacklist parseTrex(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 684
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 685
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 686
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 687
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 688
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 689
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v1, v2, v3, p0}, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 691
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseTrun(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILandroid/media/internal/exo/util/ParsableByteArray;I)I
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    .line 974
    invoke-virtual {v2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 975
    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 976
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 978
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    .line 979
    iget-object v4, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    .line 980
    iget-object v5, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->header:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    invoke-static {v5}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    .line 982
    iget-object v6, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    aput v7, v6, p1

    .line 983
    iget-object v6, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v7, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v7, v6, p1

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_39

    .line 985
    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_39
    and-int/lit8 v6, v1, 0x4

    const/4 v8, 0x1

    if-eqz v6, :cond_40

    move v6, v8

    goto :goto_41

    :cond_40
    const/4 v6, 0x0

    .line 989
    :goto_41
    iget v9, v5, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v6, :cond_49

    .line 991
    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v9

    :cond_49
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4f

    move v10, v8

    goto :goto_50

    :cond_4f
    const/4 v10, 0x0

    :goto_50
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_56

    move v11, v8

    goto :goto_57

    :cond_56
    const/4 v11, 0x0

    :goto_57
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5d

    move v12, v8

    goto :goto_5e

    :cond_5d
    const/4 v12, 0x0

    :goto_5e
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_64

    move v1, v8

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    .line 1006
    :goto_65
    iget-object v13, v3, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    if-eqz v13, :cond_80

    array-length v7, v13

    if-ne v7, v8, :cond_80

    aget-wide v17, v13, v16

    cmp-long v7, v17, v14

    if-nez v7, :cond_80

    .line 1009
    iget-object v7, v3, Landroid/media/internal/exo/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v7}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    aget-wide v14, v7, v16

    .line 1012
    :cond_80
    iget-object v7, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 1013
    iget-object v13, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    move/from16 v17, v8

    .line 1014
    iget-object v8, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move/from16 v18, v1

    .line 1016
    iget v1, v3, Landroid/media/internal/exo/extractor/mp4/Track;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_96

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_96

    move/from16 v1, v17

    goto :goto_98

    :cond_96
    move/from16 v1, v16

    .line 1020
    :goto_98
    iget-object v2, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunLength:[I

    aget v2, v2, p1

    add-int v2, p4, v2

    move/from16 v25, v6

    move-object/from16 v26, v7

    .line 1021
    iget-wide v6, v3, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    move-wide/from16 v23, v6

    .line 1022
    iget-wide v6, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move/from16 v3, p4

    :goto_aa
    if-ge v3, v2, :cond_133

    if-eqz v10, :cond_b5

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v19

    move/from16 p2, v1

    goto :goto_bb

    :cond_b5
    move/from16 p2, v1

    iget v1, v5, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v19, v1

    :goto_bb
    invoke-static/range {v19 .. v19}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v1

    if-eqz v11, :cond_c8

    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v19

    move/from16 p1, v2

    goto :goto_ce

    :cond_c8
    move/from16 p1, v2

    iget v2, v5, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v19, v2

    :goto_ce
    invoke-static/range {v19 .. v19}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v2

    if-eqz v12, :cond_dd

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v19

    move/from16 p4, v2

    move/from16 v2, v19

    goto :goto_e9

    :cond_dd
    if-nez v3, :cond_e5

    if-eqz v25, :cond_e5

    move/from16 p4, v2

    move v2, v9

    goto :goto_e9

    :cond_e5
    move/from16 p4, v2

    .line 1032
    iget v2, v5, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_e9
    if-eqz v18, :cond_f6

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v19

    move/from16 v27, v2

    move/from16 v2, v19

    :goto_f3
    move/from16 v28, v3

    goto :goto_fb

    :cond_f6
    move/from16 v27, v2

    move/from16 v2, v16

    goto :goto_f3

    :goto_fb
    int-to-long v2, v2

    add-long/2addr v2, v6

    sub-long v19, v2, v14

    const-wide/32 v21, 0xf4240

    .line 1044
    invoke-static/range {v19 .. v24}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    aput-wide v2, v13, v28

    move-wide/from16 v19, v2

    .line 1045
    iget-boolean v2, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v2, :cond_116

    .line 1046
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-wide v2, v2, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long v2, v19, v2

    aput-wide v2, v13, v28

    .line 1048
    :cond_116
    aput p4, v26, v28

    shr-int/lit8 v2, v27, 0x10

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_125

    if-eqz p2, :cond_122

    if-nez v28, :cond_125

    :cond_122
    move/from16 v2, v17

    goto :goto_127

    :cond_125
    move/from16 v2, v16

    .line 1049
    :goto_127
    aput-boolean v2, v8, v28

    int-to-long v1, v1

    add-long/2addr v6, v1

    add-int/lit8 v3, v28, 0x1

    move/from16 v2, p1

    move/from16 v1, p2

    goto/16 :goto_aa

    :cond_133
    move/from16 p1, v2

    .line 1053
    iput-wide v6, v4, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    return p1
.end method

.method private static blacklist parseTruns(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 790
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 791
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_a
    const v5, 0x7472756e

    if-ge v2, v0, :cond_2c

    .line 793
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    .line 794
    iget v7, v6, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    if-ne v7, v5, :cond_29

    .line 795
    iget-object v5, v6, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v6, 0xc

    .line 796
    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 797
    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    if-lez v5, :cond_29

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 804
    :cond_2c
    iput v1, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 805
    iput v1, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 806
    iput v1, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 807
    iget-object v2, p1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v3, v4}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->initTables(II)V

    move v2, v1

    move v3, v2

    :goto_39
    if-ge v1, v0, :cond_52

    .line 812
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    .line 813
    iget v6, v4, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    if-ne v6, v5, :cond_4f

    add-int/lit8 v6, v2, 0x1

    .line 814
    iget-object v4, v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 815
    invoke-static {p1, v2, p2, v4, v3}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILandroid/media/internal/exo/util/ParsableByteArray;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_52
    return-void
.end method

.method private static blacklist parseUuid(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/mp4/TrackFragment;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1068
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 1069
    invoke-virtual {p0, p2, v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1072
    sget-object v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_14

    return-void

    .line 1079
    :cond_14
    invoke-static {p0, v1, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroid/media/internal/exo/util/ParsableByteArray;ILandroid/media/internal/exo/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private blacklist processAtomEnded(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 460
    :goto_0
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_22

    .line 461
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 463
    :cond_22
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private blacklist readAtomHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2c

    .line 354
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_15

    return v2

    .line 357
    :cond_15
    iput v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 358
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 359
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 360
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 363
    :cond_2c
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4b

    .line 366
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 367
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 368
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_7c

    :cond_4b
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_7c

    .line 372
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6d

    .line 373
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 374
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_6d
    cmp-long v0, v4, v6

    if-eqz v0, :cond_7c

    .line 377
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 381
    :cond_7c
    :goto_7c
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_155

    .line 386
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 387
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_99

    if-ne v0, v6, :cond_ab

    .line 388
    :cond_99
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_ab

    .line 390
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance v8, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    iget-wide v9, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v8, v9, v10, v4, v5}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v8}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 391
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 395
    :cond_ab
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v7, :cond_cb

    .line 397
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v7, v2

    :goto_b6
    if-ge v7, v0, :cond_cb

    .line 399
    iget-object v8, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    .line 400
    iput-wide v4, v8, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->atomPosition:J

    .line 401
    iput-wide v4, v8, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 402
    iput-wide v4, v8, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    .line 406
    :cond_cb
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_db

    .line 407
    iput-object v7, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 408
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    const/4 p1, 0x2

    .line 409
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v3

    .line 413
    :cond_db
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 414
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 415
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v4, v0, v1}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 416
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_104

    .line 417
    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_14d

    .line 420
    :cond_104
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_14d

    .line 422
    :cond_108
    iget p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_143

    .line 423
    iget p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v1, :cond_13c

    .line 427
    iget-wide v6, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_135

    .line 431
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 432
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 434
    iput v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_14d

    .line 428
    :cond_135
    const-string p0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 424
    :cond_13c
    const-string p0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 436
    :cond_143
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_14e

    .line 440
    iput-object v7, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 441
    iput v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    :goto_14d
    return v3

    .line 437
    :cond_14e
    const-string p0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 382
    :cond_155
    const-string p0, "Atom size less than header length (unsupported)."

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readAtomPayload(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v0

    iget v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v0, v1

    .line 449
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroid/media/internal/exo/util/ParsableByteArray;

    if-eqz v1, :cond_22

    .line 451
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 452
    new-instance v0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v0, v2, v1}, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;-><init>(ILandroid/media/internal/exo/util/ParsableByteArray;)V

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;J)V

    goto :goto_25

    .line 454
    :cond_22
    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 456
    :goto_25
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    return-void
.end method

.method private blacklist readEncryptionData(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-object v5, v1

    :goto_e
    if-ge v4, v0, :cond_31

    .line 1270
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v6, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    .line 1271
    iget-boolean v7, v6, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_2e

    iget-wide v6, v6, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_2e

    .line 1274
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v2, v6

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_31
    if-nez v5, :cond_37

    const/4 p1, 0x3

    .line 1278
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return-void

    .line 1281
    :cond_37
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int p0, v2

    if-ltz p0, :cond_48

    .line 1286
    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 1287
    iget-object p0, v5, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->fillEncryptionData(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return-void

    .line 1283
    :cond_48
    const-string p0, "Offset to encryption data was negative."

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readSample(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1306
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_43

    .line 1308
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->getNextTrackBundle(Landroid/util/SparseArray;)Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 1312
    iget-wide v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    if-ltz v2, :cond_23

    .line 1317
    invoke-interface {v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 1318
    invoke-direct {v0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return v4

    .line 1314
    :cond_23
    const-string v0, "Offset to end of mdat was negative."

    invoke-static {v0, v3}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    .line 1322
    :cond_2a
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v5

    .line 1324
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    if-gez v5, :cond_3e

    .line 1327
    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    invoke-static {v5, v6}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 1330
    :cond_3e
    invoke-interface {v1, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 1331
    iput-object v2, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1333
    :cond_43
    iget v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_b7

    .line 1334
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleSize()I

    move-result v5

    iput v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1336
    iget v9, v2, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v10, v2, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v9, v10, :cond_67

    .line 1337
    invoke-interface {v1, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 1338
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->skipSampleEncryptionData()V

    .line 1339
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_64

    .line 1340
    iput-object v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1342
    :cond_64
    iput v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v8

    .line 1346
    :cond_67
    iget-object v9, v2, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    iget v9, v9, Landroid/media/internal/exo/extractor/mp4/Track;->sampleTransformation:I

    if-ne v9, v8, :cond_77

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    .line 1348
    iput v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1349
    invoke-interface {v1, v9}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 1352
    :cond_77
    iget-object v5, v2, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    iget-object v5, v5, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    iget-object v5, v5, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1354
    iget v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v9, 0x7

    .line 1355
    invoke-virtual {v2, v5, v9}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1356
    iget v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v10, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v5, v10}, Landroid/media/internal/exo/audio/Ac4Util;->getAc4SampleHeader(ILandroid/media/internal/exo/util/ParsableByteArray;)V

    .line 1357
    iget-object v5, v2, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v10, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v5, v10, v9}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 1358
    iget v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_ac

    .line 1360
    :cond_a4
    iget v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1361
    invoke-virtual {v2, v5, v4}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1363
    :goto_ac
    iget v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v9, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1364
    iput v7, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1365
    iput v4, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1368
    :cond_b7
    iget-object v5, v2, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    .line 1369
    iget-object v9, v2, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 1370
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSamplePresentationTimeUs()J

    move-result-wide v10

    .line 1371
    iget-object v12, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    if-eqz v12, :cond_c9

    .line 1372
    invoke-virtual {v12, v10, v11}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v10

    .line 1374
    :cond_c9
    iget v12, v5, Landroid/media/internal/exo/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v12, :cond_19c

    .line 1377
    iget-object v12, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v12}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v12

    .line 1378
    aput-byte v4, v12, v4

    .line 1379
    aput-byte v4, v12, v8

    const/4 v13, 0x2

    .line 1380
    aput-byte v4, v12, v13

    .line 1381
    iget v13, v5, Landroid/media/internal/exo/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/lit8 v14, v13, 0x1

    rsub-int/lit8 v13, v13, 0x4

    .line 1386
    :goto_e0
    iget v15, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v15, v6, :cond_199

    .line 1387
    iget v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_137

    .line 1389
    invoke-interface {v1, v12, v13, v14}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1390
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1391
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lt v6, v8, :cond_130

    add-int/lit8 v6, v6, -0x1

    .line 1396
    iput v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1398
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1399
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v9, v6, v7}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 1401
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v9, v6, v8}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 1402
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v6, v6

    if-lez v6, :cond_120

    iget-object v6, v5, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    iget-object v6, v6, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v15, v12, v7

    .line 1404
    invoke-static {v6, v15}, Landroid/media/internal/exo/util/NalUnitUtil;->isNalUnitSei(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_120

    move v6, v8

    goto :goto_121

    :cond_120
    move v6, v4

    :goto_121
    iput-boolean v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1405
    iget v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1406
    iget v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v6, v13

    iput v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v6, 0x3

    goto :goto_e0

    .line 1393
    :cond_130
    const-string v0, "Invalid NAL length"

    invoke-static {v0, v3}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    .line 1409
    :cond_137
    iget-boolean v15, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v15, :cond_182

    .line 1411
    iget-object v15, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v15, v6}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 1412
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget v15, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v1, v6, v4, v15}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1413
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    iget v15, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v9, v6, v15}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 1414
    iget v6, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1416
    iget-object v15, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1417
    invoke-virtual {v15}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v15

    iget-object v7, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v7

    invoke-static {v15, v7}, Landroid/media/internal/exo/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v7

    .line 1419
    iget-object v15, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    move/from16 v16, v8

    iget-object v8, v5, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    iget-object v8, v8, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/hevc"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v15, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1420
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 1421
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v7, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v10, v11, v3, v7}, Landroid/media/internal/exo/extractor/CeaUtil;->consume(JLandroid/media/internal/exo/util/ParsableByteArray;[Landroid/media/internal/exo/extractor/TrackOutput;)V

    goto :goto_188

    :cond_182
    move/from16 v16, v8

    .line 1424
    invoke-interface {v9, v1, v6, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I

    move-result v6

    .line 1426
    :goto_188
    iget v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1427
    iget v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    move/from16 v8, v16

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    goto/16 :goto_e0

    :cond_199
    move/from16 v16, v8

    goto :goto_1af

    :cond_19c
    move/from16 v16, v8

    .line 1431
    :goto_19e
    iget v3, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v5, :cond_1af

    sub-int/2addr v5, v3

    .line 1432
    invoke-interface {v9, v1, v5, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I

    move-result v3

    .line 1433
    iget v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v3

    iput v5, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_19e

    .line 1437
    :cond_1af
    :goto_1af
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v12

    .line 1441
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_1bd

    .line 1443
    iget-object v1, v1, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    move-object v15, v1

    goto :goto_1be

    :cond_1bd
    const/4 v15, 0x0

    .line 1446
    :goto_1be
    iget v13, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v15}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 1449
    invoke-direct {v0, v10, v11}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1450
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_1d0

    const/4 v1, 0x0

    .line 1451
    iput-object v1, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_1d0
    const/4 v1, 0x3

    .line 1453
    iput v1, v0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v16
.end method

.method private static blacklist shouldParseContainerAtom(I)Z
    .registers 2

    .line 0
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_30

    const v0, 0x7472616b

    if-eq p0, v0, :cond_30

    const v0, 0x6d646961

    if-eq p0, v0, :cond_30

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_30

    const v0, 0x7374626c

    if-eq p0, v0, :cond_30

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_30

    const v0, 0x74726166

    if-eq p0, v0, :cond_30

    const v0, 0x6d766578

    if-eq p0, v0, :cond_30

    const v0, 0x65647473

    if-ne p0, v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    return p0

    :cond_30
    :goto_30
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist shouldParseLeafAtom(I)Z
    .registers 2

    .line 0
    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_8f

    const v0, 0x6d646864

    if-eq p0, v0, :cond_8f

    const v0, 0x6d766864

    if-eq p0, v0, :cond_8f

    const v0, 0x73696478

    if-eq p0, v0, :cond_8f

    const v0, 0x73747364

    if-eq p0, v0, :cond_8f

    const v0, 0x73747473

    if-eq p0, v0, :cond_8f

    const v0, 0x63747473

    if-eq p0, v0, :cond_8f

    const v0, 0x73747363

    if-eq p0, v0, :cond_8f

    const v0, 0x7374737a

    if-eq p0, v0, :cond_8f

    const v0, 0x73747a32

    if-eq p0, v0, :cond_8f

    const v0, 0x7374636f

    if-eq p0, v0, :cond_8f

    const v0, 0x636f3634

    if-eq p0, v0, :cond_8f

    const v0, 0x73747373

    if-eq p0, v0, :cond_8f

    const v0, 0x74666474

    if-eq p0, v0, :cond_8f

    const v0, 0x74666864

    if-eq p0, v0, :cond_8f

    const v0, 0x746b6864

    if-eq p0, v0, :cond_8f

    const v0, 0x74726578

    if-eq p0, v0, :cond_8f

    const v0, 0x7472756e

    if-eq p0, v0, :cond_8f

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_8f

    const v0, 0x7361697a

    if-eq p0, v0, :cond_8f

    const v0, 0x7361696f

    if-eq p0, v0, :cond_8f

    const v0, 0x73656e63

    if-eq p0, v0, :cond_8f

    const v0, 0x75756964

    if-eq p0, v0, :cond_8f

    const v0, 0x73626770

    if-eq p0, v0, :cond_8f

    const v0, 0x73677064

    if-eq p0, v0, :cond_8f

    const v0, 0x656c7374

    if-eq p0, v0, :cond_8f

    const v0, 0x6d656864

    if-eq p0, v0, :cond_8f

    const v0, 0x656d7367

    if-ne p0, v0, :cond_8d

    goto :goto_8f

    :cond_8d
    const/4 p0, 0x0

    return p0

    :cond_8f
    :goto_8f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 14

    .line 280
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    .line 281
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 282
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->initExtraTracks()V

    .line 283
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroid/media/internal/exo/extractor/mp4/Track;

    if-eqz v0, :cond_39

    .line 284
    new-instance v1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v0, Landroid/media/internal/exo/extractor/mp4/Track;->type:I

    const/4 v2, 0x0

    .line 286
    invoke-interface {p1, v2, v0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    new-instance v3, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroid/media/internal/exo/extractor/mp4/Track;

    new-array v5, v2, [J

    new-array v6, v2, [I

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;-><init>(Landroid/media/internal/exo/extractor/mp4/Track;[J[II[J[IJ)V

    new-instance v0, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-direct {v1, p1, v3, v0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;)V

    .line 300
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    :cond_39
    return-void
.end method

.method protected blacklist modifyTrack(Landroid/media/internal/exo/extractor/mp4/Track;)Landroid/media/internal/exo/extractor/mp4/Track;
    .registers 2

    .line 0
    return-object p1
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    :cond_0
    :goto_0
    iget p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    .line 339
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->readSample(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 336
    :cond_12
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    goto :goto_0

    .line 333
    :cond_16
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    goto :goto_0

    .line 328
    :cond_1a
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist seek(JJ)V
    .registers 7

    .line 307
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_8
    if-ge v0, p1, :cond_18

    .line 309
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 311
    :cond_18
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 312
    iput p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 313
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 314
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 315
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-static {p1}, Landroid/media/internal/exo/extractor/mp4/Sniffer;->sniffFragmented(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
