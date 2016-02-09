.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;
.super Ljava/lang/Object;
.source "TrafficRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    return-void
.end method

.method private drawRoadBackgroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .locals 8
    .param p1, "roads"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .param p2, "painter"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 98
    .local v1, "index":I
    :goto_0
    array-length v5, p1

    #@3
    if-lt v1, v5, :cond_0

    #@5
    .line 109
    return-void

    #@6
    .line 99
    :cond_0
    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    #@9
    move-result-object v3

    #@a
    .line 100
    .local v3, "path":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    aget-object v4, p1, v1

    #@c
    .line 101
    .local v4, "road":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    invoke-virtual {p0, v3, v4, v7, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    #@f
    .line 102
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getNumPoints()I

    #@12
    move-result v2

    #@13
    .local v2, "numPoints":I
    const/4 v0, 0x1

    #@14
    .line 103
    .local v0, "dataPoint":I
    :goto_1
    if-lt v0, v2, :cond_1

    #@16
    const v5, -0x2f000001

    #@19
    .line 106
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineBackgroundWidth()I

    #@1c
    move-result v6

    #@1d
    shl-int/lit8 v6, v6, 0x8

    #@1f
    invoke-interface {p2, v3, v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    #@22
    .line 98
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 104
    :cond_1
    const/4 v5, 0x1

    #@26
    invoke-virtual {p0, v3, v4, v0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    #@29
    .line 103
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1
.end method

.method private drawRoadForegroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .locals 9
    .param p1, "roads"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .param p2, "painter"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 119
    .local v2, "index":I
    :goto_0
    array-length v7, p1

    #@3
    if-lt v2, v7, :cond_0

    #@5
    .line 138
    return-void

    #@6
    .line 120
    :cond_0
    aget-object v6, p1, v2

    #@8
    .line 121
    .local v6, "road":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    invoke-virtual {p0, p2, v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    #@b
    move-result-object v5

    #@c
    .line 122
    .local v5, "path":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    invoke-static {v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I

    #@f
    move-result v3

    #@10
    .line 123
    .local v3, "lastColor":I
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getNumPoints()I

    #@13
    move-result v4

    #@14
    .local v4, "numPoints":I
    const/4 v1, 0x1

    #@15
    .line 124
    .local v1, "dataPoint":I
    :goto_1
    if-lt v1, v4, :cond_1

    #@17
    .line 136
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineWidth()I

    #@1a
    move-result v7

    #@1b
    shl-int/lit8 v7, v7, 0x8

    #@1d
    invoke-interface {p2, v5, v3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    #@20
    .line 119
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 125
    :cond_1
    const/4 v7, 0x1

    #@24
    invoke-virtual {p0, v5, v6, v1, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    #@27
    .line 126
    invoke-static {v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I

    #@2a
    move-result v0

    #@2b
    .line 127
    .local v0, "color":I
    if-ne v0, v3, :cond_2

    #@2d
    .line 124
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 130
    :cond_2
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineWidth()I

    #@33
    move-result v7

    #@34
    shl-int/lit8 v7, v7, 0x8

    #@36
    invoke-interface {p2, v5, v3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    #@39
    .line 131
    invoke-virtual {p0, p2, v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    #@3c
    move-result-object v5

    #@3d
    .line 132
    move v3, v0

    #@3e
    goto :goto_2
.end method

.method private static getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I
    .locals 1
    .param p0, "road"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .param p1, "pointIndex"    # I

    #@0
    .prologue
    .line 170
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getSpeedCategory(I)I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    const v0, 0x60d1d1d1

    #@a
    .line 180
    return v0

    #@b
    :pswitch_0
    const/high16 v0, -0x640000

    #@d
    .line 172
    return v0

    #@e
    :pswitch_1
    const/high16 v0, -0x670000

    #@10
    .line 174
    return v0

    #@11
    :pswitch_2
    const/16 v0, -0x2000

    #@13
    .line 176
    return v0

    #@14
    :pswitch_3
    const v0, -0xcc4f00

    #@17
    .line 178
    return v0

    #@18
    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V
    .locals 3
    .param p1, "path"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .param p2, "road"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .param p3, "pointIndex"    # I
    .param p4, "draw"    # Z

    #@0
    .prologue
    .line 147
    invoke-virtual {p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getXOffset(I)I

    #@3
    move-result v2

    #@4
    shl-int/lit8 v0, v2, 0x8

    #@6
    .line 148
    .local v0, "x":I
    invoke-virtual {p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getYOffset(I)I

    #@9
    move-result v2

    #@a
    shl-int/lit8 v1, v2, 0x8

    #@c
    .line 150
    .local v1, "y":I
    if-nez p4, :cond_0

    #@e
    .line 153
    invoke-interface {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;->moveTo(II)V

    #@11
    .line 155
    :goto_0
    return-void

    #@12
    .line 151
    :cond_0
    invoke-interface {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;->lineTo(II)V

    #@15
    goto :goto_0
.end method

.method protected initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .locals 2
    .param p1, "painter"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;
    .param p2, "road"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .param p3, "pointIndex"    # I

    #@0
    .prologue
    .line 161
    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    #@3
    move-result-object v0

    #@4
    .line 162
    .local v0, "path":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    #@8
    .line 163
    return-object v0
.end method

.method public renderTrafficTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .locals 2
    .param p1, "tt"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .param p2, "painter"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;

    #@0
    .prologue
    .line 89
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@b
    move-result-wide v0

    #@c
    invoke-virtual {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setLastAccess(J)V

    #@f
    .line 90
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->drawRoadBackgroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    #@16
    .line 91
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->drawRoadForegroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    #@1d
    .line 92
    return-void
.end method
