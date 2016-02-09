.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F


# instance fields
.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 85
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [F

    #@4
    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    #@6
    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    .line 88
    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    #@a
    .line 370
    return-void
.end method

.method public static getAltitude(FF)F
    .locals 6
    .param p0, "p0"    # F
    .param p1, "p"    # F

    #@0
    .prologue
    .line 1313
    const v0, 0x3e42dcae

    #@3
    .line 1314
    .local v0, "coef":F
    div-float v1, p1, p0

    #@5
    float-to-double v2, v1

    #@6
    const-wide v4, 0x3fc85b95c0000000L    # 0.19029495120048523

    #@b
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@e
    move-result-wide v2

    #@f
    double-to-float v1, v2

    #@10
    const/high16 v2, 0x3f800000    # 1.0f

    #@12
    sub-float v1, v2, v1

    #@14
    const v2, 0x472d2a00    # 44330.0f

    #@17
    mul-float/2addr v1, v2

    #@18
    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 30
    .param p0, "angleChange"    # [F
    .param p1, "R"    # [F
    .param p2, "prevR"    # [F

    #@0
    .prologue
    .line 1348
    const/4 v11, 0x0

    #@1
    .local v11, "rd1":F
    const/4 v12, 0x0

    #@2
    .local v12, "rd4":F
    const/4 v13, 0x0

    #@3
    .local v13, "rd6":F
    const/4 v14, 0x0

    #@4
    .local v14, "rd7":F
    const/4 v15, 0x0

    #@5
    .line 1349
    .local v15, "rd8":F
    const/16 v16, 0x0

    #@7
    .local v16, "ri0":F
    const/16 v17, 0x0

    #@9
    .local v17, "ri1":F
    const/16 v18, 0x0

    #@b
    .local v18, "ri2":F
    const/16 v19, 0x0

    #@d
    .local v19, "ri3":F
    const/16 v20, 0x0

    #@f
    .local v20, "ri4":F
    const/16 v21, 0x0

    #@11
    .local v21, "ri5":F
    const/16 v22, 0x0

    #@13
    .local v22, "ri6":F
    const/16 v23, 0x0

    #@15
    .local v23, "ri7":F
    const/16 v24, 0x0

    #@17
    .line 1350
    .local v24, "ri8":F
    const/4 v2, 0x0

    #@18
    .local v2, "pri0":F
    const/4 v3, 0x0

    #@19
    .local v3, "pri1":F
    const/4 v4, 0x0

    #@1a
    .local v4, "pri2":F
    const/4 v5, 0x0

    #@1b
    .local v5, "pri3":F
    const/4 v6, 0x0

    #@1c
    .local v6, "pri4":F
    const/4 v7, 0x0

    #@1d
    .local v7, "pri5":F
    const/4 v8, 0x0

    #@1e
    .local v8, "pri6":F
    const/4 v9, 0x0

    #@1f
    .local v9, "pri7":F
    const/4 v10, 0x0

    #@20
    .line 1352
    .local v10, "pri8":F
    move-object/from16 v0, p1

    #@22
    array-length v0, v0

    #@23
    move/from16 v25, v0

    #@25
    const/16 v26, 0x9

    #@27
    move/from16 v0, v25

    #@29
    move/from16 v1, v26

    #@2b
    if-ne v0, v1, :cond_2

    #@2d
    .line 1353
    const/16 v25, 0x0

    #@2f
    aget v16, p1, v25

    #@31
    .line 1354
    const/16 v25, 0x1

    #@33
    aget v17, p1, v25

    #@35
    .line 1355
    const/16 v25, 0x2

    #@37
    aget v18, p1, v25

    #@39
    .line 1356
    const/16 v25, 0x3

    #@3b
    aget v19, p1, v25

    #@3d
    .line 1357
    const/16 v25, 0x4

    #@3f
    aget v20, p1, v25

    #@41
    .line 1358
    const/16 v25, 0x5

    #@43
    aget v21, p1, v25

    #@45
    .line 1359
    const/16 v25, 0x6

    #@47
    aget v22, p1, v25

    #@49
    .line 1360
    const/16 v25, 0x7

    #@4b
    aget v23, p1, v25

    #@4d
    .line 1361
    const/16 v25, 0x8

    #@4f
    aget v24, p1, v25

    #@51
    .line 1374
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    #@53
    array-length v0, v0

    #@54
    move/from16 v25, v0

    #@56
    const/16 v26, 0x9

    #@58
    move/from16 v0, v25

    #@5a
    move/from16 v1, v26

    #@5c
    if-ne v0, v1, :cond_3

    #@5e
    .line 1375
    const/16 v25, 0x0

    #@60
    aget v2, p2, v25

    #@62
    .line 1376
    const/16 v25, 0x1

    #@64
    aget v3, p2, v25

    #@66
    .line 1377
    const/16 v25, 0x2

    #@68
    aget v4, p2, v25

    #@6a
    .line 1378
    const/16 v25, 0x3

    #@6c
    aget v5, p2, v25

    #@6e
    .line 1379
    const/16 v25, 0x4

    #@70
    aget v6, p2, v25

    #@72
    .line 1380
    const/16 v25, 0x5

    #@74
    aget v7, p2, v25

    #@76
    .line 1381
    const/16 v25, 0x6

    #@78
    aget v8, p2, v25

    #@7a
    .line 1382
    const/16 v25, 0x7

    #@7c
    aget v9, p2, v25

    #@7e
    .line 1383
    const/16 v25, 0x8

    #@80
    aget v10, p2, v25

    #@82
    .line 1399
    :cond_1
    :goto_1
    mul-float v25, v2, v17

    #@84
    mul-float v26, v5, v20

    #@86
    add-float v25, v25, v26

    #@88
    mul-float v26, v8, v23

    #@8a
    add-float v11, v25, v26

    #@8c
    .line 1400
    mul-float v25, v3, v17

    #@8e
    mul-float v26, v6, v20

    #@90
    add-float v25, v25, v26

    #@92
    mul-float v26, v9, v23

    #@94
    add-float v12, v25, v26

    #@96
    .line 1401
    mul-float v25, v4, v16

    #@98
    mul-float v26, v7, v19

    #@9a
    add-float v25, v25, v26

    #@9c
    mul-float v26, v10, v22

    #@9e
    add-float v13, v25, v26

    #@a0
    .line 1402
    mul-float v25, v4, v17

    #@a2
    mul-float v26, v7, v20

    #@a4
    add-float v25, v25, v26

    #@a6
    mul-float v26, v10, v23

    #@a8
    add-float v14, v25, v26

    #@aa
    .line 1403
    mul-float v25, v4, v18

    #@ac
    mul-float v26, v7, v21

    #@ae
    add-float v25, v25, v26

    #@b0
    mul-float v26, v10, v24

    #@b2
    add-float v15, v25, v26

    #@b4
    .line 1405
    float-to-double v0, v11

    #@b5
    move-wide/from16 v26, v0

    #@b7
    float-to-double v0, v12

    #@b8
    move-wide/from16 v28, v0

    #@ba
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    #@bd
    move-result-wide v26

    #@be
    move-wide/from16 v0, v26

    #@c0
    double-to-float v0, v0

    #@c1
    move/from16 v25, v0

    #@c3
    const/16 v26, 0x0

    #@c5
    aput v25, p0, v26

    #@c7
    .line 1406
    neg-float v0, v14

    #@c8
    move/from16 v25, v0

    #@ca
    move/from16 v0, v25

    #@cc
    float-to-double v0, v0

    #@cd
    move-wide/from16 v26, v0

    #@cf
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    #@d2
    move-result-wide v26

    #@d3
    move-wide/from16 v0, v26

    #@d5
    double-to-float v0, v0

    #@d6
    move/from16 v25, v0

    #@d8
    const/16 v26, 0x1

    #@da
    aput v25, p0, v26

    #@dc
    .line 1407
    neg-float v0, v13

    #@dd
    move/from16 v25, v0

    #@df
    move/from16 v0, v25

    #@e1
    float-to-double v0, v0

    #@e2
    move-wide/from16 v26, v0

    #@e4
    float-to-double v0, v15

    #@e5
    move-wide/from16 v28, v0

    #@e7
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    #@ea
    move-result-wide v26

    #@eb
    move-wide/from16 v0, v26

    #@ed
    double-to-float v0, v0

    #@ee
    move/from16 v25, v0

    #@f0
    const/16 v26, 0x2

    #@f2
    aput v25, p0, v26

    #@f4
    .line 1347
    return-void

    #@f5
    .line 1362
    :cond_2
    move-object/from16 v0, p1

    #@f7
    array-length v0, v0

    #@f8
    move/from16 v25, v0

    #@fa
    const/16 v26, 0x10

    #@fc
    move/from16 v0, v25

    #@fe
    move/from16 v1, v26

    #@100
    if-ne v0, v1, :cond_0

    #@102
    .line 1363
    const/16 v25, 0x0

    #@104
    aget v16, p1, v25

    #@106
    .line 1364
    const/16 v25, 0x1

    #@108
    aget v17, p1, v25

    #@10a
    .line 1365
    const/16 v25, 0x2

    #@10c
    aget v18, p1, v25

    #@10e
    .line 1366
    const/16 v25, 0x4

    #@110
    aget v19, p1, v25

    #@112
    .line 1367
    const/16 v25, 0x5

    #@114
    aget v20, p1, v25

    #@116
    .line 1368
    const/16 v25, 0x6

    #@118
    aget v21, p1, v25

    #@11a
    .line 1369
    const/16 v25, 0x8

    #@11c
    aget v22, p1, v25

    #@11e
    .line 1370
    const/16 v25, 0x9

    #@120
    aget v23, p1, v25

    #@122
    .line 1371
    const/16 v25, 0xa

    #@124
    aget v24, p1, v25

    #@126
    goto/16 :goto_0

    #@128
    .line 1384
    :cond_3
    move-object/from16 v0, p2

    #@12a
    array-length v0, v0

    #@12b
    move/from16 v25, v0

    #@12d
    const/16 v26, 0x10

    #@12f
    move/from16 v0, v25

    #@131
    move/from16 v1, v26

    #@133
    if-ne v0, v1, :cond_1

    #@135
    .line 1385
    const/16 v25, 0x0

    #@137
    aget v2, p2, v25

    #@139
    .line 1386
    const/16 v25, 0x1

    #@13b
    aget v3, p2, v25

    #@13d
    .line 1387
    const/16 v25, 0x2

    #@13f
    aget v4, p2, v25

    #@141
    .line 1388
    const/16 v25, 0x4

    #@143
    aget v5, p2, v25

    #@145
    .line 1389
    const/16 v25, 0x5

    #@147
    aget v6, p2, v25

    #@149
    .line 1390
    const/16 v25, 0x6

    #@14b
    aget v7, p2, v25

    #@14d
    .line 1391
    const/16 v25, 0x8

    #@14f
    aget v8, p2, v25

    #@151
    .line 1392
    const/16 v25, 0x9

    #@153
    aget v9, p2, v25

    #@155
    .line 1393
    const/16 v25, 0xa

    #@157
    aget v10, p2, v25

    #@159
    goto/16 :goto_1
.end method

.method private static getDelay(I)I
    .locals 1
    .param p0, "rate"    # I

    #@0
    .prologue
    .line 1667
    const/4 v0, -0x1

    #@1
    .line 1668
    .local v0, "delay":I
    packed-switch p0, :pswitch_data_0

    #@4
    .line 1682
    move v0, p0

    #@5
    .line 1685
    :goto_0
    return v0

    #@6
    .line 1670
    :pswitch_0
    const/4 v0, 0x0

    #@7
    .line 1671
    goto :goto_0

    #@8
    .line 1673
    :pswitch_1
    const/16 v0, 0x4e20

    #@a
    .line 1674
    goto :goto_0

    #@b
    .line 1676
    :pswitch_2
    const v0, 0x1046b

    #@e
    .line 1677
    goto :goto_0

    #@f
    .line 1679
    :pswitch_3
    const v0, 0x30d40

    #@12
    .line 1680
    goto :goto_0

    #@13
    .line 1668
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInclination([F)F
    .locals 4
    .param p0, "I"    # [F

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 1066
    array-length v0, p0

    #@2
    const/16 v1, 0x9

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1067
    aget v0, p0, v2

    #@8
    float-to-double v0, v0

    #@9
    const/4 v2, 0x4

    #@a
    aget v2, p0, v2

    #@c
    float-to-double v2, v2

    #@d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@10
    move-result-wide v0

    #@11
    double-to-float v0, v0

    #@12
    return v0

    #@13
    .line 1069
    :cond_0
    const/4 v0, 0x6

    #@14
    aget v0, p0, v0

    #@16
    float-to-double v0, v0

    #@17
    aget v2, p0, v2

    #@19
    float-to-double v2, v2

    #@1a
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@1d
    move-result-wide v0

    #@1e
    double-to-float v0, v0

    #@1f
    return v0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    #@0
    .prologue
    .line 1656
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1657
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1658
    const-string/jumbo v0, "SensorManager"

    #@a
    const-string/jumbo v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    #@d
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1660
    new-instance v0, Landroid/hardware/LegacySensorManager;

    #@12
    invoke-direct {v0, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    #@15
    iput-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    #@17
    .line 1662
    :cond_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    .line 1656
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public static getOrientation([F[F)[F
    .locals 9
    .param p0, "R"    # [F
    .param p1, "values"    # [F

    #@0
    .prologue
    const/16 v8, 0x9

    #@2
    const/16 v7, 0x8

    #@4
    const/4 v6, 0x2

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v4, 0x1

    #@7
    .line 1270
    array-length v0, p0

    #@8
    if-ne v0, v8, :cond_0

    #@a
    .line 1271
    aget v0, p0, v4

    #@c
    float-to-double v0, v0

    #@d
    const/4 v2, 0x4

    #@e
    aget v2, p0, v2

    #@10
    float-to-double v2, v2

    #@11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@14
    move-result-wide v0

    #@15
    double-to-float v0, v0

    #@16
    aput v0, p1, v5

    #@18
    .line 1272
    const/4 v0, 0x7

    #@19
    aget v0, p0, v0

    #@1b
    neg-float v0, v0

    #@1c
    float-to-double v0, v0

    #@1d
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    #@20
    move-result-wide v0

    #@21
    double-to-float v0, v0

    #@22
    aput v0, p1, v4

    #@24
    .line 1273
    const/4 v0, 0x6

    #@25
    aget v0, p0, v0

    #@27
    neg-float v0, v0

    #@28
    float-to-double v0, v0

    #@29
    aget v2, p0, v7

    #@2b
    float-to-double v2, v2

    #@2c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@2f
    move-result-wide v0

    #@30
    double-to-float v0, v0

    #@31
    aput v0, p1, v6

    #@33
    .line 1280
    :goto_0
    return-object p1

    #@34
    .line 1275
    :cond_0
    aget v0, p0, v4

    #@36
    float-to-double v0, v0

    #@37
    const/4 v2, 0x5

    #@38
    aget v2, p0, v2

    #@3a
    float-to-double v2, v2

    #@3b
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@3e
    move-result-wide v0

    #@3f
    double-to-float v0, v0

    #@40
    aput v0, p1, v5

    #@42
    .line 1276
    aget v0, p0, v8

    #@44
    neg-float v0, v0

    #@45
    float-to-double v0, v0

    #@46
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    #@49
    move-result-wide v0

    #@4a
    double-to-float v0, v0

    #@4b
    aput v0, p1, v4

    #@4d
    .line 1277
    aget v0, p0, v7

    #@4f
    neg-float v0, v0

    #@50
    float-to-double v0, v0

    #@51
    const/16 v2, 0xa

    #@53
    aget v2, p0, v2

    #@55
    float-to-double v2, v2

    #@56
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@59
    move-result-wide v0

    #@5a
    double-to-float v0, v0

    #@5b
    aput v0, p1, v6

    #@5d
    goto :goto_0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 8
    .param p0, "Q"    # [F
    .param p1, "rv"    # [F

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 1494
    array-length v1, p1

    #@6
    const/4 v2, 0x4

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 1495
    aget v0, p1, v7

    #@b
    aput v0, p0, v4

    #@d
    .line 1500
    :goto_0
    aget v0, p1, v4

    #@f
    aput v0, p0, v5

    #@11
    .line 1501
    aget v0, p1, v5

    #@13
    aput v0, p0, v6

    #@15
    .line 1502
    aget v0, p1, v6

    #@17
    aput v0, p0, v7

    #@19
    .line 1493
    return-void

    #@1a
    .line 1497
    :cond_0
    aget v1, p1, v4

    #@1c
    aget v2, p1, v4

    #@1e
    mul-float/2addr v1, v2

    #@1f
    const/high16 v2, 0x3f800000    # 1.0f

    #@21
    sub-float v1, v2, v1

    #@23
    aget v2, p1, v5

    #@25
    aget v3, p1, v5

    #@27
    mul-float/2addr v2, v3

    #@28
    sub-float/2addr v1, v2

    #@29
    aget v2, p1, v6

    #@2b
    aget v3, p1, v6

    #@2d
    mul-float/2addr v2, v3

    #@2e
    sub-float/2addr v1, v2

    #@2f
    aput v1, p0, v4

    #@31
    .line 1498
    aget v1, p0, v4

    #@33
    cmpl-float v1, v1, v0

    #@35
    if-lez v1, :cond_1

    #@37
    aget v0, p0, v4

    #@39
    float-to-double v0, v0

    #@3a
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@3d
    move-result-wide v0

    #@3e
    double-to-float v0, v0

    #@3f
    :cond_1
    aput v0, p0, v4

    #@41
    goto :goto_0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 26
    .param p0, "R"    # [F
    .param p1, "I"    # [F
    .param p2, "gravity"    # [F
    .param p3, "geomagnetic"    # [F

    #@0
    .prologue
    .line 981
    const/16 v23, 0x0

    #@2
    aget v2, p2, v23

    #@4
    .line 982
    .local v2, "Ax":F
    const/16 v23, 0x1

    #@6
    aget v3, p2, v23

    #@8
    .line 983
    .local v3, "Ay":F
    const/16 v23, 0x2

    #@a
    aget v4, p2, v23

    #@c
    .line 985
    .local v4, "Az":F
    mul-float v23, v2, v2

    #@e
    mul-float v24, v3, v3

    #@10
    add-float v23, v23, v24

    #@12
    mul-float v24, v4, v4

    #@14
    add-float v21, v23, v24

    #@16
    .line 986
    .local v21, "normsqA":F
    const v16, 0x411cf5c3    # 9.81f

    #@19
    .line 987
    .local v16, "g":F
    const v15, 0x3f765d4b

    #@1c
    .line 988
    .local v15, "freeFallGravitySquared":F
    const v23, 0x3f765d4b

    #@1f
    cmpg-float v23, v21, v23

    #@21
    if-gez v23, :cond_0

    #@23
    .line 990
    const/16 v23, 0x0

    #@25
    return v23

    #@26
    .line 993
    :cond_0
    const/16 v23, 0x0

    #@28
    aget v5, p3, v23

    #@2a
    .line 994
    .local v5, "Ex":F
    const/16 v23, 0x1

    #@2c
    aget v6, p3, v23

    #@2e
    .line 995
    .local v6, "Ey":F
    const/16 v23, 0x2

    #@30
    aget v7, p3, v23

    #@32
    .line 996
    .local v7, "Ez":F
    mul-float v23, v6, v4

    #@34
    mul-float v24, v7, v3

    #@36
    sub-float v8, v23, v24

    #@38
    .line 997
    .local v8, "Hx":F
    mul-float v23, v7, v2

    #@3a
    mul-float v24, v5, v4

    #@3c
    sub-float v9, v23, v24

    #@3e
    .line 998
    .local v9, "Hy":F
    mul-float v23, v5, v3

    #@40
    mul-float v24, v6, v2

    #@42
    sub-float v10, v23, v24

    #@44
    .line 999
    .local v10, "Hz":F
    mul-float v23, v8, v8

    #@46
    mul-float v24, v9, v9

    #@48
    add-float v23, v23, v24

    #@4a
    mul-float v24, v10, v10

    #@4c
    add-float v23, v23, v24

    #@4e
    move/from16 v0, v23

    #@50
    float-to-double v0, v0

    #@51
    move-wide/from16 v24, v0

    #@53
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    #@56
    move-result-wide v24

    #@57
    move-wide/from16 v0, v24

    #@59
    double-to-float v0, v0

    #@5a
    move/from16 v20, v0

    #@5c
    .line 1001
    .local v20, "normH":F
    const v23, 0x3dcccccd    # 0.1f

    #@5f
    cmpg-float v23, v20, v23

    #@61
    if-gez v23, :cond_1

    #@63
    .line 1004
    const/16 v23, 0x0

    #@65
    return v23

    #@66
    .line 1006
    :cond_1
    const/high16 v23, 0x3f800000    # 1.0f

    #@68
    div-float v19, v23, v20

    #@6a
    .line 1007
    .local v19, "invH":F
    mul-float v8, v8, v19

    #@6c
    .line 1008
    mul-float v9, v9, v19

    #@6e
    .line 1009
    mul-float v10, v10, v19

    #@70
    .line 1010
    mul-float v23, v2, v2

    #@72
    mul-float v24, v3, v3

    #@74
    add-float v23, v23, v24

    #@76
    mul-float v24, v4, v4

    #@78
    add-float v23, v23, v24

    #@7a
    move/from16 v0, v23

    #@7c
    float-to-double v0, v0

    #@7d
    move-wide/from16 v24, v0

    #@7f
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    #@82
    move-result-wide v24

    #@83
    move-wide/from16 v0, v24

    #@85
    double-to-float v0, v0

    #@86
    move/from16 v23, v0

    #@88
    const/high16 v24, 0x3f800000    # 1.0f

    #@8a
    div-float v17, v24, v23

    #@8c
    .line 1011
    .local v17, "invA":F
    mul-float v2, v2, v17

    #@8e
    .line 1012
    mul-float v3, v3, v17

    #@90
    .line 1013
    mul-float v4, v4, v17

    #@92
    .line 1014
    mul-float v23, v3, v10

    #@94
    mul-float v24, v4, v9

    #@96
    sub-float v11, v23, v24

    #@98
    .line 1015
    .local v11, "Mx":F
    mul-float v23, v4, v8

    #@9a
    mul-float v24, v2, v10

    #@9c
    sub-float v12, v23, v24

    #@9e
    .line 1016
    .local v12, "My":F
    mul-float v23, v2, v9

    #@a0
    mul-float v24, v3, v8

    #@a2
    sub-float v13, v23, v24

    #@a4
    .line 1017
    .local v13, "Mz":F
    if-eqz p0, :cond_2

    #@a6
    .line 1018
    move-object/from16 v0, p0

    #@a8
    array-length v0, v0

    #@a9
    move/from16 v23, v0

    #@ab
    const/16 v24, 0x9

    #@ad
    move/from16 v0, v23

    #@af
    move/from16 v1, v24

    #@b1
    if-ne v0, v1, :cond_4

    #@b3
    .line 1019
    const/16 v23, 0x0

    #@b5
    aput v8, p0, v23

    #@b7
    const/16 v23, 0x1

    #@b9
    aput v9, p0, v23

    #@bb
    const/16 v23, 0x2

    #@bd
    aput v10, p0, v23

    #@bf
    .line 1020
    const/16 v23, 0x3

    #@c1
    aput v11, p0, v23

    #@c3
    const/16 v23, 0x4

    #@c5
    aput v12, p0, v23

    #@c7
    const/16 v23, 0x5

    #@c9
    aput v13, p0, v23

    #@cb
    .line 1021
    const/16 v23, 0x6

    #@cd
    aput v2, p0, v23

    #@cf
    const/16 v23, 0x7

    #@d1
    aput v3, p0, v23

    #@d3
    const/16 v23, 0x8

    #@d5
    aput v4, p0, v23

    #@d7
    .line 1029
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    #@d9
    .line 1033
    mul-float v23, v5, v5

    #@db
    mul-float v24, v6, v6

    #@dd
    add-float v23, v23, v24

    #@df
    mul-float v24, v7, v7

    #@e1
    add-float v23, v23, v24

    #@e3
    move/from16 v0, v23

    #@e5
    float-to-double v0, v0

    #@e6
    move-wide/from16 v24, v0

    #@e8
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    #@eb
    move-result-wide v24

    #@ec
    move-wide/from16 v0, v24

    #@ee
    double-to-float v0, v0

    #@ef
    move/from16 v23, v0

    #@f1
    const/high16 v24, 0x3f800000    # 1.0f

    #@f3
    div-float v18, v24, v23

    #@f5
    .line 1034
    .local v18, "invE":F
    mul-float v23, v5, v11

    #@f7
    mul-float v24, v6, v12

    #@f9
    add-float v23, v23, v24

    #@fb
    mul-float v24, v7, v13

    #@fd
    add-float v23, v23, v24

    #@ff
    mul-float v14, v23, v18

    #@101
    .line 1035
    .local v14, "c":F
    mul-float v23, v5, v2

    #@103
    mul-float v24, v6, v3

    #@105
    add-float v23, v23, v24

    #@107
    mul-float v24, v7, v4

    #@109
    add-float v23, v23, v24

    #@10b
    mul-float v22, v23, v18

    #@10d
    .line 1036
    .local v22, "s":F
    move-object/from16 v0, p1

    #@10f
    array-length v0, v0

    #@110
    move/from16 v23, v0

    #@112
    const/16 v24, 0x9

    #@114
    move/from16 v0, v23

    #@116
    move/from16 v1, v24

    #@118
    if-ne v0, v1, :cond_5

    #@11a
    .line 1037
    const/high16 v23, 0x3f800000    # 1.0f

    #@11c
    const/16 v24, 0x0

    #@11e
    aput v23, p1, v24

    #@120
    const/16 v23, 0x0

    #@122
    const/16 v24, 0x1

    #@124
    aput v23, p1, v24

    #@126
    const/16 v23, 0x0

    #@128
    const/16 v24, 0x2

    #@12a
    aput v23, p1, v24

    #@12c
    .line 1038
    const/16 v23, 0x0

    #@12e
    const/16 v24, 0x3

    #@130
    aput v23, p1, v24

    #@132
    const/16 v23, 0x4

    #@134
    aput v14, p1, v23

    #@136
    const/16 v23, 0x5

    #@138
    aput v22, p1, v23

    #@13a
    .line 1039
    const/16 v23, 0x0

    #@13c
    const/16 v24, 0x6

    #@13e
    aput v23, p1, v24

    #@140
    move/from16 v0, v22

    #@142
    neg-float v0, v0

    #@143
    move/from16 v23, v0

    #@145
    const/16 v24, 0x7

    #@147
    aput v23, p1, v24

    #@149
    const/16 v23, 0x8

    #@14b
    aput v14, p1, v23

    #@14d
    .line 1048
    .end local v14    # "c":F
    .end local v18    # "invE":F
    .end local v22    # "s":F
    :cond_3
    :goto_1
    const/16 v23, 0x1

    #@14f
    return v23

    #@150
    .line 1022
    :cond_4
    move-object/from16 v0, p0

    #@152
    array-length v0, v0

    #@153
    move/from16 v23, v0

    #@155
    const/16 v24, 0x10

    #@157
    move/from16 v0, v23

    #@159
    move/from16 v1, v24

    #@15b
    if-ne v0, v1, :cond_2

    #@15d
    .line 1023
    const/16 v23, 0x0

    #@15f
    aput v8, p0, v23

    #@161
    const/16 v23, 0x1

    #@163
    aput v9, p0, v23

    #@165
    const/16 v23, 0x2

    #@167
    aput v10, p0, v23

    #@169
    const/16 v23, 0x0

    #@16b
    const/16 v24, 0x3

    #@16d
    aput v23, p0, v24

    #@16f
    .line 1024
    const/16 v23, 0x4

    #@171
    aput v11, p0, v23

    #@173
    const/16 v23, 0x5

    #@175
    aput v12, p0, v23

    #@177
    const/16 v23, 0x6

    #@179
    aput v13, p0, v23

    #@17b
    const/16 v23, 0x0

    #@17d
    const/16 v24, 0x7

    #@17f
    aput v23, p0, v24

    #@181
    .line 1025
    const/16 v23, 0x8

    #@183
    aput v2, p0, v23

    #@185
    const/16 v23, 0x9

    #@187
    aput v3, p0, v23

    #@189
    const/16 v23, 0xa

    #@18b
    aput v4, p0, v23

    #@18d
    const/16 v23, 0x0

    #@18f
    const/16 v24, 0xb

    #@191
    aput v23, p0, v24

    #@193
    .line 1026
    const/16 v23, 0x0

    #@195
    const/16 v24, 0xc

    #@197
    aput v23, p0, v24

    #@199
    const/16 v23, 0x0

    #@19b
    const/16 v24, 0xd

    #@19d
    aput v23, p0, v24

    #@19f
    const/16 v23, 0x0

    #@1a1
    const/16 v24, 0xe

    #@1a3
    aput v23, p0, v24

    #@1a5
    const/high16 v23, 0x3f800000    # 1.0f

    #@1a7
    const/16 v24, 0xf

    #@1a9
    aput v23, p0, v24

    #@1ab
    goto/16 :goto_0

    #@1ad
    .line 1040
    .restart local v14    # "c":F
    .restart local v18    # "invE":F
    .restart local v22    # "s":F
    :cond_5
    move-object/from16 v0, p1

    #@1af
    array-length v0, v0

    #@1b0
    move/from16 v23, v0

    #@1b2
    const/16 v24, 0x10

    #@1b4
    move/from16 v0, v23

    #@1b6
    move/from16 v1, v24

    #@1b8
    if-ne v0, v1, :cond_3

    #@1ba
    .line 1041
    const/high16 v23, 0x3f800000    # 1.0f

    #@1bc
    const/16 v24, 0x0

    #@1be
    aput v23, p1, v24

    #@1c0
    const/16 v23, 0x0

    #@1c2
    const/16 v24, 0x1

    #@1c4
    aput v23, p1, v24

    #@1c6
    const/16 v23, 0x0

    #@1c8
    const/16 v24, 0x2

    #@1ca
    aput v23, p1, v24

    #@1cc
    .line 1042
    const/16 v23, 0x0

    #@1ce
    const/16 v24, 0x4

    #@1d0
    aput v23, p1, v24

    #@1d2
    const/16 v23, 0x5

    #@1d4
    aput v14, p1, v23

    #@1d6
    const/16 v23, 0x6

    #@1d8
    aput v22, p1, v23

    #@1da
    .line 1043
    const/16 v23, 0x0

    #@1dc
    const/16 v24, 0x8

    #@1de
    aput v23, p1, v24

    #@1e0
    move/from16 v0, v22

    #@1e2
    neg-float v0, v0

    #@1e3
    move/from16 v23, v0

    #@1e5
    const/16 v24, 0x9

    #@1e7
    aput v23, p1, v24

    #@1e9
    const/16 v23, 0xa

    #@1eb
    aput v14, p1, v23

    #@1ed
    .line 1044
    const/16 v23, 0x0

    #@1ef
    const/16 v24, 0xe

    #@1f1
    aput v23, p1, v24

    #@1f3
    const/16 v23, 0x0

    #@1f5
    const/16 v24, 0xd

    #@1f7
    aput v23, p1, v24

    #@1f9
    const/16 v23, 0x0

    #@1fb
    const/16 v24, 0xc

    #@1fd
    aput v23, p1, v24

    #@1ff
    const/16 v23, 0x0

    #@201
    const/16 v24, 0xb

    #@203
    aput v23, p1, v24

    #@205
    const/16 v23, 0x0

    #@207
    const/16 v24, 0x7

    #@209
    aput v23, p1, v24

    #@20b
    const/16 v23, 0x0

    #@20d
    const/16 v24, 0x3

    #@20f
    aput v23, p1, v24

    #@211
    .line 1045
    const/high16 v23, 0x3f800000    # 1.0f

    #@213
    const/16 v24, 0xf

    #@215
    aput v23, p1, v24

    #@217
    goto/16 :goto_1
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 18
    .param p0, "R"    # [F
    .param p1, "rotationVector"    # [F

    #@0
    .prologue
    .line 1433
    const/4 v15, 0x0

    #@1
    aget v3, p1, v15

    #@3
    .line 1434
    .local v3, "q1":F
    const/4 v15, 0x1

    #@4
    aget v7, p1, v15

    #@6
    .line 1435
    .local v7, "q2":F
    const/4 v15, 0x2

    #@7
    aget v10, p1, v15

    #@9
    .line 1437
    .local v10, "q3":F
    move-object/from16 v0, p1

    #@b
    array-length v15, v0

    #@c
    const/16 v16, 0x4

    #@e
    move/from16 v0, v16

    #@10
    if-lt v15, v0, :cond_1

    #@12
    .line 1438
    const/4 v15, 0x3

    #@13
    aget v2, p1, v15

    #@15
    .line 1444
    .local v2, "q0":F
    :goto_0
    const/high16 v15, 0x40000000    # 2.0f

    #@17
    mul-float/2addr v15, v3

    #@18
    mul-float v12, v15, v3

    #@1a
    .line 1445
    .local v12, "sq_q1":F
    const/high16 v15, 0x40000000    # 2.0f

    #@1c
    mul-float/2addr v15, v7

    #@1d
    mul-float v13, v15, v7

    #@1f
    .line 1446
    .local v13, "sq_q2":F
    const/high16 v15, 0x40000000    # 2.0f

    #@21
    mul-float/2addr v15, v10

    #@22
    mul-float v14, v15, v10

    #@24
    .line 1447
    .local v14, "sq_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    #@26
    mul-float/2addr v15, v3

    #@27
    mul-float v5, v15, v7

    #@29
    .line 1448
    .local v5, "q1_q2":F
    const/high16 v15, 0x40000000    # 2.0f

    #@2b
    mul-float/2addr v15, v10

    #@2c
    mul-float v11, v15, v2

    #@2e
    .line 1449
    .local v11, "q3_q0":F
    const/high16 v15, 0x40000000    # 2.0f

    #@30
    mul-float/2addr v15, v3

    #@31
    mul-float v6, v15, v10

    #@33
    .line 1450
    .local v6, "q1_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    #@35
    mul-float/2addr v15, v7

    #@36
    mul-float v8, v15, v2

    #@38
    .line 1451
    .local v8, "q2_q0":F
    const/high16 v15, 0x40000000    # 2.0f

    #@3a
    mul-float/2addr v15, v7

    #@3b
    mul-float v9, v15, v10

    #@3d
    .line 1452
    .local v9, "q2_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    #@3f
    mul-float/2addr v15, v3

    #@40
    mul-float v4, v15, v2

    #@42
    .line 1454
    .local v4, "q1_q0":F
    move-object/from16 v0, p0

    #@44
    array-length v15, v0

    #@45
    const/16 v16, 0x9

    #@47
    move/from16 v0, v16

    #@49
    if-ne v15, v0, :cond_3

    #@4b
    .line 1455
    const/high16 v15, 0x3f800000    # 1.0f

    #@4d
    sub-float/2addr v15, v13

    #@4e
    sub-float/2addr v15, v14

    #@4f
    const/16 v16, 0x0

    #@51
    aput v15, p0, v16

    #@53
    .line 1456
    sub-float v15, v5, v11

    #@55
    const/16 v16, 0x1

    #@57
    aput v15, p0, v16

    #@59
    .line 1457
    add-float v15, v6, v8

    #@5b
    const/16 v16, 0x2

    #@5d
    aput v15, p0, v16

    #@5f
    .line 1459
    add-float v15, v5, v11

    #@61
    const/16 v16, 0x3

    #@63
    aput v15, p0, v16

    #@65
    .line 1460
    const/high16 v15, 0x3f800000    # 1.0f

    #@67
    sub-float/2addr v15, v12

    #@68
    sub-float/2addr v15, v14

    #@69
    const/16 v16, 0x4

    #@6b
    aput v15, p0, v16

    #@6d
    .line 1461
    sub-float v15, v9, v4

    #@6f
    const/16 v16, 0x5

    #@71
    aput v15, p0, v16

    #@73
    .line 1463
    sub-float v15, v6, v8

    #@75
    const/16 v16, 0x6

    #@77
    aput v15, p0, v16

    #@79
    .line 1464
    add-float v15, v9, v4

    #@7b
    const/16 v16, 0x7

    #@7d
    aput v15, p0, v16

    #@7f
    .line 1465
    const/high16 v15, 0x3f800000    # 1.0f

    #@81
    sub-float/2addr v15, v12

    #@82
    sub-float/2addr v15, v13

    #@83
    const/16 v16, 0x8

    #@85
    aput v15, p0, v16

    #@87
    .line 1430
    :cond_0
    :goto_1
    return-void

    #@88
    .line 1440
    .end local v2    # "q0":F
    .end local v4    # "q1_q0":F
    .end local v5    # "q1_q2":F
    .end local v6    # "q1_q3":F
    .end local v8    # "q2_q0":F
    .end local v9    # "q2_q3":F
    .end local v11    # "q3_q0":F
    .end local v12    # "sq_q1":F
    .end local v13    # "sq_q2":F
    .end local v14    # "sq_q3":F
    :cond_1
    mul-float v15, v3, v3

    #@8a
    const/high16 v16, 0x3f800000    # 1.0f

    #@8c
    sub-float v15, v16, v15

    #@8e
    mul-float v16, v7, v7

    #@90
    sub-float v15, v15, v16

    #@92
    mul-float v16, v10, v10

    #@94
    sub-float v2, v15, v16

    #@96
    .line 1441
    .restart local v2    # "q0":F
    const/4 v15, 0x0

    #@97
    cmpl-float v15, v2, v15

    #@99
    if-lez v15, :cond_2

    #@9b
    float-to-double v0, v2

    #@9c
    move-wide/from16 v16, v0

    #@9e
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    #@a1
    move-result-wide v16

    #@a2
    move-wide/from16 v0, v16

    #@a4
    double-to-float v2, v0

    #@a5
    goto/16 :goto_0

    #@a7
    :cond_2
    const/4 v2, 0x0

    #@a8
    goto/16 :goto_0

    #@aa
    .line 1466
    .restart local v4    # "q1_q0":F
    .restart local v5    # "q1_q2":F
    .restart local v6    # "q1_q3":F
    .restart local v8    # "q2_q0":F
    .restart local v9    # "q2_q3":F
    .restart local v11    # "q3_q0":F
    .restart local v12    # "sq_q1":F
    .restart local v13    # "sq_q2":F
    .restart local v14    # "sq_q3":F
    :cond_3
    move-object/from16 v0, p0

    #@ac
    array-length v15, v0

    #@ad
    const/16 v16, 0x10

    #@af
    move/from16 v0, v16

    #@b1
    if-ne v15, v0, :cond_0

    #@b3
    .line 1467
    const/high16 v15, 0x3f800000    # 1.0f

    #@b5
    sub-float/2addr v15, v13

    #@b6
    sub-float/2addr v15, v14

    #@b7
    const/16 v16, 0x0

    #@b9
    aput v15, p0, v16

    #@bb
    .line 1468
    sub-float v15, v5, v11

    #@bd
    const/16 v16, 0x1

    #@bf
    aput v15, p0, v16

    #@c1
    .line 1469
    add-float v15, v6, v8

    #@c3
    const/16 v16, 0x2

    #@c5
    aput v15, p0, v16

    #@c7
    .line 1470
    const/4 v15, 0x0

    #@c8
    const/16 v16, 0x3

    #@ca
    aput v15, p0, v16

    #@cc
    .line 1472
    add-float v15, v5, v11

    #@ce
    const/16 v16, 0x4

    #@d0
    aput v15, p0, v16

    #@d2
    .line 1473
    const/high16 v15, 0x3f800000    # 1.0f

    #@d4
    sub-float/2addr v15, v12

    #@d5
    sub-float/2addr v15, v14

    #@d6
    const/16 v16, 0x5

    #@d8
    aput v15, p0, v16

    #@da
    .line 1474
    sub-float v15, v9, v4

    #@dc
    const/16 v16, 0x6

    #@de
    aput v15, p0, v16

    #@e0
    .line 1475
    const/4 v15, 0x0

    #@e1
    const/16 v16, 0x7

    #@e3
    aput v15, p0, v16

    #@e5
    .line 1477
    sub-float v15, v6, v8

    #@e7
    const/16 v16, 0x8

    #@e9
    aput v15, p0, v16

    #@eb
    .line 1478
    add-float v15, v9, v4

    #@ed
    const/16 v16, 0x9

    #@ef
    aput v15, p0, v16

    #@f1
    .line 1479
    const/high16 v15, 0x3f800000    # 1.0f

    #@f3
    sub-float/2addr v15, v12

    #@f4
    sub-float/2addr v15, v13

    #@f5
    const/16 v16, 0xa

    #@f7
    aput v15, p0, v16

    #@f9
    .line 1480
    const/4 v15, 0x0

    #@fa
    const/16 v16, 0xb

    #@fc
    aput v15, p0, v16

    #@fe
    .line 1482
    const/4 v15, 0x0

    #@ff
    const/16 v16, 0xe

    #@101
    aput v15, p0, v16

    #@103
    const/4 v15, 0x0

    #@104
    const/16 v16, 0xd

    #@106
    aput v15, p0, v16

    #@108
    const/4 v15, 0x0

    #@109
    const/16 v16, 0xc

    #@10b
    aput v15, p0, v16

    #@10d
    .line 1483
    const/high16 v15, 0x3f800000    # 1.0f

    #@10f
    const/16 v16, 0xf

    #@111
    aput v15, p0, v16

    #@113
    goto/16 :goto_1
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    #@0
    .prologue
    .line 1151
    if-ne p0, p3, :cond_2

    #@2
    .line 1152
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    #@4
    .line 1153
    .local v2, "temp":[F
    monitor-enter v2

    #@5
    .line 1155
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 1156
    array-length v1, p3

    #@c
    .line 1157
    .local v1, "size":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@f
    .line 1158
    aget v3, v2, v0

    #@11
    aput v3, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1157
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1159
    :cond_0
    const/4 v3, 0x1

    #@17
    monitor-exit v2

    #@18
    return v3

    #@19
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    monitor-exit v2

    #@1a
    .line 1163
    .end local v2    # "temp":[F
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    #@1d
    move-result v3

    #@1e
    return v3

    #@1f
    .line 1153
    .restart local v2    # "temp":[F
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v2

    #@21
    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 17
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    #@0
    .prologue
    .line 1180
    move-object/from16 v0, p3

    #@2
    array-length v6, v0

    #@3
    .line 1181
    .local v6, "length":I
    move-object/from16 v0, p0

    #@5
    array-length v15, v0

    #@6
    if-eq v15, v6, :cond_0

    #@8
    .line 1182
    const/4 v15, 0x0

    #@9
    return v15

    #@a
    .line 1183
    :cond_0
    and-int/lit8 v15, p1, 0x7c

    #@c
    if-nez v15, :cond_1

    #@e
    and-int/lit8 v15, p2, 0x7c

    #@10
    if-eqz v15, :cond_2

    #@12
    .line 1184
    :cond_1
    const/4 v15, 0x0

    #@13
    return v15

    #@14
    .line 1185
    :cond_2
    and-int/lit8 v15, p1, 0x3

    #@16
    if-eqz v15, :cond_3

    #@18
    and-int/lit8 v15, p2, 0x3

    #@1a
    if-nez v15, :cond_4

    #@1c
    .line 1186
    :cond_3
    const/4 v15, 0x0

    #@1d
    return v15

    #@1e
    .line 1187
    :cond_4
    and-int/lit8 v15, p1, 0x3

    #@20
    and-int/lit8 v16, p2, 0x3

    #@22
    move/from16 v0, v16

    #@24
    if-ne v15, v0, :cond_5

    #@26
    .line 1188
    const/4 v15, 0x0

    #@27
    return v15

    #@28
    .line 1193
    :cond_5
    xor-int v1, p1, p2

    #@2a
    .line 1196
    .local v1, "Z":I
    and-int/lit8 v15, p1, 0x3

    #@2c
    add-int/lit8 v12, v15, -0x1

    #@2e
    .line 1197
    .local v12, "x":I
    and-int/lit8 v15, p2, 0x3

    #@30
    add-int/lit8 v13, v15, -0x1

    #@32
    .line 1198
    .local v13, "y":I
    and-int/lit8 v15, v1, 0x3

    #@34
    add-int/lit8 v14, v15, -0x1

    #@36
    .line 1201
    .local v14, "z":I
    add-int/lit8 v15, v14, 0x1

    #@38
    rem-int/lit8 v2, v15, 0x3

    #@3a
    .line 1202
    .local v2, "axis_y":I
    add-int/lit8 v15, v14, 0x2

    #@3c
    rem-int/lit8 v3, v15, 0x3

    #@3e
    .line 1203
    .local v3, "axis_z":I
    xor-int v15, v12, v2

    #@40
    xor-int v16, v13, v3

    #@42
    or-int v15, v15, v16

    #@44
    if-eqz v15, :cond_6

    #@46
    .line 1204
    xor-int/lit16 v1, v1, 0x80

    #@48
    .line 1206
    :cond_6
    const/16 v15, 0x80

    #@4a
    move/from16 v0, p1

    #@4c
    if-lt v0, v15, :cond_a

    #@4e
    const/4 v9, 0x1

    #@4f
    .line 1207
    .local v9, "sx":Z
    :goto_0
    const/16 v15, 0x80

    #@51
    move/from16 v0, p2

    #@53
    if-lt v0, v15, :cond_b

    #@55
    const/4 v10, 0x1

    #@56
    .line 1208
    .local v10, "sy":Z
    :goto_1
    const/16 v15, 0x80

    #@58
    if-lt v1, v15, :cond_c

    #@5a
    const/4 v11, 0x1

    #@5b
    .line 1211
    .local v11, "sz":Z
    :goto_2
    const/16 v15, 0x10

    #@5d
    if-ne v6, v15, :cond_d

    #@5f
    const/4 v8, 0x4

    #@60
    .line 1212
    .local v8, "rowLength":I
    :goto_3
    const/4 v5, 0x0

    #@61
    .local v5, "j":I
    :goto_4
    const/4 v15, 0x3

    #@62
    if-ge v5, v15, :cond_12

    #@64
    .line 1213
    mul-int v7, v5, v8

    #@66
    .line 1214
    .local v7, "offset":I
    const/4 v4, 0x0

    #@67
    .local v4, "i":I
    :goto_5
    const/4 v15, 0x3

    #@68
    if-ge v4, v15, :cond_11

    #@6a
    .line 1215
    if-ne v12, v4, :cond_7

    #@6c
    add-int v16, v7, v4

    #@6e
    if-eqz v9, :cond_e

    #@70
    add-int/lit8 v15, v7, 0x0

    #@72
    aget v15, p0, v15

    #@74
    neg-float v15, v15

    #@75
    :goto_6
    aput v15, p3, v16

    #@77
    .line 1216
    :cond_7
    if-ne v13, v4, :cond_8

    #@79
    add-int v16, v7, v4

    #@7b
    if-eqz v10, :cond_f

    #@7d
    add-int/lit8 v15, v7, 0x1

    #@7f
    aget v15, p0, v15

    #@81
    neg-float v15, v15

    #@82
    :goto_7
    aput v15, p3, v16

    #@84
    .line 1217
    :cond_8
    if-ne v14, v4, :cond_9

    #@86
    add-int v16, v7, v4

    #@88
    if-eqz v11, :cond_10

    #@8a
    add-int/lit8 v15, v7, 0x2

    #@8c
    aget v15, p0, v15

    #@8e
    neg-float v15, v15

    #@8f
    :goto_8
    aput v15, p3, v16

    #@91
    .line 1214
    :cond_9
    add-int/lit8 v4, v4, 0x1

    #@93
    goto :goto_5

    #@94
    .line 1206
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "offset":I
    .end local v8    # "rowLength":I
    .end local v9    # "sx":Z
    .end local v10    # "sy":Z
    .end local v11    # "sz":Z
    :cond_a
    const/4 v9, 0x0

    #@95
    .restart local v9    # "sx":Z
    goto :goto_0

    #@96
    .line 1207
    :cond_b
    const/4 v10, 0x0

    #@97
    .restart local v10    # "sy":Z
    goto :goto_1

    #@98
    .line 1208
    :cond_c
    const/4 v11, 0x0

    #@99
    .restart local v11    # "sz":Z
    goto :goto_2

    #@9a
    .line 1211
    :cond_d
    const/4 v8, 0x3

    #@9b
    .restart local v8    # "rowLength":I
    goto :goto_3

    #@9c
    .line 1215
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "offset":I
    :cond_e
    add-int/lit8 v15, v7, 0x0

    #@9e
    aget v15, p0, v15

    #@a0
    goto :goto_6

    #@a1
    .line 1216
    :cond_f
    add-int/lit8 v15, v7, 0x1

    #@a3
    aget v15, p0, v15

    #@a5
    goto :goto_7

    #@a6
    .line 1217
    :cond_10
    add-int/lit8 v15, v7, 0x2

    #@a8
    aget v15, p0, v15

    #@aa
    goto :goto_8

    #@ab
    .line 1212
    :cond_11
    add-int/lit8 v5, v5, 0x1

    #@ad
    goto :goto_4

    #@ae
    .line 1220
    .end local v4    # "i":I
    .end local v7    # "offset":I
    :cond_12
    const/16 v15, 0x10

    #@b0
    if-ne v6, v15, :cond_13

    #@b2
    .line 1221
    const/4 v15, 0x0

    #@b3
    const/16 v16, 0xe

    #@b5
    aput v15, p3, v16

    #@b7
    const/4 v15, 0x0

    #@b8
    const/16 v16, 0xd

    #@ba
    aput v15, p3, v16

    #@bc
    const/4 v15, 0x0

    #@bd
    const/16 v16, 0xc

    #@bf
    aput v15, p3, v16

    #@c1
    const/4 v15, 0x0

    #@c2
    const/16 v16, 0xb

    #@c4
    aput v15, p3, v16

    #@c6
    const/4 v15, 0x0

    #@c7
    const/16 v16, 0x7

    #@c9
    aput v15, p3, v16

    #@cb
    const/4 v15, 0x0

    #@cc
    const/16 v16, 0x3

    #@ce
    aput v15, p3, v16

    #@d0
    .line 1222
    const/high16 v15, 0x3f800000    # 1.0f

    #@d2
    const/16 v16, 0xf

    #@d4
    aput v15, p3, v16

    #@d6
    .line 1224
    :cond_13
    const/4 v15, 0x1

    #@d7
    return v15
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 1557
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    #@0
    .prologue
    .line 838
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 5
    .param p1, "type"    # I

    #@0
    .prologue
    .line 449
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 450
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x0

    #@5
    .line 454
    .local v3, "wakeUpSensor":Z
    const/16 v4, 0x8

    #@7
    if-eq p1, v4, :cond_0

    #@9
    const/16 v4, 0x11

    #@b
    if-ne p1, v4, :cond_3

    #@d
    .line 458
    :cond_0
    :goto_0
    const/4 v3, 0x1

    #@e
    .line 461
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "sensor$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_4

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/hardware/Sensor;

    #@1e
    .line 462
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    #@21
    move-result v4

    #@22
    if-ne v4, v3, :cond_2

    #@24
    return-object v1

    #@25
    .line 455
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    .end local v2    # "sensor$iterator":Ljava/util/Iterator;
    :cond_3
    const/16 v4, 0x16

    #@27
    if-eq p1, v4, :cond_0

    #@29
    const/16 v4, 0x17

    #@2b
    if-eq p1, v4, :cond_0

    #@2d
    .line 456
    const/16 v4, 0x18

    #@2f
    if-eq p1, v4, :cond_0

    #@31
    const/16 v4, 0x19

    #@33
    if-eq p1, v4, :cond_0

    #@35
    .line 457
    const/16 v4, 0x1a

    #@37
    if-ne p1, v4, :cond_1

    #@39
    goto :goto_0

    #@3a
    .line 464
    .restart local v2    # "sensor$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v4, 0x0

    #@3b
    return-object v4
.end method

.method public getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 4
    .param p1, "type"    # I
    .param p2, "wakeUp"    # Z

    #@0
    .prologue
    .line 494
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 495
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "sensor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/hardware/Sensor;

    #@14
    .line 496
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    #@17
    move-result v3

    #@18
    if-ne v3, p2, :cond_0

    #@1a
    .line 497
    return-object v1

    #@1b
    .line 499
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method protected abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 413
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v5, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    #@6
    monitor-enter v5

    #@7
    .line 414
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Ljava/util/List;

    #@f
    .line 415
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1

    #@11
    .line 416
    const/4 v4, -0x1

    #@12
    if-ne p1, v4, :cond_2

    #@14
    .line 417
    move-object v3, v0

    #@15
    .line 425
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    .line 426
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit v5

    #@1f
    .line 429
    return-object v3

    #@20
    .line 419
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    #@22
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 420
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v2

    #@29
    .local v2, "i$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_0

    #@2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Landroid/hardware/Sensor;

    #@35
    .line 421
    .local v1, "i":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    #@38
    move-result v4

    #@39
    if-ne v4, p1, :cond_3

    #@3b
    .line 422
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 413
    .end local v1    # "i":Landroid/hardware/Sensor;
    .end local v2    # "i$iterator":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v4

    #@40
    monitor-exit v5

    #@41
    throw v4
.end method

.method public getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 386
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public initDataInjection(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1590
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->initDataInjectionImpl(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected abstract initDataInjectionImpl(Z)Z
.end method

.method public injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    .line 1625
    if-nez p1, :cond_0

    #@2
    .line 1626
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "sensor cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1628
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 1629
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "sensor does not support data injection"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 1631
    :cond_1
    if-nez p2, :cond_2

    #@1c
    .line 1632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v2, "sensor data cannot be null"

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 1634
    :cond_2
    const/16 v1, 0x17

    #@27
    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    #@2a
    move-result v0

    #@2b
    .line 1635
    .local v0, "expectedNumValues":I
    array-length v1, p2

    #@2c
    if-eq v1, v0, :cond_3

    #@2e
    .line 1636
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "Wrong number of values for sensor "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 1637
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 1637
    const-string/jumbo v3, " actual="

    #@47
    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 1637
    array-length v3, p2

    #@4c
    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 1637
    const-string/jumbo v3, " expected="

    #@53
    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v1

    #@63
    .line 1640
    :cond_3
    const/4 v1, -0x1

    #@64
    if-lt p3, v1, :cond_4

    #@66
    const/4 v1, 0x3

    #@67
    if-le p3, v1, :cond_5

    #@69
    .line 1641
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6b
    const-string/jumbo v2, "Invalid sensor accuracy"

    #@6e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@71
    throw v1

    #@72
    .line 1643
    :cond_5
    const-wide/16 v2, 0x0

    #@74
    cmp-long v1, p4, v2

    #@76
    if-gtz v1, :cond_6

    #@78
    .line 1644
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7a
    const-string/jumbo v2, "Negative or zero sensor timestamp"

    #@7d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v1

    #@81
    .line 1646
    :cond_6
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    #@84
    move-result v1

    #@85
    return v1
.end method

.method protected abstract injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I

    #@0
    .prologue
    .line 685
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I

    #@0
    .prologue
    .line 742
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    #@3
    move-result v3

    #@4
    .line 743
    .local v3, "delay":I
    const/4 v4, 0x0

    #@5
    const/4 v6, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move v5, p4

    #@a
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 808
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    #@3
    move-result v3

    #@4
    .line 809
    .local v3, "delayUs":I
    const/4 v6, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v4, p5

    #@9
    move v5, p4

    #@a
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 777
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    #@4
    move-result v3

    #@5
    .local v3, "delay":I
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v4, p4

    #@9
    move v6, v5

    #@a
    .line 778
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 520
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 548
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 1525
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 621
    if-nez p1, :cond_0

    #@3
    .line 622
    return-void

    #@4
    .line 625
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    #@7
    .line 620
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    #@0
    .prologue
    .line 603
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 604
    :cond_0
    return-void

    #@5
    .line 607
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    #@8
    .line 602
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 563
    const/16 v0, 0xff

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    #@5
    .line 562
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 581
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    #@7
    .line 580
    return-void
.end method

.method protected abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
