.class Landroid/media/MediaPlayer$2$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$2;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer$2;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaPlayer$2;

    #@0
    .prologue
    .line 2163
    iput-object p1, p0, Landroid/media/MediaPlayer$2$1;->this$1:Landroid/media/MediaPlayer$2;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 2170
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 0
    .param p1, "subtitleWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    #@0
    .prologue
    .line 2165
    return-void
.end method
