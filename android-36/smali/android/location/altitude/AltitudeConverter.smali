.class public final Landroid/location/altitude/AltitudeConverter;
.super Ljava/lang/Object;
.source "AltitudeConverter.java"


# static fields
.field private static final blacklist MAX_ABS_VALID_LATITUDE:D = 90.0

.field private static final blacklist MAX_ABS_VALID_LONGITUDE:D = 180.0


# instance fields
.field private final blacklist mGeoidMap:Lcom/android/internal/location/altitude/GeoidMap;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/location/altitude/GeoidMap;

    invoke-direct {v0}, Lcom/android/internal/location/altitude/GeoidMap;-><init>()V

    iput-object v0, p0, Landroid/location/altitude/AltitudeConverter;->mGeoidMap:Lcom/android/internal/location/altitude/GeoidMap;

    .line 60
    return-void
.end method

.method private static blacklist addMslAltitude(Lcom/android/internal/location/altitude/nano/MapParamsProto;[DLandroid/location/Location;)V
    .registers 28
    .param p0, "geoidHeightParams"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "geoidHeightsMeters"    # [D
    .param p2, "location"    # Landroid/location/Location;

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    .line 168
    .local v2, "h0":D
    const/4 v4, 0x1

    aget-wide v5, p1, v4

    .line 169
    .local v5, "h1":D
    const/4 v7, 0x2

    aget-wide v7, p1, v7

    .line 170
    .local v7, "h2":D
    const/4 v9, 0x3

    aget-wide v9, p1, v9

    .line 175
    .local v9, "h3":D
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 176
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    .line 175
    invoke-static {v11, v12, v13, v14}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromLatLngDegrees(DD)J

    move-result-wide v11

    .line 177
    .local v11, "s2CellId":J
    iget v13, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    rsub-int/lit8 v13, v13, 0x1e

    shl-int/2addr v4, v13

    int-to-double v13, v4

    .line 178
    .local v13, "sizeIj":D
    invoke-static {v11, v12}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getI(J)I

    move-result v4

    move-wide v15, v2

    .end local v2    # "h0":D
    .local v15, "h0":D
    int-to-double v2, v4

    rem-double/2addr v2, v13

    div-double/2addr v2, v13

    .line 179
    .local v2, "wi":D
    invoke-static {v11, v12}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getJ(J)I

    move-result v4

    move-wide/from16 v17, v2

    .end local v2    # "wi":D
    .local v17, "wi":D
    int-to-double v2, v4

    rem-double/2addr v2, v13

    div-double/2addr v2, v13

    .line 180
    .local v2, "wj":D
    sub-double v19, v5, v15

    mul-double v19, v19, v17

    add-double v19, v15, v19

    sub-double v21, v7, v15

    mul-double v21, v21, v2

    add-double v19, v19, v21

    sub-double v21, v9, v5

    sub-double v21, v21, v7

    add-double v21, v21, v15

    mul-double v21, v21, v17

    mul-double v21, v21, v2

    add-double v19, v19, v21

    .line 182
    .local v19, "offsetMeters":D
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v21

    move-wide/from16 v23, v2

    .end local v2    # "wj":D
    .local v23, "wj":D
    sub-double v2, v21, v19

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setMslAltitudeMeters(D)V

    .line 183
    invoke-virtual {v1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 184
    invoke-virtual {v1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v2

    float-to-double v2, v2

    .line 185
    .local v2, "verticalAccuracyMeters":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v4

    if-eqz v4, :cond_7a

    const-wide/16 v21, 0x0

    cmpl-double v4, v2, v21

    if-ltz v4, :cond_7a

    .line 186
    move-wide/from16 v21, v5

    .end local v5    # "h1":D
    .local v21, "h1":D
    iget-wide v4, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/location/Location;->setMslAltitudeAccuracyMeters(F)V

    goto :goto_7f

    .line 185
    .end local v21    # "h1":D
    .restart local v5    # "h1":D
    :cond_7a
    move-wide/from16 v21, v5

    .end local v5    # "h1":D
    .restart local v21    # "h1":D
    goto :goto_7f

    .line 183
    .end local v2    # "verticalAccuracyMeters":D
    .end local v21    # "h1":D
    .restart local v5    # "h1":D
    :cond_7d
    move-wide/from16 v21, v5

    .line 190
    .end local v5    # "h1":D
    .restart local v21    # "h1":D
    :goto_7f
    return-void
.end method

.method private static blacklist findCommonNeighbor([J[JJ)J
    .registers 14
    .param p0, "edgeNeighbors"    # [J
    .param p1, "otherEdgeNeighbors"    # [J
    .param p2, "z11"    # J

    .line 147
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1d

    aget-wide v3, p0, v2

    .line 148
    .local v3, "edgeNeighbor":J
    cmp-long v5, v3, p2

    if-nez v5, :cond_c

    .line 149
    goto :goto_1a

    .line 151
    :cond_c
    array-length v5, p1

    move v6, v1

    :goto_e
    if-ge v6, v5, :cond_1a

    aget-wide v7, p1, v6

    .line 152
    .local v7, "otherEdgeNeighbor":J
    cmp-long v9, v3, v7

    if-nez v9, :cond_17

    .line 153
    return-wide v3

    .line 151
    .end local v7    # "otherEdgeNeighbor":J
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 147
    .end local v3    # "edgeNeighbor":J
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 157
    :cond_1d
    return-wide p2
.end method

.method private static blacklist findMapSquare(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/location/Location;)[J
    .registers 41
    .param p0, "geoidHeightParams"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "location"    # Landroid/location/Location;

    .line 90
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 90
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromLatLngDegrees(DD)J

    move-result-wide v1

    .line 94
    .local v1, "s2CellId":J
    iget v3, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    rsub-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 95
    .local v3, "sizeIj":I
    const/high16 v5, 0x40000000    # 2.0f

    .line 96
    .local v5, "maxIj":I
    iget v6, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-static {v1, v2, v6}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v6

    .line 97
    .local v6, "z11":J
    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getFace(J)I

    move-result v8

    .line 98
    .local v8, "f11":I
    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getI(J)I

    move-result v9

    .line 99
    .local v9, "i1":I
    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getJ(J)I

    move-result v10

    .line 100
    .local v10, "j1":I
    add-int v11, v9, v3

    .line 101
    .local v11, "i2":I
    add-int v12, v10, v3

    .line 104
    .local v12, "j2":I
    const/4 v15, 0x4

    const/16 v16, 0x2

    if-ge v11, v5, :cond_67

    if-ge v12, v5, :cond_67

    .line 105
    const/16 v17, 0x3

    const/16 v18, 0x0

    invoke-static {v8, v11, v10}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFij(III)J

    move-result-wide v13

    move/from16 v19, v4

    iget v4, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-static {v13, v14, v4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v13

    .line 107
    move-wide/from16 v20, v1

    .end local v1    # "s2CellId":J
    .local v20, "s2CellId":J
    invoke-static {v8, v9, v12}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFij(III)J

    move-result-wide v1

    iget v4, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    .line 106
    invoke-static {v1, v2, v4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v1

    .line 108
    move-wide/from16 v22, v1

    invoke-static {v8, v11, v12}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFij(III)J

    move-result-wide v1

    iget v4, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-static {v1, v2, v4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v1

    new-array v4, v15, [J

    aput-wide v6, v4, v18

    aput-wide v13, v4, v19

    aput-wide v22, v4, v16

    aput-wide v1, v4, v17

    .line 105
    return-object v4

    .line 104
    .end local v20    # "s2CellId":J
    .restart local v1    # "s2CellId":J
    :cond_67
    move-wide/from16 v20, v1

    move/from16 v19, v4

    const/16 v17, 0x3

    const/16 v18, 0x0

    .line 113
    .end local v1    # "s2CellId":J
    .restart local v20    # "s2CellId":J
    new-array v1, v15, [J

    .line 114
    .local v1, "edgeNeighbors":[J
    invoke-static {v6, v7, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getEdgeNeighbors(J[J)V

    .line 115
    aget-wide v13, v1, v18

    .line 116
    .local v13, "z11W":J
    move v4, v3

    .end local v3    # "sizeIj":I
    .local v4, "sizeIj":I
    aget-wide v2, v1, v19

    .line 117
    .local v2, "z11S":J
    move/from16 v22, v8

    move/from16 v23, v9

    .end local v8    # "f11":I
    .end local v9    # "i1":I
    .local v22, "f11":I
    .local v23, "i1":I
    aget-wide v8, v1, v16

    .line 118
    .local v8, "z11E":J
    move/from16 v25, v4

    move/from16 v24, v5

    .end local v4    # "sizeIj":I
    .end local v5    # "maxIj":I
    .local v24, "maxIj":I
    .local v25, "sizeIj":I
    aget-wide v4, v1, v17

    .line 120
    .local v4, "z11N":J
    new-array v15, v15, [J

    .line 121
    .local v15, "otherEdgeNeighbors":[J
    invoke-static {v13, v14, v15}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getEdgeNeighbors(J[J)V

    .line 122
    invoke-static {v2, v3, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getEdgeNeighbors(J[J)V

    .line 123
    invoke-static {v1, v15, v6, v7}, Landroid/location/altitude/AltitudeConverter;->findCommonNeighbor([J[JJ)J

    move-result-wide v26

    .line 124
    .local v26, "z11Sw":J
    invoke-static {v8, v9, v15}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getEdgeNeighbors(J[J)V

    .line 125
    invoke-static {v1, v15, v6, v7}, Landroid/location/altitude/AltitudeConverter;->findCommonNeighbor([J[JJ)J

    move-result-wide v28

    .line 126
    .local v28, "z11Se":J
    invoke-static {v4, v5, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getEdgeNeighbors(J[J)V

    .line 127
    invoke-static {v1, v15, v6, v7}, Landroid/location/altitude/AltitudeConverter;->findCommonNeighbor([J[JJ)J

    move-result-wide v30

    .line 129
    .local v30, "z11Ne":J
    rem-int/lit8 v0, v22, 0x2

    move-object/from16 v32, v1

    move/from16 v1, v19

    .end local v1    # "edgeNeighbors":[J
    .local v32, "edgeNeighbors":[J
    if-ne v0, v1, :cond_ae

    move/from16 v0, v24

    .end local v24    # "maxIj":I
    .local v0, "maxIj":I
    if-lt v11, v0, :cond_b0

    move-wide/from16 v33, v26

    goto :goto_b2

    .end local v0    # "maxIj":I
    .restart local v24    # "maxIj":I
    :cond_ae
    move/from16 v0, v24

    .end local v24    # "maxIj":I
    .restart local v0    # "maxIj":I
    :cond_b0
    move-wide/from16 v33, v2

    .line 130
    .local v33, "z21":J
    :goto_b2
    rem-int/lit8 v1, v22, 0x2

    if-nez v1, :cond_bb

    if-lt v12, v0, :cond_bb

    move-wide/from16 v35, v30

    goto :goto_bd

    :cond_bb
    move-wide/from16 v35, v8

    .line 131
    .local v35, "z12":J
    :goto_bd
    cmp-long v1, v33, v26

    if-nez v1, :cond_c4

    move-wide/from16 v37, v2

    goto :goto_cd

    :cond_c4
    cmp-long v1, v35, v30

    if-nez v1, :cond_cb

    move-wide/from16 v37, v8

    goto :goto_cd

    :cond_cb
    move-wide/from16 v37, v28

    .line 134
    .local v37, "z22":J
    :goto_cd
    aput-wide v6, v32, v18

    .line 135
    const/16 v19, 0x1

    aput-wide v33, v32, v19

    .line 136
    aput-wide v35, v32, v16

    .line 137
    aput-wide v37, v32, v17

    .line 138
    return-object v32
.end method

.method private static blacklist isFiniteAndAtAbsMost(DD)Z
    .registers 6
    .param p0, "value"    # D
    .param p2, "rhs"    # D

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist validate(Landroid/location/Location;)V
    .registers 5
    .param p0, "location"    # Landroid/location/Location;

    .line 67
    nop

    .line 68
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-static {v0, v1, v2, v3}, Landroid/location/altitude/AltitudeConverter;->isFiniteAndAtAbsMost(DD)Z

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 67
    const-string v2, "Invalid latitude: %f"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    invoke-static {v0, v1, v2, v3}, Landroid/location/altitude/AltitudeConverter;->isFiniteAndAtAbsMost(DD)Z

    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 70
    const-string v2, "Invalid longitude: %f"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const-string v1, "Missing altitude above WGS84"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    .line 75
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 74
    const-string v2, "Invalid altitude above WGS84: %f"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist addMslAltitudeToLocation(Landroid/content/Context;Landroid/location/Location;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-static {p2}, Landroid/location/altitude/AltitudeConverter;->validate(Landroid/location/Location;)V

    .line 210
    invoke-static {p1}, Lcom/android/internal/location/altitude/GeoidMap;->getGeoidHeightParams(Landroid/content/Context;)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v0

    .line 211
    .local v0, "geoidHeightParams":Lcom/android/internal/location/altitude/nano/MapParamsProto;
    invoke-static {v0, p2}, Landroid/location/altitude/AltitudeConverter;->findMapSquare(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/location/Location;)[J

    move-result-object v1

    .line 212
    .local v1, "mapCells":[J
    iget-object v2, p0, Landroid/location/altitude/AltitudeConverter;->mGeoidMap:Lcom/android/internal/location/altitude/GeoidMap;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/location/altitude/GeoidMap;->readGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[J)[D

    move-result-object v2

    .line 214
    .local v2, "geoidHeightsMeters":[D
    invoke-static {v0, v2, p2}, Landroid/location/altitude/AltitudeConverter;->addMslAltitude(Lcom/android/internal/location/altitude/nano/MapParamsProto;[DLandroid/location/Location;)V

    .line 215
    return-void
.end method

.method public blacklist getGeoidHeight(Landroid/content/Context;Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Landroid/frameworks/location/altitude/GetGeoidHeightRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "location":Landroid/location/Location;
    iget-wide v1, p2, Landroid/frameworks/location/altitude/GetGeoidHeightRequest;->latitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 283
    iget-wide v1, p2, Landroid/frameworks/location/altitude/GetGeoidHeightRequest;->longitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 284
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 287
    invoke-virtual {p0, p1, v0}, Landroid/location/altitude/AltitudeConverter;->addMslAltitudeToLocation(Landroid/content/Context;Landroid/location/Location;)V

    .line 290
    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeMeters()D

    move-result-wide v1

    neg-double v1, v1

    .line 293
    .local v1, "geoidHeightMeters":D
    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeAccuracyMeters()F

    move-result v3

    .line 295
    .local v3, "geoidHeightErrorMeters":F
    invoke-static {p1}, Lcom/android/internal/location/altitude/GeoidMap;->getExpirationDistanceParams(Landroid/content/Context;)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v4

    .line 296
    .local v4, "expirationDistanceParams":Lcom/android/internal/location/altitude/nano/MapParamsProto;
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 297
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 296
    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromLatLngDegrees(DD)J

    move-result-wide v5

    .line 298
    .local v5, "s2CellId":J
    iget v7, v4, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-static {v5, v6, v7}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v7

    const/4 v9, 0x1

    new-array v10, v9, [J

    const/4 v11, 0x0

    aput-wide v7, v10, v11

    .line 299
    .local v10, "mapCell":[J
    iget-object v7, p0, Landroid/location/altitude/AltitudeConverter;->mGeoidMap:Lcom/android/internal/location/altitude/GeoidMap;

    invoke-virtual {v7, v4, p1, v10}, Lcom/android/internal/location/altitude/GeoidMap;->readExpirationDistances(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[J)[D

    move-result-object v7

    aget-wide v7, v7, v11

    .line 301
    .local v7, "expirationDistanceMeters":D
    iget-wide v11, v4, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelRmseMeters:D

    double-to-float v11, v11

    .line 303
    .local v11, "additionalGeoidHeightErrorMeters":F
    new-instance v12, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    invoke-direct {v12}, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;-><init>()V

    .line 304
    .local v12, "response":Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    iput-wide v1, v12, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->geoidHeightMeters:D

    .line 305
    iput v3, v12, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->geoidHeightErrorMeters:F

    .line 306
    iput-wide v7, v12, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->expirationDistanceMeters:D

    .line 307
    iput v11, v12, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->additionalGeoidHeightErrorMeters:F

    .line 308
    iput-boolean v9, v12, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->success:Z

    .line 309
    return-object v12
.end method

.method public whitelist tryAddMslAltitudeToLocation(Landroid/location/Location;)Z
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .line 246
    invoke-static {p1}, Landroid/location/altitude/AltitudeConverter;->validate(Landroid/location/Location;)V

    .line 247
    invoke-static {}, Lcom/android/internal/location/altitude/GeoidMap;->getGeoidHeightParams()Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v0

    .line 248
    .local v0, "geoidHeightParams":Lcom/android/internal/location/altitude/nano/MapParamsProto;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 249
    return v1

    .line 252
    :cond_b
    invoke-static {v0, p1}, Landroid/location/altitude/AltitudeConverter;->findMapSquare(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/location/Location;)[J

    move-result-object v2

    .line 253
    .local v2, "mapCells":[J
    iget-object v3, p0, Landroid/location/altitude/AltitudeConverter;->mGeoidMap:Lcom/android/internal/location/altitude/GeoidMap;

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/location/altitude/GeoidMap;->readGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)[D

    move-result-object v3

    .line 254
    .local v3, "geoidHeightsMeters":[D
    if-nez v3, :cond_18

    .line 255
    return v1

    .line 258
    :cond_18
    invoke-static {v0, v3, p1}, Landroid/location/altitude/AltitudeConverter;->addMslAltitude(Lcom/android/internal/location/altitude/nano/MapParamsProto;[DLandroid/location/Location;)V

    .line 259
    const/4 v1, 0x1

    return v1
.end method
