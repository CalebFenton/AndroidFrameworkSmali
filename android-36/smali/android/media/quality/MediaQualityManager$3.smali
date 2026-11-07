.class Landroid/media/quality/MediaQualityManager$3;
.super Landroid/media/quality/IAmbientBacklightCallback$Stub;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager;-><init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/quality/MediaQualityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$3;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-direct {p0}, Landroid/media/quality/IAmbientBacklightCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/media/quality/AmbientBacklightEvent;

    .line 209
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$3;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmAbLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 210
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$3;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmAbCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    .line 211
    .local v2, "record":Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->postAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V

    .line 212
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;
    goto :goto_11

    .line 213
    :cond_21
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
