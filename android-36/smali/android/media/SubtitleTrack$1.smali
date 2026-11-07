.class Landroid/media/SubtitleTrack$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SubtitleTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/SubtitleTrack;

.field final synthetic blacklist val$thenMs:J

.field final synthetic blacklist val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor blacklist <init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/SubtitleTrack;
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

    .line 349
    iput-object p1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iput-object p2, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    iput-wide p3, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 355
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/SubtitleTrack;->-$$Nest$fputmRunnable(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)V

    .line 357
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 358
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iget-object v2, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iget-object v2, v2, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
