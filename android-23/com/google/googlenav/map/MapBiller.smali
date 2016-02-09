.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;
.super Ljava/lang/Object;
.source "MapBiller.java"


# instance fields
.field private lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field private listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

.field private previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 25
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@6
    .line 26
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@8
    .line 27
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    #@a
    .line 31
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@c
    .line 32
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@e
    return-void
.end method

.method private static isBillingRequiredForSatellite()Z
    .locals 2

    #@0
    .prologue
    .line 147
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getSatType()B

    #@3
    move-result v0

    #@4
    const/4 v1, 0x6

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method private sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .locals 2
    .param p1, "billPoint"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "locationDisplayed"    # Z
    .param p3, "routeDisplayed"    # Z
    .param p4, "map"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    #@0
    .prologue
    .line 129
    invoke-virtual {p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "mapState":Landroid_maps_conflict_avoidance/com/google/map/MapState;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@6
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@8
    .line 132
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@a
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@c
    .line 133
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@e
    .line 134
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@14
    .line 135
    invoke-static {p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBillingPointToServer(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    #@17
    .line 138
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 141
    :goto_0
    return-void

    #@1c
    .line 139
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    #@1e
    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;->billingPointSent(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    #@21
    goto :goto_0
.end method

.method private static sendBillingPointToServer(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .locals 8
    .param p0, "billPoint"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p1, "locationDisplayed"    # Z
    .param p2, "routeDisplayed"    # Z
    .param p3, "map"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 155
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@4
    move-result-object v3

    #@5
    .line 156
    .local v3, "mapState":Landroid_maps_conflict_avoidance/com/google/map/MapState;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    .line 157
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@c
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@f
    .line 159
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {p0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    #@12
    .line 162
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@15
    move-result-object v4

    #@16
    invoke-static {v4, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    #@19
    .line 164
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@20
    move-result v4

    #@21
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@24
    .line 166
    invoke-virtual {p3, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    #@27
    move-result v4

    #@28
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2b
    .line 167
    invoke-virtual {p3, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    #@2e
    move-result v4

    #@2f
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@32
    .line 169
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@35
    .line 171
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 177
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@3b
    move-result-object v4

    #@3c
    const/4 v5, 0x7

    #@3d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v4, v5, v6, v7, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addSimpleRequest(I[BZZ)V

    #@44
    .line 179
    return-void

    #@45
    .line 175
    :catch_0
    move-exception v2

    #@46
    .line 174
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@48
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4
.end method


# virtual methods
.method doBilling(ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .locals 18
    .param p1, "locationDisplayed"    # Z
    .param p2, "routeDisplayed"    # Z
    .param p3, "map"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    #@0
    .prologue
    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@3
    move-result-object v8

    #@4
    .line 47
    .local v8, "mapState":Landroid_maps_conflict_avoidance/com/google/map/MapState;
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    #@7
    move-result v13

    #@8
    if-nez v13, :cond_3

    #@a
    .line 71
    :cond_0
    move-object/from16 v0, p0

    #@c
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@e
    if-nez v13, :cond_4

    #@10
    .line 73
    :cond_1
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@13
    move-result-object v13

    #@14
    move-object/from16 v0, p0

    #@16
    move/from16 v1, p1

    #@18
    move/from16 v2, p2

    #@1a
    move-object/from16 v3, p3

    #@1c
    invoke-direct {v0, v13, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    #@1f
    .line 123
    :cond_2
    :goto_0
    return-void

    #@20
    .line 47
    :cond_3
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->isBillingRequiredForSatellite()Z

    #@23
    move-result v13

    #@24
    if-nez v13, :cond_0

    #@26
    .line 48
    return-void

    #@27
    .line 71
    :cond_4
    move-object/from16 v0, p0

    #@29
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2b
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2e
    move-result-object v14

    #@2f
    if-ne v13, v14, :cond_1

    #@31
    const/4 v9, 0x0

    #@32
    .line 76
    .local v9, "newBillPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    move-object/from16 v0, p0

    #@34
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@36
    move-object/from16 v0, p3

    #@38
    invoke-virtual {v0, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    #@3b
    move-result-object v12

    #@3c
    .line 80
    .local v12, "pixelOffset":Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getWidth()I

    #@3f
    move-result v13

    #@40
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getDisplayWidth()I

    #@43
    move-result v14

    #@44
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    #@47
    move-result v11

    #@48
    .line 81
    .local v11, "pageWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getHeight()I

    #@4b
    move-result v13

    #@4c
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getDisplayHeight()I

    #@4f
    move-result v14

    #@50
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    #@53
    move-result v10

    #@54
    .line 82
    .local v10, "pageHeight":I
    div-int/lit8 v7, v11, 0x2

    #@56
    .line 83
    .local v7, "halfWidth":I
    div-int/lit8 v6, v10, 0x2

    #@58
    .line 84
    .local v6, "halfHeight":I
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@5a
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    #@5d
    move-result v13

    #@5e
    if-le v13, v11, :cond_7

    #@60
    .line 87
    :cond_5
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@63
    move-result-object v9

    #@64
    .line 116
    .end local v9    # "newBillPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :goto_1
    if-eqz v9, :cond_2

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@6a
    if-nez v13, :cond_e

    #@6c
    .line 120
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    #@6e
    move/from16 v1, p1

    #@70
    move/from16 v2, p2

    #@72
    move-object/from16 v3, p3

    #@74
    invoke-direct {v0, v9, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    #@77
    goto :goto_0

    #@78
    .line 84
    .restart local v9    # "newBillPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :cond_7
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@7a
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    #@7d
    move-result v13

    #@7e
    if-gt v13, v10, :cond_5

    #@80
    const/4 v4, 0x0

    #@81
    .local v4, "dx":I
    const/4 v5, 0x0

    #@82
    .line 95
    .local v5, "dy":I
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@84
    neg-int v14, v7

    #@85
    if-lt v13, v14, :cond_9

    #@87
    .line 97
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@89
    if-gt v13, v7, :cond_a

    #@8b
    .line 101
    :goto_3
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@8d
    neg-int v14, v6

    #@8e
    if-lt v13, v14, :cond_b

    #@90
    .line 103
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@92
    if-gt v13, v6, :cond_c

    #@94
    .line 107
    :goto_4
    if-eqz v5, :cond_d

    #@96
    .line 109
    :cond_8
    move-object/from16 v0, p0

    #@98
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@9a
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@9d
    move-result-object v14

    #@9e
    invoke-virtual {v13, v4, v5, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@a1
    move-result-object v9

    #@a2
    .local v9, "newBillPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    goto :goto_1

    #@a3
    .line 96
    .local v9, "newBillPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :cond_9
    move v4, v11

    #@a4
    goto :goto_3

    #@a5
    .line 98
    :cond_a
    neg-int v4, v11

    #@a6
    goto :goto_3

    #@a7
    .line 102
    :cond_b
    move v5, v10

    #@a8
    goto :goto_4

    #@a9
    .line 104
    :cond_c
    neg-int v5, v10

    #@aa
    goto :goto_4

    #@ab
    .line 107
    :cond_d
    if-nez v4, :cond_8

    #@ad
    goto :goto_1

    #@ae
    .line 116
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v9    # "newBillPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :cond_e
    move-object/from16 v0, p0

    #@b0
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@b6
    if-ne v13, v14, :cond_6

    #@b8
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@bb
    move-result-object v13

    #@bc
    invoke-virtual {v13, v9}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J

    #@bf
    move-result-wide v14

    #@c0
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@c3
    move-result-object v13

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@c8
    move-object/from16 v16, v0

    #@ca
    move-object/from16 v0, v16

    #@cc
    invoke-virtual {v13, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J

    #@cf
    move-result-wide v16

    #@d0
    cmp-long v13, v14, v16

    #@d2
    if-ltz v13, :cond_f

    #@d4
    const/4 v13, 0x1

    #@d5
    :goto_5
    if-nez v13, :cond_2

    #@d7
    goto :goto_2

    #@d8
    :cond_f
    const/4 v13, 0x0

    #@d9
    goto :goto_5
.end method
