.class public Landroid/media/ClosedCaptionRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "ClosedCaptionRenderer.java"


# instance fields
.field private greylist-max-o mCCWidget:Landroid/media/Cea608CCWidget;

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/media/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public greylist-max-o createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .registers 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 69
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 71
    iget-object v1, p0, Landroid/media/ClosedCaptionRenderer;->mCCWidget:Landroid/media/Cea608CCWidget;

    if-nez v1, :cond_1b

    .line 72
    new-instance v1, Landroid/media/Cea608CCWidget;

    iget-object v2, p0, Landroid/media/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/media/Cea608CCWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/ClosedCaptionRenderer;->mCCWidget:Landroid/media/Cea608CCWidget;

    .line 74
    :cond_1b
    new-instance v1, Landroid/media/Cea608CaptionTrack;

    iget-object v2, p0, Landroid/media/ClosedCaptionRenderer;->mCCWidget:Landroid/media/Cea608CCWidget;

    invoke-direct {v1, v2, p1}, Landroid/media/Cea608CaptionTrack;-><init>(Landroid/media/Cea608CCWidget;Landroid/media/MediaFormat;)V

    return-object v1

    .line 76
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No matching format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 62
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 64
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
