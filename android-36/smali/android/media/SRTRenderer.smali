.class public Landroid/media/SRTRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "SRTRenderer.java"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mEventHandler:Landroid/os/Handler;

.field private final greylist-max-o mRender:Z

.field private greylist-max-o mRenderingWidget:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 30
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mEventHandler"    # Landroid/os/Handler;

    .line 32
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/media/SRTRenderer;->mContext:Landroid/content/Context;

    .line 34
    if-nez p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    .line 35
    iput-object p2, p0, Landroid/media/SRTRenderer;->mEventHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public greylist-max-o createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .registers 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 52
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-nez v0, :cond_11

    .line 53
    new-instance v0, Landroid/media/WebVttRenderingWidget;

    iget-object v1, p0, Landroid/media/SRTRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 56
    :cond_11
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    if-eqz v0, :cond_1d

    .line 57
    new-instance v0, Landroid/media/SRTTrack;

    iget-object v1, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/SRTTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    return-object v0

    .line 59
    :cond_1d
    new-instance v0, Landroid/media/SRTTrack;

    iget-object v1, p0, Landroid/media/SRTRenderer;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Landroid/media/SRTTrack;-><init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public greylist-max-o supports(Landroid/media/MediaFormat;)Z
    .registers 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 40
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 41
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 43
    return v2

    .line 45
    :cond_16
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    const-string v1, "is-timed-text"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_23

    move v1, v3

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    if-ne v0, v1, :cond_27

    move v2, v3

    :cond_27
    return v2

    .line 47
    :cond_28
    return v2
.end method
