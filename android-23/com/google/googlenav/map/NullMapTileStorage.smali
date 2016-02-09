.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;
.super Ljava/lang/Object;
.source "NullMapTileStorage.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;


# instance fields
.field private textSize:I

.field private tileEdition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 14
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    #@6
    .line 15
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    #@8
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 0
    .param p1, "saveState"    # Z

    #@0
    .prologue
    .line 18
    return-void
.end method

.method public getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 1
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 24
    return-object v0
.end method

.method public mapChanged()V
    .locals 0

    #@0
    .prologue
    .line 32
    return-void
.end method

.method public setTileEditionAndTextSize(II)Z
    .locals 3
    .param p1, "newTileEdition"    # I
    .param p2, "newTextSize"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 50
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    #@3
    if-ne p1, v1, :cond_1

    #@5
    :cond_0
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    #@7
    if-ne p2, v1, :cond_3

    #@9
    :goto_0
    const/4 v0, 0x0

    #@a
    .line 52
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    #@c
    .line 53
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    #@e
    .line 54
    return v0

    #@f
    .line 50
    .end local v0    # "changed":Z
    :cond_1
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    #@11
    if-eq v1, v2, :cond_0

    #@13
    :cond_2
    const/4 v0, 0x1

    #@14
    goto :goto_1

    #@15
    :cond_3
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    #@17
    if-ne v1, v2, :cond_2

    #@19
    goto :goto_0
.end method

.method public writeCache()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    const/4 v0, 0x0

    #@1
    return v0
.end method
