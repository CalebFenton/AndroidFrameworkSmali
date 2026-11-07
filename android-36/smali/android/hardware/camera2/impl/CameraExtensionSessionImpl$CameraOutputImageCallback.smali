.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraOutputImageCallback"
.end annotation


# instance fields
.field private blacklist mImageListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mImageReader:Landroid/media/ImageReader;

.field private blacklist mOutOfBuffers:Z

.field private final blacklist mPruneOlderBuffers:Z

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;Z)V
    .registers 4
    .param p2, "imageReader"    # Landroid/media/ImageReader;
    .param p3, "pruneOlderBuffers"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1445
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    .line 1442
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1446
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    .line 1447
    iput-boolean p3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mPruneOlderBuffers:Z

    .line 1448
    return-void
.end method

.method private blacklist notifyDroppedImages(J)V
    .registers 12
    .param p1, "timestamp"    # J

    .line 1485
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1486
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1487
    .local v1, "timestamps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v2, "removedTs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1489
    .local v4, "ts":J
    cmp-long v6, v4, p1

    if-gez v6, :cond_86

    .line 1490
    iget-boolean v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mPruneOlderBuffers:Z

    if-nez v6, :cond_45

    .line 1491
    const-string v6, "CameraExtensionSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected older image with ts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    goto :goto_14

    .line 1494
    :cond_45
    const-string v6, "CameraExtensionSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropped image with ts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 1496
    .local v6, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_74

    .line 1497
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v7, v4, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageDropped(J)V

    .line 1499
    :cond_74
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v7, :cond_7f

    .line 1500
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/media/Image;

    invoke-virtual {v7}, Landroid/media/Image;->close()V

    .line 1502
    :cond_7f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    .end local v4    # "ts":J
    .end local v6    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :cond_86
    goto :goto_14

    .line 1505
    :cond_87
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1506
    .restart local v4    # "ts":J
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    nop

    .end local v4    # "ts":J
    goto :goto_8b

    .line 1508
    .end local v1    # "timestamps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2    # "removedTs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_a6
    monitor-exit v0

    .line 1509
    return-void

    .line 1508
    :catchall_a8
    move-exception v1

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_5 .. :try_end_aa} :catchall_a8

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7

    .line 1535
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1536
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1537
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_26

    .line 1538
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 1540
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :cond_26
    goto :goto_f

    .line 1541
    :cond_27
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1542
    .local v2, "timestamp":J
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1543
    .local v4, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_58

    .line 1544
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v5, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageDropped(J)V

    .line 1546
    .end local v2    # "timestamp":J
    .end local v4    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :cond_58
    goto :goto_31

    .line 1547
    :cond_59
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1548
    monitor-exit v0

    .line 1549
    return-void

    .line 1548
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 8
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 1453
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1455
    :try_start_5
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_9} :catch_5a
    .catchall {:try_start_5 .. :try_end_9} :catchall_58

    .line 1460
    .local v1, "img":Landroid/media/Image;
    nop

    .line 1461
    if-nez v1, :cond_15

    .line 1462
    :try_start_c
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Invalid image!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    monitor-exit v0

    return-void

    .line 1466
    :cond_15
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1467
    .local v2, "timestamp":Ljava/lang/Long;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1468
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1470
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_39

    .line 1471
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-interface {v4, p1, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V

    goto :goto_43

    .line 1473
    :cond_39
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "Invalid image listener, dropping frame!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1476
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :goto_43
    goto :goto_4f

    .line 1477
    :cond_44
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    :goto_4f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->notifyDroppedImages(J)V

    .line 1481
    .end local v2    # "timestamp":Ljava/lang/Long;
    monitor-exit v0

    .line 1482
    return-void

    .line 1481
    .end local v1    # "img":Landroid/media/Image;
    :catchall_58
    move-exception v1

    goto :goto_67

    .line 1456
    :catch_5a
    move-exception v1

    .line 1457
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to acquire image, too many images pending!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1459
    monitor-exit v0

    return-void

    .line 1481
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_c .. :try_end_68} :catchall_58

    throw v1
.end method

.method public blacklist registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V
    .registers 9
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "listener"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    .line 1512
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1513
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1514
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1516
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_36

    .line 1517
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    invoke-interface {p2, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 1518
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    if-eqz v2, :cond_52

    .line 1519
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mOutOfBuffers:Z

    .line 1520
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Out of buffers, retry!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->onImageAvailable(Landroid/media/ImageReader;)V

    goto :goto_52

    .line 1524
    :cond_36
    const-string v2, "CameraExtensionSessionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid image for listener with ts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1525
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1524
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;>;"
    :cond_52
    :goto_52
    goto :goto_5e

    .line 1528
    :cond_53
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->mImageListenerMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    :goto_5e
    monitor-exit v0

    .line 1531
    return-void

    .line 1530
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_60

    throw v1
.end method
