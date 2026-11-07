.class public final Landroid/media/internal/exo/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field public final blacklist durationUs:J

.field public final blacklist editListDurations:[J

.field public final blacklist editListMediaTimes:[J

.field public final blacklist format:Landroid/media/internal/exo/Format;

.field public final blacklist id:I

.field public final blacklist movieTimescale:J

.field public final blacklist nalUnitLengthFieldLength:I

.field private final blacklist sampleDescriptionEncryptionBoxes:[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

.field public final blacklist sampleTransformation:I

.field public final blacklist timescale:J

.field public final blacklist type:I


# direct methods
.method public constructor blacklist <init>(IIJJJLandroid/media/internal/exo/Format;I[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .registers 15

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/Track;->id:I

    .line 95
    iput p2, p0, Landroid/media/internal/exo/extractor/mp4/Track;->type:I

    .line 96
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    .line 97
    iput-wide p5, p0, Landroid/media/internal/exo/extractor/mp4/Track;->movieTimescale:J

    .line 98
    iput-wide p7, p0, Landroid/media/internal/exo/extractor/mp4/Track;->durationUs:J

    .line 99
    iput-object p9, p0, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    .line 100
    iput p10, p0, Landroid/media/internal/exo/extractor/mp4/Track;->sampleTransformation:I

    .line 101
    iput-object p11, p0, Landroid/media/internal/exo/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    .line 102
    iput p12, p0, Landroid/media/internal/exo/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 103
    iput-object p13, p0, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    .line 104
    iput-object p14, p0, Landroid/media/internal/exo/extractor/mp4/Track;->editListMediaTimes:[J

    return-void
.end method


# virtual methods
.method public blacklist getSampleDescriptionEncryptionBox(I)Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;
    .registers 2

    .line 116
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_6
    aget-object p0, p0, p1

    return-object p0
.end method
