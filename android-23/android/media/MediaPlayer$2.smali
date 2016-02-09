.class Landroid/media/MediaPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->setSubtitleAnchor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "val$thread"    # Landroid/os/HandlerThread;

    #@0
    .prologue
    .line 2158
    iput-object p1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #@2
    iput-object p2, p0, Landroid/media/MediaPlayer$2;->val$thread:Landroid/os/HandlerThread;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 2161
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    .line 2162
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #@6
    new-instance v2, Landroid/media/SubtitleController;

    #@8
    iget-object v3, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #@a
    invoke-static {v3}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #@10
    invoke-direct {v2, v0, v3, v4}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    #@13
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->-set0(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;

    #@16
    .line 2163
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #@18
    invoke-static {v1}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@1b
    move-result-object v1

    #@1c
    new-instance v2, Landroid/media/MediaPlayer$2$1;

    #@1e
    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$2$1;-><init>(Landroid/media/MediaPlayer$2;)V

    #@21
    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    #@24
    .line 2173
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->val$thread:Landroid/os/HandlerThread;

    #@26
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    #@2d
    .line 2160
    return-void
.end method
