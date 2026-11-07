.class Landroid/media/tv/ad/TvAdManager$1;
.super Landroid/media/tv/ad/ITvAdClient$Stub;
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

    .line 331
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLayoutSurface(IIIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "seq"    # I

    .line 368
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 369
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 370
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 371
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    monitor-exit v0

    return-void

    .line 374
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postLayoutSurface(IIII)V

    .line 375
    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestCurrentChannelUri(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 392
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 393
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 394
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 395
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    monitor-exit v0

    return-void

    .line 398
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentChannelUri()V

    .line 399
    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestCurrentTvInputId(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 416
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 417
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 418
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 419
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v0

    return-void

    .line 422
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentTvInputId()V

    .line 423
    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestCurrentVideoBounds(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 380
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 381
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 382
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 383
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit v0

    return-void

    .line 386
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentVideoBounds()V

    .line 387
    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "seq"    # I

    .line 429
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 430
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 431
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 432
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    monitor-exit v0

    return-void

    .line 435
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 436
    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    monitor-exit v0

    .line 437
    return-void

    .line 436
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestTrackInfoList(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 404
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 405
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 406
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 407
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v0

    return-void

    .line 410
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestTrackInfoList()V

    .line 411
    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 16
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "channel"    # Landroid/view/InputChannel;
    .param p4, "seq"    # I

    .line 335
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 336
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_65

    .line 337
    .local v0, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    if-nez v0, :cond_34

    .line 338
    :try_start_15
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    return-void

    .line 349
    .end local v0    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    :catchall_2f
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    goto :goto_69

    .line 341
    .restart local v0    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    :cond_34
    const/4 v2, 0x0

    .line 342
    .local v2, "session":Landroid/media/tv/ad/TvAdManager$Session;
    if-eqz p2, :cond_54

    .line 343
    :try_start_37
    new-instance v3, Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v4, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v4}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmService(Landroid/media/tv/ad/TvAdManager;)Landroid/media/tv/ad/ITvAdManager;

    move-result-object v6

    iget-object v4, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v4}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmUserId(Landroid/media/tv/ad/TvAdManager;)I

    move-result v7

    iget-object v4, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v4}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v9
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_65

    const/4 v10, 0x0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "channel":Landroid/view/InputChannel;
    .end local p4    # "seq":I
    .local v4, "token":Landroid/os/IBinder;
    .local v5, "channel":Landroid/view/InputChannel;
    .local v8, "seq":I
    :try_start_4f
    invoke-direct/range {v3 .. v10}, Landroid/media/tv/ad/TvAdManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;Landroid/media/tv/ad/TvAdManager-IA;)V

    move-object v2, v3

    goto :goto_60

    .line 346
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "channel":Landroid/view/InputChannel;
    .end local v8    # "seq":I
    .restart local p2    # "token":Landroid/os/IBinder;
    .restart local p3    # "channel":Landroid/view/InputChannel;
    .restart local p4    # "seq":I
    :cond_54
    move-object v4, p2

    move-object v5, p3

    move v8, p4

    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "channel":Landroid/view/InputChannel;
    .end local p4    # "seq":I
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v5    # "channel":Landroid/view/InputChannel;
    .restart local v8    # "seq":I
    iget-object p2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 348
    :goto_60
    invoke-virtual {v0, v2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V

    .line 349
    .end local v0    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    .end local v2    # "session":Landroid/media/tv/ad/TvAdManager$Session;
    monitor-exit v1

    .line 350
    return-void

    .line 349
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "channel":Landroid/view/InputChannel;
    .end local v8    # "seq":I
    .restart local p2    # "token":Landroid/os/IBinder;
    .restart local p3    # "channel":Landroid/view/InputChannel;
    .restart local p4    # "seq":I
    :catchall_65
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "channel":Landroid/view/InputChannel;
    .end local p4    # "seq":I
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v5    # "channel":Landroid/view/InputChannel;
    .restart local v8    # "seq":I
    :goto_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_4f .. :try_end_6a} :catchall_6b

    throw v0

    :catchall_6b
    move-exception v0

    goto :goto_69
.end method

.method public blacklist onSessionReleased(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 354
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 355
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 356
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 357
    if-nez v1, :cond_38

    .line 358
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit v0

    return-void

    .line 361
    :cond_38
    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$Session;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager$Session;->-$$Nest$mreleaseInternal(Landroid/media/tv/ad/TvAdManager$Session;)V

    .line 362
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionReleased()V

    .line 363
    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public blacklist onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "seq"    # I

    .line 441
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 442
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 443
    .local v1, "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 444
    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    monitor-exit v0

    return-void

    .line 447
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    .end local v1    # "record":Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    monitor-exit v0

    .line 449
    return-void

    .line 448
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method
