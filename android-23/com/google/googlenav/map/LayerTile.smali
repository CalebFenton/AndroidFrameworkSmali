.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
.super Ljava/lang/Object;
.source "LayerTile.java"


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private dataTime:J

.field private image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private isComplete:Z

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .locals 2
    .param p1, "location"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/high16 v0, -0x8000000000000000L

    #@5
    .line 42
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    #@7
    .line 50
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@9
    .line 51
    new-instance v0, Ljava/util/Hashtable;

    #@b
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    #@10
    .line 52
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    #@13
    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized compact()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 78
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@6
    const/4 v0, 0x0

    #@7
    .line 79
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@9
    .line 80
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 81
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public getDataTime()J
    .locals 2

    #@0
    .prologue
    .line 62
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    #@8
    :goto_0
    return-wide v0

    #@9
    :cond_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@14
    move-result-wide v0

    #@15
    goto :goto_0
.end method

.method public declared-synchronized getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 184
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    #@2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized setImage([B)V
    .locals 3
    .param p1, "imageData"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 192
    if-nez p1, :cond_1

    #@3
    :cond_0
    const/4 v0, 0x0

    #@4
    .line 193
    :try_start_0
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    .line 198
    return-void

    #@8
    .line 192
    :cond_1
    :try_start_1
    array-length v0, p1

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 195
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x0

    #@14
    array-length v2, p1

    #@15
    invoke-interface {v0, p1, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method public setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .locals 1
    .param p1, "areas"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@5
    .line 122
    if-eqz p1, :cond_0

    #@7
    .line 128
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    #@a
    .line 129
    return-void

    #@b
    .line 123
    :cond_0
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    #@e
    .line 124
    return-void
.end method

.method public updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .locals 10
    .param p1, "areas"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    #@0
    .prologue
    .line 143
    if-eqz p1, :cond_0

    #@2
    .line 147
    array-length v7, p1

    #@3
    add-int/lit8 v1, v7, -0x1

    #@5
    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    #@7
    .line 172
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@a
    move-result-object v7

    #@b
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@e
    move-result-object v7

    #@f
    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@12
    move-result-wide v8

    #@13
    iput-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    #@15
    .line 173
    const/4 v7, 0x1

    #@16
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    #@18
    .line 174
    return-void

    #@19
    .line 144
    .end local v1    # "i":I
    :cond_0
    return-void

    #@1a
    .line 148
    .restart local v1    # "i":I
    :cond_1
    aget-object v0, p1, v1

    #@1c
    .line 150
    .local v0, "area":Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getItems()[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    #@1f
    move-result-object v3

    #@20
    .line 151
    .local v3, "items":[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    array-length v7, v3

    #@21
    add-int/lit8 v4, v7, -0x1

    #@23
    .local v4, "j":I
    :goto_1
    if-gez v4, :cond_2

    #@25
    .line 147
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_0

    #@28
    .line 152
    :cond_2
    aget-object v2, v3, v4

    #@2a
    .line 153
    .local v2, "item":Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    #@2c
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    check-cast v5, Ljava/util/Hashtable;

    #@36
    .local v5, "layerCache":Ljava/util/Hashtable;
    const/4 v6, 0x0

    #@37
    .line 156
    .local v6, "placemark":Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    if-eqz v5, :cond_3

    #@39
    .line 160
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v6

    #@41
    .end local v6    # "placemark":Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;

    #@43
    .line 164
    :goto_2
    if-eqz v6, :cond_4

    #@45
    .line 151
    :goto_3
    add-int/lit8 v4, v4, -0x1

    #@47
    goto :goto_1

    #@48
    .line 157
    .restart local v6    # "placemark":Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    :cond_3
    new-instance v5, Ljava/util/Hashtable;

    #@4a
    .end local v5    # "layerCache":Ljava/util/Hashtable;
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    #@4d
    .line 158
    .restart local v5    # "layerCache":Ljava/util/Hashtable;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    #@4f
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v7, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    goto :goto_2

    #@57
    .line 165
    .end local v6    # "placemark":Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    :cond_4
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;

    #@59
    invoke-direct {v6, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    #@5c
    .line 166
    .local v6, "placemark":Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    goto :goto_3
.end method
