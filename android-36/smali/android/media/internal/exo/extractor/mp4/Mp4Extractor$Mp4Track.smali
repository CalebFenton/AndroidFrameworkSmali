.class final Landroid/media/internal/exo/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field public blacklist sampleIndex:I

.field public final blacklist sampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

.field public final blacklist track:Landroid/media/internal/exo/extractor/mp4/Track;

.field public final blacklist trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

.field public final blacklist trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/mp4/Track;Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;Landroid/media/internal/exo/extractor/TrackOutput;)V
    .registers 4

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    .line 931
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    .line 932
    iput-object p3, p0, Landroid/media/internal/exo/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 934
    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    iget-object p1, p1, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 935
    new-instance p1, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;-><init>()V

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 936
    :goto_1c
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    return-void
.end method
