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
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;

.field final synthetic blacklist val$timeProvider:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$TimeProvider;Landroid/os/HandlerThread;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2849
    iput-object p1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$2;->val$timeProvider:Landroid/media/MediaPlayer$TimeProvider;

    iput-object p3, p0, Landroid/media/MediaPlayer$2;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 2852
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 2853
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/media/SubtitleController;

    iget-object v3, p0, Landroid/media/MediaPlayer$2;->val$timeProvider:Landroid/media/MediaPlayer$TimeProvider;

    iget-object v4, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {v2, v0, v3, v4}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->-$$Nest$fputmSubtitleController(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)V

    .line 2855
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v1

    new-instance v2, Landroid/media/MediaPlayer$2$1;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$2$1;-><init>(Landroid/media/MediaPlayer$2;)V

    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2865
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 2866
    return-void
.end method
