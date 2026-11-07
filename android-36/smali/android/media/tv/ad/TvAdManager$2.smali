.class Landroid/media/tv/ad/TvAdManager$2;
.super Landroid/media/tv/ad/ITvAdManagerCallback$Stub;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdManager;-><init>(Landroid/media/tv/ad/ITvAdManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 454
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAdServiceAdded(Ljava/lang/String;)V
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 457
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmLock(Landroid/media/tv/ad/TvAdManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 458
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/ad/TvAdManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    .line 459
    .local v2, "record":Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->postAdServiceAdded(Ljava/lang/String;)V

    .line 460
    .end local v2    # "record":Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
    goto :goto_11

    .line 461
    :cond_21
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onAdServiceRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 466
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmLock(Landroid/media/tv/ad/TvAdManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 467
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/ad/TvAdManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    .line 468
    .local v2, "record":Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->postAdServiceRemoved(Ljava/lang/String;)V

    .line 469
    .end local v2    # "record":Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
    goto :goto_11

    .line 470
    :cond_21
    monitor-exit v0

    .line 471
    return-void

    .line 470
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onAdServiceUpdated(Ljava/lang/String;)V
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 475
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmLock(Landroid/media/tv/ad/TvAdManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 476
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$2;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/ad/TvAdManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    .line 477
    .local v2, "record":Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->postAdServiceUpdated(Ljava/lang/String;)V

    .line 478
    .end local v2    # "record":Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
    goto :goto_11

    .line 479
    :cond_21
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
