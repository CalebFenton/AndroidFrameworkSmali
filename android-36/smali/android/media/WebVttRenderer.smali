.class public Landroid/media/WebVttRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "WebVttRenderer.java"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mRenderingWidget:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/media/WebVttRenderer;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public greylist-max-o createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .registers 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 63
    iget-object v0, p0, Landroid/media/WebVttRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-nez v0, :cond_d

    .line 64
    new-instance v0, Landroid/media/WebVttRenderingWidget;

    iget-object v1, p0, Landroid/media/WebVttRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/WebVttRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 67
    :cond_d
    new-instance v0, Landroid/media/WebVttTrack;

    iget-object v1, p0, Landroid/media/WebVttRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public greylist-max-o supports(Landroid/media/MediaFormat;)Z
    .registers 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 55
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 56
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 58
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
