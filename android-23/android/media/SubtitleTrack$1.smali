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
.field final synthetic this$0:Landroid/media/SubtitleTrack;

.field final synthetic val$thenMs:J

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/SubtitleTrack;
    .param p2, "val$track"    # Landroid/media/SubtitleTrack;
    .param p3, "val$thenMs"    # J

    #@0
    .prologue
    .line 346
    iput-object p1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    #@2
    iput-object p2, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    #@4
    iput-wide p3, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 352
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    #@2
    monitor-enter v1

    #@3
    .line 353
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v0, v2}, Landroid/media/SubtitleTrack;->-set0(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@9
    .line 354
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    #@b
    iget-wide v2, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    #@d
    const/4 v4, 0x1

    #@e
    invoke-virtual {v0, v4, v2, v3}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    #@11
    .line 355
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    #@13
    iget-object v2, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    #@15
    iget-object v2, v2, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@17
    invoke-virtual {v0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 348
    return-void

    #@1c
    .line 352
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method
