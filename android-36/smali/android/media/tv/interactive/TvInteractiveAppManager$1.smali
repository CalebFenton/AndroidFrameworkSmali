.class Landroid/media/tv/interactive/TvInteractiveAppManager$1;
.super Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;-><init>(Landroid/media/tv/interactive/ITvInteractiveAppManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAdBufferReady(Landroid/media/tv/AdBuffer;I)V
    .registers 8
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;
    .param p2, "seq"    # I

    .line 722
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 723
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 724
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 725
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    monitor-exit v0

    return-void

    .line 728
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postAdBufferReady(Landroid/media/tv/AdBuffer;)V

    .line 729
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 730
    return-void

    .line 729
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onAdRequest(Landroid/media/tv/AdRequest;I)V
    .registers 8
    .param p1, "request"    # Landroid/media/tv/AdRequest;
    .param p2, "seq"    # I

    .line 438
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 439
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 440
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 441
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    monitor-exit v0

    return-void

    .line 444
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postAdRequest(Landroid/media/tv/AdRequest;)V

    .line 445
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 9
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "biIAppId"    # Ljava/lang/String;
    .param p3, "seq"    # I

    .line 698
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 699
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 700
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 701
    const-string v2, "TvInteractiveAppManager"

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

    .line 702
    monitor-exit v0

    return-void

    .line 704
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V

    .line 705
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 706
    return-void

    .line 705
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V
    .registers 8
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;
    .param p2, "seq"    # I

    .line 372
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 374
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 375
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    monitor-exit v0

    return-void

    .line 378
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 379
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "seq"    # I

    .line 399
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 401
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 402
    const-string v2, "TvInteractiveAppManager"

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

    .line 403
    monitor-exit v0

    return-void

    .line 405
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 406
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 407
    return-void

    .line 406
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onLayoutSurface(IIIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "seq"    # I

    .line 360
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 361
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 362
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 363
    const-string v2, "TvInteractiveAppManager"

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

    .line 364
    monitor-exit v0

    return-void

    .line 366
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postLayoutSurface(IIII)V

    .line 367
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRemoveBroadcastInfo(II)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "seq"    # I

    .line 384
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 385
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 386
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 387
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit v0

    return-void

    .line 390
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRemoveBroadcastInfo(I)V

    .line 391
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestAvailableSpeeds(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 546
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 547
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 548
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 549
    const-string v2, "TvInteractiveAppManager"

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

    .line 550
    monitor-exit v0

    return-void

    .line 552
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestAvailableSpeeds()V

    .line 553
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestCertificate(Ljava/lang/String;II)V
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "seq"    # I

    .line 674
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 675
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 676
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 677
    const-string v2, "TvInteractiveAppManager"

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

    .line 678
    monitor-exit v0

    return-void

    .line 680
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCertificate(Ljava/lang/String;I)V

    .line 681
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestCurrentChannelLcn(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 474
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 475
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 476
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 477
    const-string v2, "TvInteractiveAppManager"

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

    .line 478
    monitor-exit v0

    return-void

    .line 480
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentChannelLcn()V

    .line 481
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 482
    return-void

    .line 481
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

    .line 462
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 463
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 464
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 465
    const-string v2, "TvInteractiveAppManager"

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

    .line 466
    monitor-exit v0

    return-void

    .line 468
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentChannelUri()V

    .line 469
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 470
    return-void

    .line 469
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

    .line 522
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 523
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 524
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 525
    const-string v2, "TvInteractiveAppManager"

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

    .line 526
    monitor-exit v0

    return-void

    .line 528
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentTvInputId()V

    .line 529
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 530
    return-void

    .line 529
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

    .line 450
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 451
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 452
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 453
    const-string v2, "TvInteractiveAppManager"

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

    .line 454
    monitor-exit v0

    return-void

    .line 456
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentVideoBounds()V

    .line 457
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 15
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "programUri"    # Landroid/net/Uri;
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "seq"    # I

    .line 583
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 584
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_41

    move-object v2, v0

    .line 585
    .local v2, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v2, :cond_37

    .line 586
    :try_start_16
    const-string v0, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_30

    return-void

    .line 591
    .end local v2    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :catchall_30
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    goto :goto_47

    .line 589
    .restart local v2    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :cond_37
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "channelUri":Landroid/net/Uri;
    .end local p4    # "programUri":Landroid/net/Uri;
    .end local p5    # "params":Landroid/os/Bundle;
    .local v3, "requestId":Ljava/lang/String;
    .local v4, "inputId":Ljava/lang/String;
    .local v5, "channelUri":Landroid/net/Uri;
    .local v6, "programUri":Landroid/net/Uri;
    .local v7, "params":Landroid/os/Bundle;
    :try_start_3c
    invoke-virtual/range {v2 .. v7}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 591
    .end local v2    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v1

    .line 592
    return-void

    .line 591
    .end local v3    # "requestId":Ljava/lang/String;
    .end local v4    # "inputId":Ljava/lang/String;
    .end local v5    # "channelUri":Landroid/net/Uri;
    .end local v6    # "programUri":Landroid/net/Uri;
    .end local v7    # "params":Landroid/os/Bundle;
    .restart local p1    # "requestId":Ljava/lang/String;
    .restart local p2    # "inputId":Ljava/lang/String;
    .restart local p3    # "channelUri":Landroid/net/Uri;
    .restart local p4    # "programUri":Landroid/net/Uri;
    .restart local p5    # "params":Landroid/os/Bundle;
    :catchall_41
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "channelUri":Landroid/net/Uri;
    .end local p4    # "programUri":Landroid/net/Uri;
    .end local p5    # "params":Landroid/os/Bundle;
    .restart local v3    # "requestId":Ljava/lang/String;
    .restart local v4    # "inputId":Ljava/lang/String;
    .restart local v5    # "channelUri":Landroid/net/Uri;
    .restart local v6    # "programUri":Landroid/net/Uri;
    .restart local v7    # "params":Landroid/os/Bundle;
    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    throw v0

    :catchall_49
    move-exception v0

    goto :goto_47
.end method

.method public blacklist onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V
    .registers 24
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "startTime"    # J
    .param p6, "duration"    # J
    .param p8, "repeatDays"    # I
    .param p9, "params"    # Landroid/os/Bundle;
    .param p10, "seq"    # I

    .line 598
    move/from16 v1, p10

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 599
    :try_start_9
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    move-object v3, v0

    .line 600
    .local v3, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v3, :cond_32

    .line 601
    const-string v0, "TvInteractiveAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback not found for seq "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    monitor-exit v2

    return-void

    .line 604
    :cond_32
    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    .line 606
    .end local v3    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v2

    .line 607
    return-void

    .line 606
    :catchall_43
    move-exception v0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public blacklist onRequestSelectedTrackInfo(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 510
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 511
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 512
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 513
    const-string v2, "TvInteractiveAppManager"

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

    .line 514
    monitor-exit v0

    return-void

    .line 516
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestSelectedTrackInfo()V

    .line 517
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 518
    return-void

    .line 517
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

    .line 649
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 650
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 651
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 652
    const-string v2, "TvInteractiveAppManager"

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

    .line 653
    monitor-exit v0

    return-void

    .line 655
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 656
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "data"    # [B
    .param p6, "seq"    # I

    .line 662
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 663
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_41

    move-object v2, v0

    .line 664
    .local v2, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v2, :cond_37

    .line 665
    :try_start_16
    const-string v0, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_30

    return-void

    .line 669
    .end local v2    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :catchall_30
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    goto :goto_47

    .line 668
    .restart local v2    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :cond_37
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "port":I
    .end local p5    # "data":[B
    .local v3, "id":Ljava/lang/String;
    .local v4, "algorithm":Ljava/lang/String;
    .local v5, "host":Ljava/lang/String;
    .local v6, "port":I
    .local v7, "data":[B
    :try_start_3c
    invoke-virtual/range {v2 .. v7}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 669
    .end local v2    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v1

    .line 670
    return-void

    .line 669
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "data":[B
    .restart local p1    # "id":Ljava/lang/String;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "port":I
    .restart local p5    # "data":[B
    :catchall_41
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "port":I
    .end local p5    # "data":[B
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "algorithm":Ljava/lang/String;
    .restart local v5    # "host":Ljava/lang/String;
    .restart local v6    # "port":I
    .restart local v7    # "data":[B
    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    throw v0

    :catchall_49
    move-exception v0

    goto :goto_47
.end method

.method public blacklist onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "programUri"    # Landroid/net/Uri;
    .param p3, "seq"    # I

    .line 558
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 560
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 561
    const-string v2, "TvInteractiveAppManager"

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

    .line 562
    monitor-exit v0

    return-void

    .line 564
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V

    .line 565
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 566
    return-void

    .line 565
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestStopRecording(Ljava/lang/String;I)V
    .registers 8
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "seq"    # I

    .line 570
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 571
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 572
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 573
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    monitor-exit v0

    return-void

    .line 576
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestStopRecording(Ljava/lang/String;)V

    .line 577
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 578
    return-void

    .line 577
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestStreamVolume(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 486
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 487
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 488
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 489
    const-string v2, "TvInteractiveAppManager"

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

    .line 490
    monitor-exit v0

    return-void

    .line 492
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestStreamVolume()V

    .line 493
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestTimeShiftMode(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 534
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 535
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 536
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 537
    const-string v2, "TvInteractiveAppManager"

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

    .line 538
    monitor-exit v0

    return-void

    .line 540
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTimeShiftMode()V

    .line 541
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 542
    return-void

    .line 541
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

    .line 498
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 499
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 500
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 501
    const-string v2, "TvInteractiveAppManager"

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

    .line 502
    monitor-exit v0

    return-void

    .line 504
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTrackInfoList()V

    .line 505
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestTvRecordingInfo(Ljava/lang/String;I)V
    .registers 8
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "seq"    # I

    .line 624
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 625
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 626
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 627
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit v0

    return-void

    .line 630
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTvRecordingInfo(Ljava/lang/String;)V

    .line 631
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 632
    return-void

    .line 631
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRequestTvRecordingInfoList(II)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "seq"    # I

    .line 636
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 637
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 638
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 639
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-exit v0

    return-void

    .line 642
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTvRecordingInfoList(I)V

    .line 643
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 16
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "channel"    # Landroid/view/InputChannel;
    .param p4, "seq"    # I

    .line 327
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 328
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_65

    .line 329
    .local v0, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v0, :cond_34

    .line 330
    :try_start_15
    const-string v2, "TvInteractiveAppManager"

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

    .line 331
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    return-void

    .line 341
    .end local v0    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :catchall_2f
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    goto :goto_69

    .line 333
    .restart local v0    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    :cond_34
    const/4 v2, 0x0

    .line 334
    .local v2, "session":Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    if-eqz p2, :cond_54

    .line 335
    :try_start_37
    new-instance v3, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v4}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmService(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/media/tv/interactive/ITvInteractiveAppManager;

    move-result-object v6

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v4}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmUserId(Landroid/media/tv/interactive/TvInteractiveAppManager;)I

    move-result v7

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v4}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

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
    invoke-direct/range {v3 .. v10}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;Landroid/media/tv/interactive/TvInteractiveAppManager-IA;)V

    move-object v2, v3

    goto :goto_60

    .line 338
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
    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {p2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 340
    :goto_60
    invoke-virtual {v0, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 341
    .end local v0    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    .end local v2    # "session":Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    monitor-exit v1

    .line 342
    return-void

    .line 341
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

    .line 346
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 347
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 348
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 349
    if-nez v1, :cond_38

    .line 350
    const-string v2, "TvInteractiveAppManager"

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

    .line 351
    monitor-exit v0

    return-void

    .line 353
    :cond_38
    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->-$$Nest$mreleaseInternal(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 354
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionReleased()V

    .line 355
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public blacklist onSessionStateChanged(III)V
    .registers 9
    .param p1, "state"    # I
    .param p2, "err"    # I
    .param p3, "seq"    # I

    .line 686
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 687
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 688
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 689
    const-string v2, "TvInteractiveAppManager"

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

    .line 690
    monitor-exit v0

    return-void

    .line 692
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionStateChanged(II)V

    .line 693
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 694
    return-void

    .line 693
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V
    .registers 9
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;
    .param p3, "seq"    # I

    .line 612
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 613
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 614
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 615
    const-string v2, "TvInteractiveAppManager"

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

    .line 616
    monitor-exit v0

    return-void

    .line 618
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    .line 619
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 620
    return-void

    .line 619
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onSetVideoBounds(Landroid/graphics/Rect;I)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "seq"    # I

    .line 426
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 427
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 428
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 429
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    monitor-exit v0

    return-void

    .line 432
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSetVideoBounds(Landroid/graphics/Rect;)V

    .line 433
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTeletextAppStateChanged(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "seq"    # I

    .line 710
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 711
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 712
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 713
    const-string v2, "TvInteractiveAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    monitor-exit v0

    return-void

    .line 716
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postTeletextAppStateChanged(I)V

    .line 717
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "seq"    # I

    .line 414
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 415
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 416
    .local v1, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 417
    const-string v2, "TvInteractiveAppManager"

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

    .line 418
    monitor-exit v0

    return-void

    .line 420
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 421
    .end local v1    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method
