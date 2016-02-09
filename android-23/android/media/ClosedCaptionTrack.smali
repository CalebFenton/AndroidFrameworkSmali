.class Landroid/media/ClosedCaptionTrack;
.super Landroid/media/SubtitleTrack;
.source "ClosedCaptionRenderer.java"


# instance fields
.field private final mCCParser:Landroid/media/CCParser;

.field private final mRenderingWidget:Landroid/media/ClosedCaptionWidget;


# direct methods
.method constructor <init>(Landroid/media/ClosedCaptionWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/ClosedCaptionWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    #@3
    .line 87
    iput-object p1, p0, Landroid/media/ClosedCaptionTrack;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    #@5
    .line 88
    new-instance v0, Landroid/media/CCParser;

    #@7
    invoke-direct {v0, p1}, Landroid/media/CCParser;-><init>(Landroid/media/CCParser$DisplayListener;)V

    #@a
    iput-object v0, p0, Landroid/media/ClosedCaptionTrack;->mCCParser:Landroid/media/CCParser;

    #@c
    .line 84
    return-void
.end method


# virtual methods
.method public getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/ClosedCaptionTrack;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    #@2
    return-object v0
.end method

.method public onData([BZJ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/media/ClosedCaptionTrack;->mCCParser:Landroid/media/CCParser;

    #@2
    invoke-virtual {v0, p1}, Landroid/media/CCParser;->parse([B)V

    #@5
    .line 92
    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    return-void
.end method
