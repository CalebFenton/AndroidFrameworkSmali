.class public Landroid/media/TtmlRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "TtmlRenderer.java"


# static fields
.field private static final greylist-max-o MEDIA_MIMETYPE_TEXT_TTML:Ljava/lang/String; = "application/ttml+xml"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mRenderingWidget:Landroid/media/TtmlRenderingWidget;


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/media/TtmlRenderer;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public greylist-max-o createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .registers 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 68
    iget-object v0, p0, Landroid/media/TtmlRenderer;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    if-nez v0, :cond_d

    .line 69
    new-instance v0, Landroid/media/TtmlRenderingWidget;

    iget-object v1, p0, Landroid/media/TtmlRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/TtmlRenderer;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    .line 71
    :cond_d
    new-instance v0, Landroid/media/TtmlTrack;

    iget-object v1, p0, Landroid/media/TtmlRenderer;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/TtmlTrack;-><init>(Landroid/media/TtmlRenderingWidget;Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public greylist-max-o supports(Landroid/media/MediaFormat;)Z
    .registers 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 60
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 61
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/ttml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 63
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
