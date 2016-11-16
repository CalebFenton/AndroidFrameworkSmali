.class public Landroid/media/Cea708CaptionRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "Cea708CaptionRenderer.java"


# instance fields
.field private mCCWidget:Landroid/media/Cea708CCWidget;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Landroid/media/Cea708CaptionRenderer;->mContext:Landroid/content/Context;

    #@5
    .line 63
    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 78
    const-string/jumbo v1, "mime"

    #@3
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 79
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "text/cea-708"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 80
    iget-object v1, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    #@12
    if-nez v1, :cond_0

    #@14
    .line 81
    new-instance v1, Landroid/media/Cea708CCWidget;

    #@16
    iget-object v2, p0, Landroid/media/Cea708CaptionRenderer;->mContext:Landroid/content/Context;

    #@18
    invoke-direct {v1, v2}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;)V

    #@1b
    iput-object v1, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    #@1d
    .line 83
    :cond_0
    new-instance v1, Landroid/media/Cea708CaptionTrack;

    #@1f
    iget-object v2, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    #@21
    invoke-direct {v1, v2, p1}, Landroid/media/Cea708CaptionTrack;-><init>(Landroid/media/Cea708CCWidget;Landroid/media/MediaFormat;)V

    #@24
    return-object v1

    #@25
    .line 85
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "No matching format: "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@42
    throw v1
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 69
    const-string/jumbo v1, "mime"

    #@3
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 70
    const-string/jumbo v1, "mime"

    #@c
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 71
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "text/cea-708"

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 73
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method
