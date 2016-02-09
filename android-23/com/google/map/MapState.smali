.class public Landroid_maps_conflict_avoidance/com/google/map/MapState;
.super Ljava/lang/Object;
.source "MapState.java"


# instance fields
.field private final bicyclingLayerEnabled:Z

.field private final centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private final mapMode:I

.field private final zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .locals 1
    .param p1, "centerPoint"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .param p3, "mapMode"    # I

    #@0
    .prologue
    .line 37
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    #@4
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V
    .locals 0
    .param p1, "centerPoint"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .param p3, "mapMode"    # I
    .param p4, "bicyclingLayerEnabled"    # Z

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@5
    .line 31
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@7
    .line 32
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    #@9
    .line 33
    iput-boolean p4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    #@b
    .line 34
    return-void
.end method


# virtual methods
.method public getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@2
    return-object v0
.end method

.method public getMapMode()I
    .locals 1

    #@0
    .prologue
    .line 49
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    #@2
    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2
    return-object v0
.end method

.method public isBicyclingLayerEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 61
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    #@2
    return v0
.end method

.method public isSatellite()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 53
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :cond_0
    return v0
.end method

.method public isTerrain()Z
    .locals 2

    #@0
    .prologue
    .line 57
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public newMapState(I)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .locals 4
    .param p1, "mapMode"    # I

    #@0
    .prologue
    .line 94
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@4
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@6
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    #@8
    invoke-direct {v0, v1, v2, p1, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    #@b
    return-object v0
.end method

.method public newMapState(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .locals 4
    .param p1, "centerPoint"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@4
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    #@6
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    #@8
    invoke-direct {v0, p1, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    #@b
    return-object v0
.end method

.method public newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .locals 4
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 83
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@4
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    #@6
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    #@8
    invoke-direct {v0, v1, p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    #@b
    return-object v0
.end method
