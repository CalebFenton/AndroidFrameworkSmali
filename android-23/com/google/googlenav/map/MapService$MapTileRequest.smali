.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.source "MapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapTileRequest"
.end annotation


# instance fields
.field private closed:Z

.field private isForeground:Z

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private tilePriorityList:Ljava/util/Vector;

.field private tileSchedule:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;B)V
    .locals 1
    .param p2, "flags"    # B

    #@0
    .prologue
    .line 1393
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@2
    .line 1394
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;-><init>(IB)V

    #@9
    .line 1370
    new-instance v0, Ljava/util/Vector;

    #@b
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@10
    .line 1378
    new-instance v0, Ljava/util/Vector;

    #@12
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@15
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    #@17
    .line 1391
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->isForeground:Z

    #@1a
    .line 1395
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    #@1d
    .line 1396
    return-void
.end method


# virtual methods
.method protected handleEndOfResponse(I)V
    .locals 2
    .param p1, "tileIndex"    # I

    #@0
    .prologue
    .line 1483
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    .line 1484
    .local v0, "skippedTiles":Ljava/util/Vector;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@7
    invoke-static {v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/ArrayUtil;->copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V

    #@a
    .line 1485
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@c
    .line 1486
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@e
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Hashtable;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    #@15
    .line 1487
    return-void
.end method

.method public isForeground()Z
    .locals 1

    #@0
    .prologue
    .line 1443
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->isForeground:Z

    #@2
    return v0
.end method

.method protected processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .locals 9
    .param p1, "tileIndex"    # I
    .param p2, "location"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p3, "imageBytes"    # [B

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1491
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@9
    .line 1492
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-eqz v1, :cond_1

    #@b
    .line 1494
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_0

    #@15
    .line 1511
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 1495
    :cond_0
    invoke-virtual {v1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setData([B)V

    #@1a
    .line 1503
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    #@1d
    move-result-wide v4

    #@1e
    int-to-long v6, p1

    #@1f
    sub-long/2addr v4, v6

    #@20
    invoke-virtual {v1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setLastAccessTime(J)V

    #@23
    const/4 v0, 0x0

    #@24
    .line 1504
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@26
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@2d
    move-result v3

    #@2e
    if-lt v0, v3, :cond_2

    #@30
    .line 1513
    .end local v0    # "i":I
    :cond_1
    return v8

    #@31
    .line 1505
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@33
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;

    #@3d
    .line 1506
    .local v2, "repaintListener":Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;->repaint()V

    #@40
    .line 1504
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 2
    .param p1, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1472
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@3
    # operator-- for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$210(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    #@6
    .line 1473
    invoke-super {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->readResponseData(Ljava/io/DataInput;)Z

    #@9
    .line 1474
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@b
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V
    .locals 5
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .param p2, "priority"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1413
    :try_start_0
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1417
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@7
    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    #@a
    move-result v2

    #@b
    const/4 v3, -0x1

    #@c
    if-ne v2, v3, :cond_1

    #@e
    .line 1426
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@10
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v0

    #@14
    .local v0, "i":I
    :goto_0
    if-gtz v0, :cond_2

    #@16
    .line 1434
    :goto_1
    if-eqz v0, :cond_4

    #@18
    :goto_2
    monitor-exit p0

    #@19
    .line 1440
    return-void

    #@1a
    .line 1414
    .end local v0    # "i":I
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v3, "Adding tiles to closed request!"

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2

    #@26
    :cond_1
    monitor-exit p0

    #@27
    .line 1420
    return-void

    #@28
    .line 1427
    .restart local v0    # "i":I
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    #@2a
    add-int/lit8 v3, v0, -0x1

    #@2c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Ljava/lang/Integer;

    #@32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@35
    move-result v1

    #@36
    .line 1428
    .local v1, "p2":I
    if-ge p2, v1, :cond_3

    #@38
    .line 1426
    add-int/lit8 v0, v0, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1429
    :cond_3
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@3d
    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@40
    .line 1430
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    #@42
    new-instance v3, Ljava/lang/Integer;

    #@44
    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    #@47
    invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@4a
    goto :goto_1

    #@4b
    .line 1435
    .end local v1    # "p2":I
    :cond_4
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@4d
    const/4 v3, 0x0

    #@4e
    invoke-virtual {v2, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@51
    .line 1436
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    #@53
    new-instance v3, Ljava/lang/Integer;

    #@55
    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    #@58
    const/4 v4, 0x0

    #@59
    invoke-virtual {v2, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    goto :goto_2
.end method

.method protected setTileEditionAndTextSize(II)V
    .locals 1
    .param p1, "tileEdition"    # I
    .param p2, "textSize"    # I

    #@0
    .prologue
    .line 1478
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setTileEditionAndTextSize(II)V

    #@5
    .line 1479
    return-void
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 3
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1451
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@2
    # operator++ for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$208(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    #@5
    .line 1454
    monitor-enter p0

    #@6
    .line 1455
    const/4 v2, 0x1

    #@7
    :try_start_0
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    #@9
    .line 1456
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    const/4 v2, 0x0

    #@b
    .line 1460
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    #@d
    .line 1463
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@f
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@12
    move-result v2

    #@13
    new-array v1, v2, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@15
    .local v1, "tileList":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    const/4 v0, 0x0

    #@16
    .line 1464
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@18
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@1b
    move-result v2

    #@1c
    if-lt v0, v2, :cond_0

    #@1e
    .line 1468
    invoke-virtual {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V

    #@21
    .line 1469
    return-void

    #@22
    .line 1456
    .end local v0    # "i":I
    .end local v1    # "tileList":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :catchall_0
    move-exception v2

    #@23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    throw v2

    #@25
    .line 1465
    .restart local v0    # "i":I
    .restart local v1    # "tileList":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    #@27
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@2d
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@30
    move-result-object v2

    #@31
    aput-object v2, v1, v0

    #@33
    .line 1464
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0
.end method
