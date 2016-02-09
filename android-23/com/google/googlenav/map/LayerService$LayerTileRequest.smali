.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "LayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayerTileRequest"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

.field private final tiles:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)V
    .locals 1

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@2
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    #@5
    .line 345
    new-instance v0, Ljava/util/Vector;

    #@7
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@a
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    #@c
    .line 346
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    #@f
    .line 347
    return-void
.end method


# virtual methods
.method public declared-synchronized addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    .locals 2
    .param p1, "layerTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 357
    :try_start_0
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 361
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    const/4 v1, -0x1

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 367
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 371
    return-void

    #@15
    .line 358
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v1, "Adding tiles to closed request!"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0

    #@21
    :cond_1
    monitor-exit p0

    #@22
    .line 364
    return-void
.end method

.method public getRequestType()I
    .locals 1

    #@0
    .prologue
    const/16 v0, 0x24

    #@2
    .line 350
    return v0
.end method

.method public processLayerTile(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;Z)V
    .locals 12
    .param p1, "tileInfo"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p2, "replace"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v11, 0x3

    #@2
    const/4 v10, 0x2

    #@3
    .line 472
    invoke-virtual {p1, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@6
    move-result-object v5

    #@7
    .line 473
    .local v5, "mapTile":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v5, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@a
    move-result v6

    #@b
    int-to-byte v6, v6

    #@c
    invoke-virtual {v5, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@f
    move-result v7

    #@10
    invoke-virtual {v5, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@13
    move-result v8

    #@14
    const/4 v9, 0x4

    #@15
    invoke-virtual {v5, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@18
    move-result v9

    #@19
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1c
    move-result-object v9

    #@1d
    invoke-static {v6, v7, v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@20
    move-result-object v4

    #@21
    .line 480
    .local v4, "location":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {p1, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@24
    move-result v1

    #@25
    .line 481
    .local v1, "areasNum":I
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    #@27
    .line 482
    .local v0, "areas":[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
    add-int/lit8 v2, v1, -0x1

    #@29
    .local v2, "j":I
    :goto_0
    if-gez v2, :cond_2

    #@2b
    .line 487
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@2d
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@37
    .line 488
    .local v3, "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    if-eqz v3, :cond_3

    #@39
    .line 492
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    #@3c
    move-result v6

    #@3d
    if-nez v6, :cond_4

    #@3f
    .line 497
    :cond_0
    :goto_1
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    #@42
    move-result v6

    #@43
    if-nez v6, :cond_5

    #@45
    .line 498
    :cond_1
    invoke-virtual {v3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    #@48
    .line 504
    :goto_2
    invoke-virtual {p1, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@4b
    move-result v6

    #@4c
    if-nez v6, :cond_6

    #@4e
    .line 508
    :goto_3
    monitor-enter p0

    #@4f
    .line 509
    :try_start_0
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@51
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 510
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@5a
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 511
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 513
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@64
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyLayerTilesDirty()V

    #@67
    .line 514
    return-void

    #@68
    .line 483
    .end local v3    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :cond_2
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    #@6a
    invoke-virtual {p1, v11, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@6d
    move-result-object v7

    #@6e
    invoke-direct {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@71
    aput-object v6, v0, v2

    #@73
    .line 482
    add-int/lit8 v2, v2, -0x1

    #@75
    goto :goto_0

    #@76
    .line 490
    .restart local v3    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :cond_3
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@78
    .end local v3    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    #@7b
    .restart local v3    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    goto :goto_1

    #@7c
    .line 492
    :cond_4
    if-eqz p2, :cond_0

    #@7e
    .line 493
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@80
    .end local v3    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    #@83
    .restart local v3    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    goto :goto_1

    #@84
    .line 497
    :cond_5
    if-nez p2, :cond_1

    #@86
    .line 500
    invoke-virtual {v3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    #@89
    goto :goto_2

    #@8a
    .line 505
    :cond_6
    invoke-virtual {p1, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v3, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setImage([B)V

    #@91
    goto :goto_3

    #@92
    .line 511
    :catchall_0
    move-exception v6

    #@93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@94
    throw v6
.end method

.method public processResponseHeader(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 10
    .param p1, "responseHeader"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@0
    .prologue
    const/16 v9, 0xd

    #@2
    const/4 v8, 0x1

    #@3
    .line 444
    invoke-virtual {p1, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@6
    move-result v6

    #@7
    .line 447
    .local v6, "layersNum":I
    add-int/lit8 v0, v6, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    #@b
    .line 468
    return-void

    #@c
    .line 448
    :cond_0
    invoke-virtual {p1, v8, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@f
    move-result-object v5

    #@10
    .local v5, "layerResponse":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v7, 0xb

    #@12
    .line 452
    invoke-virtual {v5, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 458
    .local v2, "layerId":Ljava/lang/String;
    invoke-virtual {v5, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@19
    move-result v4

    #@1a
    .line 460
    .local v4, "layerParamsNum":I
    new-array v3, v4, [Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@1c
    .line 461
    .local v3, "layerParams":[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    add-int/lit8 v1, v4, -0x1

    #@1e
    .local v1, "j":I
    :goto_1
    if-gez v1, :cond_1

    #@20
    .line 466
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@22
    invoke-virtual {v7, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyNewLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@25
    .line 447
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0

    #@28
    .line 462
    :cond_1
    invoke-virtual {v5, v9, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2b
    move-result-object v7

    #@2c
    aput-object v7, v3, v1

    #@2e
    .line 461
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_1
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 8
    .param p1, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 422
    sget-object v5, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_RESPONSE_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@4
    invoke-static {v5, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->readProtoBufResponse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@7
    move-result-object v1

    #@8
    .line 426
    .local v1, "response":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@b
    move-result-object v2

    #@c
    .line 428
    .local v2, "responseHeader":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->processResponseHeader(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@f
    .line 431
    invoke-virtual {v1, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@12
    move-result v4

    #@13
    .local v4, "tilesNum":I
    const/4 v0, 0x0

    #@14
    .line 433
    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    #@16
    .line 439
    return v6

    #@17
    .line 434
    :cond_0
    invoke-virtual {v1, v7, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@1a
    move-result-object v3

    #@1b
    .line 436
    .local v3, "tileInfo":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, v3, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->processLayerTile(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;Z)V

    #@1e
    .line 433
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 12
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    monitor-enter p0

    #@1
    .line 375
    const/4 v10, 0x1

    #@2
    :try_start_0
    iput-boolean v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    #@4
    .line 376
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 378
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@7
    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_REQUEST_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@9
    invoke-direct {v6, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@c
    .local v6, "request":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/4 v10, 0x1

    #@d
    const/16 v11, 0x100

    #@f
    .line 379
    invoke-virtual {v6, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    #@12
    const/4 v9, 0x1

    #@13
    .local v9, "zoomLevel":I
    const/4 v0, 0x0

    #@14
    .line 383
    .local v0, "i":I
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    #@16
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    #@19
    move-result v4

    #@1a
    .local v4, "n":I
    :goto_0
    if-lt v0, v4, :cond_0

    #@1c
    .line 399
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@1e
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;

    #@21
    move-result-object v10

    #@22
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    #@25
    move-result v10

    #@26
    add-int/lit8 v0, v10, -0x1

    #@28
    :goto_1
    if-gez v0, :cond_1

    #@2a
    .line 418
    check-cast p1, Ljava/io/OutputStream;

    #@2c
    .end local p1    # "dos":Ljava/io/DataOutput;
    invoke-virtual {v6, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    #@2f
    .line 419
    return-void

    #@30
    .line 376
    .end local v0    # "i":I
    .end local v4    # "n":I
    .end local v6    # "request":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .end local v9    # "zoomLevel":I
    .restart local p1    # "dos":Ljava/io/DataOutput;
    :catchall_0
    move-exception v10

    #@31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    throw v10

    #@33
    .line 384
    .restart local v0    # "i":I
    .restart local v4    # "n":I
    .restart local v6    # "request":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .restart local v9    # "zoomLevel":I
    :cond_0
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    #@35
    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@38
    move-result-object v10

    #@39
    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@3b
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@3e
    move-result-object v7

    #@3f
    .line 385
    .local v7, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@42
    move-result-object v10

    #@43
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@46
    move-result v9

    #@47
    .line 387
    new-instance v8, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@49
    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->MAP_TILE_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@4b
    invoke-direct {v8, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@4e
    .local v8, "tileRequest":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/4 v10, 0x1

    #@4f
    const/16 v11, 0x8

    #@51
    .line 388
    invoke-virtual {v8, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    #@54
    const/4 v10, 0x2

    #@55
    .line 390
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@58
    move-result v11

    #@59
    invoke-virtual {v8, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    #@5c
    const/4 v10, 0x3

    #@5d
    .line 391
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    #@60
    move-result v11

    #@61
    invoke-virtual {v8, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    #@64
    const/4 v10, 0x4

    #@65
    .line 392
    invoke-virtual {v8, v10, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    #@68
    const/4 v10, 0x3

    #@69
    .line 395
    invoke-virtual {v6, v10, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@6c
    .line 383
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 400
    .end local v7    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v8    # "tileRequest":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :cond_1
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@71
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;

    #@74
    move-result-object v10

    #@75
    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@78
    move-result-object v10

    #@79
    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    #@7b
    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->getLayerInfo()Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;

    #@7e
    move-result-object v2

    #@7f
    .line 402
    .local v2, "layerInfo":Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@81
    const/4 v10, 0x0

    #@82
    invoke-direct {v3, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@85
    .local v3, "layerRequest":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v10, 0x15

    #@87
    .line 403
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->getId()Ljava/lang/String;

    #@8a
    move-result-object v11

    #@8b
    invoke-virtual {v3, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    #@8e
    .line 405
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->getParameters()[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@91
    move-result-object v5

    #@92
    .line 406
    .local v5, "parameters":[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    if-nez v5, :cond_3

    #@94
    .line 413
    :cond_2
    invoke-virtual {v2, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->isValidZoomLevel(I)Z

    #@97
    move-result v10

    #@98
    if-nez v10, :cond_4

    #@9a
    .line 399
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@9c
    goto :goto_1

    #@9d
    .line 407
    :cond_3
    array-length v10, v5

    #@9e
    add-int/lit8 v1, v10, -0x1

    #@a0
    .local v1, "j":I
    :goto_3
    if-ltz v1, :cond_2

    #@a2
    const/16 v10, 0x16

    #@a4
    .line 408
    aget-object v11, v5, v1

    #@a6
    invoke-virtual {v3, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@a9
    .line 407
    add-int/lit8 v1, v1, -0x1

    #@ab
    goto :goto_3

    #@ac
    .end local v1    # "j":I
    :cond_4
    const/4 v10, 0x2

    #@ad
    .line 414
    invoke-virtual {v6, v10, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@b0
    goto :goto_2
.end method
