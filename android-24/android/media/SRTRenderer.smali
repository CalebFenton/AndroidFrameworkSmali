.class public Landroid/media/SRTRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "SRTRenderer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mRender:Z

.field private mRenderingWidget:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 29
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@4
    .line 28
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mEventHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/media/SRTRenderer;->mContext:Landroid/content/Context;

    #@5
    .line 34
    if-nez p2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    iput-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    #@a
    .line 35
    iput-object p2, p0, Landroid/media/SRTRenderer;->mEventHandler:Landroid/os/Handler;

    #@c
    .line 32
    return-void

    #@d
    .line 34
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 53
    new-instance v0, Landroid/media/WebVttRenderingWidget;

    #@a
    iget-object v1, p0, Landroid/media/SRTRenderer;->mContext:Landroid/content/Context;

    #@c
    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;)V

    #@f
    iput-object v0, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    #@11
    .line 56
    :cond_0
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 57
    new-instance v0, Landroid/media/SRTTrack;

    #@17
    iget-object v1, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    #@19
    invoke-direct {v0, v1, p1}, Landroid/media/SRTTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    #@1c
    return-object v0

    #@1d
    .line 59
    :cond_1
    new-instance v0, Landroid/media/SRTTrack;

    #@1f
    iget-object v1, p0, Landroid/media/SRTRenderer;->mEventHandler:Landroid/os/Handler;

    #@21
    invoke-direct {v0, v1, p1}, Landroid/media/SRTTrack;-><init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V

    #@24
    return-object v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 40
    const-string/jumbo v2, "mime"

    #@5
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_3

    #@b
    .line 41
    const-string/jumbo v2, "mime"

    #@e
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 42
    const-string/jumbo v3, "application/x-subrip"

    #@15
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 43
    return v1

    #@1c
    .line 45
    :cond_0
    iget-boolean v3, p0, Landroid/media/SRTRenderer;->mRender:Z

    #@1e
    const-string/jumbo v2, "is-timed-text"

    #@21
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_1

    #@27
    move v2, v0

    #@28
    :goto_0
    if-ne v3, v2, :cond_2

    #@2a
    :goto_1
    return v0

    #@2b
    :cond_1
    move v2, v1

    #@2c
    goto :goto_0

    #@2d
    :cond_2
    move v0, v1

    #@2e
    goto :goto_1

    #@2f
    .line 47
    :cond_3
    return v1
.end method
