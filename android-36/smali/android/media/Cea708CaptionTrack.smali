.class Landroid/media/Cea708CaptionTrack;
.super Landroid/media/SubtitleTrack;
.source "Cea708CaptionRenderer.java"


# instance fields
.field private final blacklist mCCParser:Landroid/media/Cea708CCParser;

.field private final blacklist mRenderingWidget:Landroid/media/Cea708CCWidget;


# direct methods
.method constructor blacklist <init>(Landroid/media/Cea708CCWidget;Landroid/media/MediaFormat;)V
    .registers 5
    .param p1, "renderingWidget"    # Landroid/media/Cea708CCWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 95
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 97
    iput-object p1, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    .line 98
    new-instance v0, Landroid/media/Cea708CCParser;

    iget-object v1, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;-><init>(Landroid/media/Cea708CCParser$DisplayListener;)V

    iput-object v0, p0, Landroid/media/Cea708CaptionTrack;->mCCParser:Landroid/media/Cea708CCParser;

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    return-object v0
.end method

.method public blacklist onData([BZJ)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .line 103
    iget-object v0, p0, Landroid/media/Cea708CaptionTrack;->mCCParser:Landroid/media/Cea708CCParser;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCParser;->parse([B)V

    .line 104
    return-void
.end method

.method public blacklist updateView(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    return-void
.end method
