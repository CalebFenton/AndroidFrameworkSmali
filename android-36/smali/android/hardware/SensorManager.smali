.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;,
        Landroid/hardware/SensorManager$DataInjectionMode;
    }
.end annotation


# static fields
.field public static final whitelist AXIS_MINUS_X:I = 0x81

.field public static final whitelist AXIS_MINUS_Y:I = 0x82

.field public static final whitelist AXIS_MINUS_Z:I = 0x83

.field public static final whitelist AXIS_X:I = 0x1

.field public static final whitelist AXIS_Y:I = 0x2

.field public static final whitelist AXIS_Z:I = 0x3

.field public static final blacklist DATA_INJECTION:I = 0x1

.field public static final whitelist DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final whitelist GRAVITY_EARTH:F = 9.80665f

.field public static final whitelist GRAVITY_JUPITER:F = 23.12f

.field public static final whitelist GRAVITY_MARS:F = 3.71f

.field public static final whitelist GRAVITY_MERCURY:F = 3.7f

.field public static final whitelist GRAVITY_MOON:F = 1.6f

.field public static final whitelist GRAVITY_NEPTUNE:F = 11.0f

.field public static final whitelist GRAVITY_PLUTO:F = 0.6f

.field public static final whitelist GRAVITY_SATURN:F = 8.96f

.field public static final whitelist GRAVITY_SUN:F = 275.0f

.field public static final whitelist GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final whitelist GRAVITY_URANUS:F = 8.69f

.field public static final whitelist GRAVITY_VENUS:F = 8.87f

.field public static final blacklist HAL_BYPASS_REPLAY_DATA_INJECTION:I = 0x4

.field public static final whitelist LIGHT_CLOUDY:F = 100.0f

.field public static final whitelist LIGHT_FULLMOON:F = 0.25f

.field public static final whitelist LIGHT_NO_MOON:F = 0.001f

.field public static final whitelist LIGHT_OVERCAST:F = 10000.0f

.field public static final whitelist LIGHT_SHADE:F = 20000.0f

.field public static final whitelist LIGHT_SUNLIGHT:F = 110000.0f

.field public static final whitelist LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final whitelist LIGHT_SUNRISE:F = 400.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final whitelist PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final whitelist RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist REPLAY_DATA_INJECTION:I = 0x3

.field public static final whitelist SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_DELAY_FASTEST:I = 0x0

.field public static final whitelist SENSOR_DELAY_GAME:I = 0x1

.field public static final whitelist SENSOR_DELAY_NORMAL:I = 0x3

.field public static final whitelist SENSOR_DELAY_UI:I = 0x2

.field public static final whitelist SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final whitelist SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final whitelist SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final whitelist SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final whitelist SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final whitelist SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STANDARD_GRAVITY:F = 9.80665f

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "SensorManager"

.field private static final greylist-max-o sTempMatrix:[F


# instance fields
.field private greylist-max-o mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final greylist-max-o mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 385
    return-void
.end method

.method public static whitelist getAltitude(FF)F
    .registers 7
    .param p0, "p0"    # F
    .param p1, "p"    # F

    .line 1561
    const v0, 0x3e42dcae

    .line 1562
    .local v0, "coef":F
    div-float v1, p1, p0

    float-to-double v1, v1

    const-wide v3, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const v1, 0x472d2a00    # 44330.0f

    mul-float/2addr v2, v1

    return v2
.end method

.method public static whitelist getAngleChange([F[F[F)V
    .registers 41
    .param p0, "angleChange"    # [F
    .param p1, "R"    # [F
    .param p2, "prevR"    # [F

    .line 1596
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .local v2, "rd1":F
    const/4 v3, 0x0

    .local v3, "rd4":F
    const/4 v4, 0x0

    .local v4, "rd6":F
    const/4 v5, 0x0

    .local v5, "rd7":F
    const/4 v6, 0x0

    .line 1597
    .local v6, "rd8":F
    const/4 v7, 0x0

    .local v7, "ri0":F
    const/4 v8, 0x0

    .local v8, "ri1":F
    const/4 v9, 0x0

    .local v9, "ri2":F
    const/4 v10, 0x0

    .local v10, "ri3":F
    const/4 v11, 0x0

    .local v11, "ri4":F
    const/4 v12, 0x0

    .local v12, "ri5":F
    const/4 v13, 0x0

    .local v13, "ri6":F
    const/4 v14, 0x0

    .local v14, "ri7":F
    const/4 v15, 0x0

    .line 1598
    .local v15, "ri8":F
    const/16 v16, 0x0

    .local v16, "pri0":F
    const/16 v17, 0x0

    .local v17, "pri1":F
    const/16 v18, 0x0

    .local v18, "pri2":F
    const/16 v19, 0x0

    .local v19, "pri3":F
    const/16 v20, 0x0

    .line 1599
    .local v20, "pri4":F
    const/16 v21, 0x0

    .local v21, "pri5":F
    const/16 v22, 0x0

    .local v22, "pri6":F
    const/16 v23, 0x0

    .local v23, "pri7":F
    const/16 v24, 0x0

    .line 1601
    .local v24, "pri8":F
    move/from16 v25, v2

    .end local v2    # "rd1":F
    .local v25, "rd1":F
    array-length v2, v0

    const/16 v26, 0xa

    const/16 v27, 0x7

    const/16 v28, 0x3

    move/from16 v29, v3

    .end local v3    # "rd4":F
    .local v29, "rd4":F
    const/16 v30, 0x8

    const/16 v31, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    const/16 v34, 0x2

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_56

    .line 1602
    aget v7, v0, v36

    .line 1603
    aget v8, v0, v35

    .line 1604
    aget v9, v0, v34

    .line 1605
    aget v10, v0, v28

    .line 1606
    aget v11, v0, v33

    .line 1607
    aget v12, v0, v32

    .line 1608
    aget v13, v0, v31

    .line 1609
    aget v14, v0, v27

    .line 1610
    aget v15, v0, v30

    move/from16 v37, v3

    goto :goto_6f

    .line 1611
    :cond_56
    array-length v2, v0

    move/from16 v37, v3

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6f

    .line 1612
    aget v7, v0, v36

    .line 1613
    aget v8, v0, v35

    .line 1614
    aget v9, v0, v34

    .line 1615
    aget v10, v0, v33

    .line 1616
    aget v11, v0, v32

    .line 1617
    aget v12, v0, v31

    .line 1618
    aget v13, v0, v30

    .line 1619
    aget v14, v0, v37

    .line 1620
    aget v15, v0, v26

    .line 1623
    :cond_6f
    :goto_6f
    array-length v2, v1

    move/from16 v3, v37

    if-ne v2, v3, :cond_87

    .line 1624
    aget v16, v1, v36

    .line 1625
    aget v17, v1, v35

    .line 1626
    aget v18, v1, v34

    .line 1627
    aget v19, v1, v28

    .line 1628
    aget v20, v1, v33

    .line 1629
    aget v21, v1, v32

    .line 1630
    aget v22, v1, v31

    .line 1631
    aget v23, v1, v27

    .line 1632
    aget v24, v1, v30

    goto :goto_a0

    .line 1633
    :cond_87
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_a0

    .line 1634
    aget v16, v1, v36

    .line 1635
    aget v17, v1, v35

    .line 1636
    aget v18, v1, v34

    .line 1637
    aget v19, v1, v33

    .line 1638
    aget v20, v1, v32

    .line 1639
    aget v21, v1, v31

    .line 1640
    aget v22, v1, v30

    .line 1641
    const/16 v37, 0x9

    aget v23, v1, v37

    .line 1642
    aget v24, v1, v26

    .line 1648
    :cond_a0
    :goto_a0
    mul-float v2, v16, v8

    mul-float v3, v19, v11

    add-float/2addr v2, v3

    mul-float v3, v22, v14

    add-float/2addr v2, v3

    .line 1649
    .end local v25    # "rd1":F
    .restart local v2    # "rd1":F
    mul-float v3, v17, v8

    mul-float v25, v20, v11

    add-float v3, v3, v25

    mul-float v25, v23, v14

    add-float v3, v3, v25

    .line 1650
    .end local v29    # "rd4":F
    .restart local v3    # "rd4":F
    mul-float v25, v18, v7

    mul-float v26, v21, v10

    add-float v25, v25, v26

    mul-float v26, v24, v13

    add-float v4, v25, v26

    .line 1651
    mul-float v25, v18, v8

    mul-float v26, v21, v11

    add-float v25, v25, v26

    mul-float v26, v24, v14

    add-float v5, v25, v26

    .line 1652
    mul-float v25, v18, v9

    mul-float v26, v21, v12

    add-float v25, v25, v26

    mul-float v26, v24, v15

    add-float v6, v25, v26

    .line 1654
    float-to-double v0, v2

    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "ri0":F
    .end local v8    # "ri1":F
    .local v25, "ri0":F
    .local v26, "ri1":F
    float-to-double v7, v3

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v36

    .line 1655
    neg-float v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v35

    .line 1656
    neg-float v0, v4

    float-to-double v0, v0

    float-to-double v7, v6

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v34

    .line 1658
    return-void
.end method

.method private static greylist-max-o getDelay(I)I
    .registers 2
    .param p0, "rate"    # I

    .line 1982
    const/4 v0, -0x1

    .line 1983
    .local v0, "delay":I
    packed-switch p0, :pswitch_data_14

    .line 1997
    move v0, p0

    goto :goto_13

    .line 1994
    :pswitch_6
    const v0, 0x30d40

    .line 1995
    goto :goto_13

    .line 1991
    :pswitch_a
    const v0, 0x1046b

    .line 1992
    goto :goto_13

    .line 1988
    :pswitch_e
    const/16 v0, 0x4e20

    .line 1989
    goto :goto_13

    .line 1985
    :pswitch_11
    const/4 v0, 0x0

    .line 1986
    nop

    .line 2000
    :goto_13
    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getInclination([F)F
    .registers 5
    .param p0, "I"    # [F

    .line 1297
    array-length v0, p0

    const/16 v1, 0x9

    const/4 v2, 0x5

    if-ne v0, v1, :cond_13

    .line 1298
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 1300
    :cond_13
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private greylist-max-o getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .registers 4

    .line 1971
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1972
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v1, :cond_15

    .line 1973
    const-string v1, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    new-instance v1, Landroid/hardware/LegacySensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 1977
    :cond_15
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v0

    return-object v1

    .line 1978
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static whitelist getOrientation([F[F)[F
    .registers 12
    .param p0, "R"    # [F
    .param p1, "values"    # [F

    .line 1518
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x9

    if-ne v0, v5, :cond_34

    .line 1519
    aget v0, p0, v4

    float-to-double v5, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v3

    .line 1520
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v4

    .line 1521
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    aget v0, p0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    goto :goto_5d

    .line 1523
    :cond_34
    aget v0, p0, v4

    float-to-double v6, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    .line 1524
    aget v0, p0, v5

    neg-float v0, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v4

    .line 1525
    aget v0, p0, v1

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v3, 0xa

    aget v3, p0, v3

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    .line 1528
    :goto_5d
    return-object p1
.end method

.method public static whitelist getQuaternionFromVector([F[F)V
    .registers 9
    .param p0, "Q"    # [F
    .param p1, "rv"    # [F

    .line 1743
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v1, :cond_d

    .line 1744
    aget v0, p1, v2

    aput v0, p0, v5

    goto :goto_34

    .line 1746
    :cond_d
    aget v0, p1, v5

    aget v1, p1, v5

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    aget v0, p1, v4

    aget v6, p1, v4

    mul-float/2addr v0, v6

    sub-float/2addr v1, v0

    aget v0, p1, v3

    aget v6, p1, v3

    mul-float/2addr v0, v6

    sub-float/2addr v1, v0

    aput v1, p0, v5

    .line 1747
    aget v0, p0, v5

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    :cond_32
    aput v1, p0, v5

    .line 1749
    :goto_34
    aget v0, p1, v5

    aput v0, p0, v4

    .line 1750
    aget v0, p1, v4

    aput v0, p0, v3

    .line 1751
    aget v0, p1, v3

    aput v0, p0, v2

    .line 1752
    return-void
.end method

.method public static whitelist getRotationMatrix([F[F[F[F)Z
    .registers 46
    .param p0, "R"    # [F
    .param p1, "I"    # [F
    .param p2, "gravity"    # [F
    .param p3, "geomagnetic"    # [F

    .line 1212
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, p2, v2

    .line 1213
    .local v3, "Ax":F
    const/4 v4, 0x1

    aget v5, p2, v4

    .line 1214
    .local v5, "Ay":F
    const/4 v6, 0x2

    aget v7, p2, v6

    .line 1216
    .local v7, "Az":F
    mul-float v8, v3, v3

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    .line 1217
    .local v8, "normsqA":F
    const v9, 0x411cf5c3    # 9.81f

    .line 1218
    .local v9, "g":F
    const v10, 0x3f765d4b

    .line 1219
    .local v10, "freeFallGravitySquared":F
    const v11, 0x3f765d4b

    cmpg-float v11, v8, v11

    if-gez v11, :cond_23

    .line 1221
    return v2

    .line 1224
    :cond_23
    aget v11, p3, v2

    .line 1225
    .local v11, "Ex":F
    aget v12, p3, v4

    .line 1226
    .local v12, "Ey":F
    aget v13, p3, v6

    .line 1227
    .local v13, "Ez":F
    mul-float v14, v12, v7

    mul-float v15, v13, v5

    sub-float/2addr v14, v15

    .line 1228
    .local v14, "Hx":F
    mul-float v15, v13, v3

    mul-float v16, v11, v7

    sub-float v15, v15, v16

    .line 1229
    .local v15, "Hy":F
    mul-float v16, v11, v5

    mul-float v17, v12, v3

    sub-float v16, v16, v17

    .line 1230
    .local v16, "Hz":F
    mul-float v17, v14, v14

    mul-float v18, v15, v15

    add-float v17, v17, v18

    mul-float v18, v16, v16

    move/from16 v19, v2

    add-float v2, v17, v18

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v5    # "Ay":F
    .local v18, "Ay":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 1232
    .local v2, "normH":F
    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_58

    .line 1235
    return v19

    .line 1237
    :cond_58
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v5, v4, v2

    .line 1238
    .local v5, "invH":F
    mul-float/2addr v14, v5

    .line 1239
    mul-float/2addr v15, v5

    .line 1240
    mul-float v16, v16, v5

    .line 1241
    mul-float v20, v3, v3

    mul-float v21, v18, v18

    add-float v20, v20, v21

    mul-float v21, v7, v7

    move/from16 v22, v4

    add-float v4, v20, v21

    move/from16 v20, v6

    move/from16 v21, v7

    .end local v7    # "Az":F
    .local v21, "Az":F
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    div-float v4, v22, v4

    .line 1242
    .local v4, "invA":F
    mul-float/2addr v3, v4

    .line 1243
    mul-float v6, v18, v4

    .line 1244
    .end local v18    # "Ay":F
    .local v6, "Ay":F
    mul-float v7, v21, v4

    .line 1245
    .end local v21    # "Az":F
    .restart local v7    # "Az":F
    mul-float v18, v6, v16

    mul-float v21, v7, v15

    sub-float v18, v18, v21

    .line 1246
    .local v18, "Mx":F
    mul-float v21, v7, v14

    mul-float v23, v3, v16

    sub-float v21, v21, v23

    .line 1247
    .local v21, "My":F
    mul-float v23, v3, v15

    mul-float v24, v6, v14

    sub-float v23, v23, v24

    .line 1248
    .local v23, "Mz":F
    const/16 v24, 0xf

    const/16 v25, 0xe

    const/16 v26, 0xd

    const/16 v27, 0xc

    const/16 v28, 0xb

    const/16 v29, 0xa

    move/from16 v30, v2

    .end local v2    # "normH":F
    .local v30, "normH":F
    const/16 v31, 0x8

    const/16 v32, 0x7

    const/16 v33, 0x6

    const/16 v34, 0x5

    const/16 v35, 0x4

    const/16 v36, 0x3

    const/16 v2, 0x9

    const/16 v37, 0x0

    if-eqz v0, :cond_f1

    .line 1249
    move/from16 v38, v3

    .end local v3    # "Ax":F
    .local v38, "Ax":F
    array-length v3, v0

    if-ne v3, v2, :cond_c9

    .line 1250
    aput v14, v0, v19

    aput v15, v0, v17

    aput v16, v0, v20

    .line 1251
    aput v18, v0, v36

    aput v21, v0, v35

    aput v23, v0, v34

    .line 1252
    aput v38, v0, v33

    aput v6, v0, v32

    aput v7, v0, v31

    move/from16 v39, v2

    goto :goto_f5

    .line 1253
    :cond_c9
    array-length v3, v0

    move/from16 v39, v2

    const/16 v2, 0x10

    if-ne v3, v2, :cond_f5

    .line 1254
    aput v14, v0, v19

    aput v15, v0, v17

    aput v16, v0, v20

    aput v37, v0, v36

    .line 1255
    aput v18, v0, v35

    aput v21, v0, v34

    aput v23, v0, v33

    aput v37, v0, v32

    .line 1256
    aput v38, v0, v31

    aput v6, v0, v39

    aput v7, v0, v29

    aput v37, v0, v28

    .line 1257
    aput v37, v0, v27

    aput v37, v0, v26

    aput v37, v0, v25

    aput v22, v0, v24

    goto :goto_f5

    .line 1248
    .end local v38    # "Ax":F
    .restart local v3    # "Ax":F
    :cond_f1
    move/from16 v39, v2

    move/from16 v38, v3

    .line 1260
    .end local v3    # "Ax":F
    .restart local v38    # "Ax":F
    :cond_f5
    :goto_f5
    if-eqz v1, :cond_163

    .line 1264
    mul-float v2, v11, v11

    mul-float v3, v12, v12

    add-float/2addr v2, v3

    mul-float v3, v13, v13

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v2, v22, v2

    .line 1265
    .local v2, "invE":F
    mul-float v3, v11, v18

    mul-float v40, v12, v21

    add-float v3, v3, v40

    mul-float v40, v13, v23

    add-float v3, v3, v40

    mul-float/2addr v3, v2

    .line 1266
    .local v3, "c":F
    mul-float v40, v11, v38

    mul-float v41, v12, v6

    add-float v40, v40, v41

    mul-float v41, v13, v7

    add-float v40, v40, v41

    mul-float v0, v40, v2

    .line 1267
    .local v0, "s":F
    move/from16 v40, v2

    .end local v2    # "invE":F
    .local v40, "invE":F
    array-length v2, v1

    move/from16 v41, v3

    move/from16 v3, v39

    .end local v3    # "c":F
    .local v41, "c":F
    if-ne v2, v3, :cond_13b

    .line 1268
    aput v22, v1, v19

    aput v37, v1, v17

    aput v37, v1, v20

    .line 1269
    aput v37, v1, v36

    aput v41, v1, v35

    aput v0, v1, v34

    .line 1270
    aput v37, v1, v33

    neg-float v2, v0

    aput v2, v1, v32

    aput v41, v1, v31

    goto :goto_163

    .line 1271
    :cond_13b
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_163

    .line 1272
    aput v22, v1, v19

    aput v37, v1, v17

    aput v37, v1, v20

    .line 1273
    aput v37, v1, v35

    aput v41, v1, v34

    aput v0, v1, v33

    .line 1274
    aput v37, v1, v31

    neg-float v2, v0

    const/16 v39, 0x9

    aput v2, v1, v39

    aput v41, v1, v29

    .line 1275
    aput v37, v1, v25

    aput v37, v1, v26

    aput v37, v1, v27

    aput v37, v1, v28

    aput v37, v1, v32

    aput v37, v1, v36

    .line 1276
    aput v22, v1, v24

    .line 1279
    .end local v0    # "s":F
    .end local v40    # "invE":F
    .end local v41    # "c":F
    :cond_163
    :goto_163
    return v17
.end method

.method public static whitelist getRotationMatrixFromVector([F[F)V
    .registers 31
    .param p0, "R"    # [F
    .param p1, "rotationVector"    # [F

    .line 1682
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 1683
    .local v3, "q1":F
    const/4 v4, 0x1

    aget v5, v1, v4

    .line 1684
    .local v5, "q2":F
    const/4 v6, 0x2

    aget v7, v1, v6

    .line 1686
    .local v7, "q3":F
    array-length v8, v1

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    if-lt v8, v12, :cond_18

    .line 1687
    aget v8, v1, v9

    .local v8, "q0":F
    goto :goto_2f

    .line 1689
    .end local v8    # "q0":F
    :cond_18
    mul-float v8, v3, v3

    sub-float v8, v11, v8

    mul-float v13, v5, v5

    sub-float/2addr v8, v13

    mul-float v13, v7, v7

    sub-float/2addr v8, v13

    .line 1690
    .restart local v8    # "q0":F
    cmpl-float v13, v8, v10

    if-lez v13, :cond_2d

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    goto :goto_2e

    :cond_2d
    move v13, v10

    :goto_2e
    move v8, v13

    .line 1693
    :goto_2f
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v14, v3, v13

    mul-float/2addr v14, v3

    .line 1694
    .local v14, "sq_q1":F
    mul-float v15, v5, v13

    mul-float/2addr v15, v5

    .line 1695
    .local v15, "sq_q2":F
    mul-float v16, v7, v13

    mul-float v16, v16, v7

    .line 1696
    .local v16, "sq_q3":F
    mul-float v17, v3, v13

    mul-float v17, v17, v5

    .line 1697
    .local v17, "q1_q2":F
    mul-float v18, v7, v13

    mul-float v18, v18, v8

    .line 1698
    .local v18, "q3_q0":F
    mul-float v19, v3, v13

    mul-float v19, v19, v7

    .line 1699
    .local v19, "q1_q3":F
    mul-float v20, v5, v13

    mul-float v20, v20, v8

    .line 1700
    .local v20, "q2_q0":F
    mul-float v21, v5, v13

    mul-float v21, v21, v7

    .line 1701
    .local v21, "q2_q3":F
    mul-float/2addr v13, v3

    mul-float/2addr v13, v8

    .line 1703
    .local v13, "q1_q0":F
    move/from16 v22, v2

    array-length v2, v0

    const/16 v23, 0x8

    const/16 v24, 0x7

    const/16 v25, 0x6

    const/16 v26, 0x5

    move/from16 v27, v4

    const/16 v4, 0x9

    if-ne v2, v4, :cond_8b

    .line 1704
    sub-float v2, v11, v15

    sub-float v2, v2, v16

    aput v2, v0, v22

    .line 1705
    sub-float v2, v17, v18

    aput v2, v0, v27

    .line 1706
    add-float v2, v19, v20

    aput v2, v0, v6

    .line 1708
    add-float v2, v17, v18

    aput v2, v0, v9

    .line 1709
    sub-float v2, v11, v14

    sub-float v2, v2, v16

    aput v2, v0, v12

    .line 1710
    sub-float v2, v21, v13

    aput v2, v0, v26

    .line 1712
    sub-float v2, v19, v20

    aput v2, v0, v25

    .line 1713
    add-float v2, v21, v13

    aput v2, v0, v24

    .line 1714
    sub-float/2addr v11, v14

    sub-float/2addr v11, v15

    aput v11, v0, v23

    goto :goto_d5

    .line 1715
    :cond_8b
    array-length v2, v0

    move/from16 v28, v4

    const/16 v4, 0x10

    if-ne v2, v4, :cond_d5

    .line 1716
    sub-float v2, v11, v15

    sub-float v2, v2, v16

    aput v2, v0, v22

    .line 1717
    sub-float v2, v17, v18

    aput v2, v0, v27

    .line 1718
    add-float v2, v19, v20

    aput v2, v0, v6

    .line 1719
    aput v10, v0, v9

    .line 1721
    add-float v2, v17, v18

    aput v2, v0, v12

    .line 1722
    sub-float v2, v11, v14

    sub-float v2, v2, v16

    aput v2, v0, v26

    .line 1723
    sub-float v2, v21, v13

    aput v2, v0, v25

    .line 1724
    aput v10, v0, v24

    .line 1726
    sub-float v2, v19, v20

    aput v2, v0, v23

    .line 1727
    add-float v2, v21, v13

    aput v2, v0, v28

    .line 1728
    sub-float v2, v11, v14

    sub-float/2addr v2, v15

    const/16 v4, 0xa

    aput v2, v0, v4

    .line 1729
    const/16 v2, 0xb

    aput v10, v0, v2

    .line 1731
    const/16 v2, 0xe

    aput v10, v0, v2

    const/16 v2, 0xd

    aput v10, v0, v2

    const/16 v2, 0xc

    aput v10, v0, v2

    .line 1732
    const/16 v2, 0xf

    aput v11, v0, v2

    .line 1734
    :cond_d5
    :goto_d5
    return-void
.end method

.method public static whitelist remapCoordinateSystem([FII[F)Z
    .registers 8
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .line 1380
    if-ne p0, p3, :cond_1e

    .line 1381
    sget-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    .line 1382
    .local v0, "temp":[F
    monitor-enter v0

    .line 1384
    :try_start_5
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1385
    array-length v1, p3

    .line 1386
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_16

    .line 1387
    aget v3, v0, v2

    aput v3, p3, v2

    .line 1386
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1389
    .end local v2    # "i":I
    :cond_16
    monitor-exit v0

    const/4 v2, 0x1

    return v2

    .line 1391
    .end local v1    # "size":I
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1

    .line 1393
    .end local v0    # "temp":[F
    :cond_1e
    :goto_1e
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o remapCoordinateSystemImpl([FII[F)Z
    .registers 27
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .line 1408
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    .line 1409
    .local v4, "length":I
    array-length v5, v0

    const/4 v6, 0x0

    if-eq v5, v4, :cond_e

    .line 1410
    return v6

    .line 1412
    :cond_e
    and-int/lit8 v5, v1, 0x7c

    if-nez v5, :cond_de

    and-int/lit8 v5, v2, 0x7c

    if-eqz v5, :cond_18

    goto/16 :goto_de

    .line 1415
    :cond_18
    and-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_dd

    and-int/lit8 v5, v2, 0x3

    if-nez v5, :cond_22

    goto/16 :goto_dd

    .line 1418
    :cond_22
    and-int/lit8 v5, v1, 0x3

    and-int/lit8 v7, v2, 0x3

    if-ne v5, v7, :cond_29

    .line 1419
    return v6

    .line 1425
    :cond_29
    xor-int v5, v1, v2

    .line 1428
    .local v5, "Z":I
    and-int/lit8 v7, v1, 0x3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 1429
    .local v7, "x":I
    and-int/lit8 v9, v2, 0x3

    sub-int/2addr v9, v8

    .line 1430
    .local v9, "y":I
    and-int/lit8 v10, v5, 0x3

    sub-int/2addr v10, v8

    .line 1433
    .local v10, "z":I
    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x3

    rem-int/2addr v11, v12

    .line 1434
    .local v11, "axis_y":I
    add-int/lit8 v13, v10, 0x2

    rem-int/2addr v13, v12

    .line 1435
    .local v13, "axis_z":I
    xor-int v14, v7, v11

    xor-int v15, v9, v13

    or-int/2addr v14, v15

    if-eqz v14, :cond_45

    .line 1436
    xor-int/lit16 v5, v5, 0x80

    .line 1439
    :cond_45
    const/16 v14, 0x80

    if-lt v1, v14, :cond_4b

    move v15, v8

    goto :goto_4c

    :cond_4b
    move v15, v6

    .line 1440
    .local v15, "sx":Z
    :goto_4c
    if-lt v2, v14, :cond_51

    move/from16 v16, v8

    goto :goto_53

    :cond_51
    move/from16 v16, v6

    .line 1441
    .local v16, "sy":Z
    :goto_53
    if-lt v5, v14, :cond_56

    move v6, v8

    .line 1444
    .local v6, "sz":Z
    :cond_56
    const/16 v14, 0x10

    if-ne v4, v14, :cond_5d

    const/16 v17, 0x4

    goto :goto_5f

    :cond_5d
    move/from16 v17, v12

    .line 1445
    .local v17, "rowLength":I
    :goto_5f
    const/16 v18, 0x0

    move/from16 v19, v8

    move/from16 v8, v18

    .local v8, "j":I
    :goto_65
    if-ge v8, v12, :cond_ba

    .line 1446
    mul-int v18, v8, v17

    .line 1447
    .local v18, "offset":I
    const/16 v20, 0x0

    move/from16 v14, v20

    .local v14, "i":I
    :goto_6d
    if-ge v14, v12, :cond_b1

    .line 1448
    if-ne v7, v14, :cond_86

    add-int v20, v18, v14

    if-eqz v15, :cond_7d

    add-int/lit8 v21, v18, 0x0

    move/from16 v22, v12

    aget v12, v0, v21

    neg-float v12, v12

    goto :goto_83

    :cond_7d
    move/from16 v22, v12

    add-int/lit8 v12, v18, 0x0

    aget v12, v0, v12

    :goto_83
    aput v12, v3, v20

    goto :goto_88

    :cond_86
    move/from16 v22, v12

    .line 1449
    :goto_88
    if-ne v9, v14, :cond_9a

    add-int v12, v18, v14

    if-eqz v16, :cond_94

    add-int/lit8 v20, v18, 0x1

    aget v0, p0, v20

    neg-float v0, v0

    goto :goto_98

    :cond_94
    add-int/lit8 v0, v18, 0x1

    aget v0, p0, v0

    :goto_98
    aput v0, v3, v12

    .line 1450
    :cond_9a
    if-ne v10, v14, :cond_aa

    add-int v0, v18, v14

    add-int/lit8 v12, v18, 0x2

    if-eqz v6, :cond_a6

    aget v12, p0, v12

    neg-float v12, v12

    goto :goto_a8

    :cond_a6
    aget v12, p0, v12

    :goto_a8
    aput v12, v3, v0

    .line 1447
    :cond_aa
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v12, v22

    goto :goto_6d

    :cond_b1
    move/from16 v22, v12

    .line 1445
    .end local v14    # "i":I
    .end local v18    # "offset":I
    add-int/lit8 v8, v8, 0x1

    const/16 v14, 0x10

    move-object/from16 v0, p0

    goto :goto_65

    :cond_ba
    move/from16 v22, v12

    .line 1453
    .end local v8    # "j":I
    const/16 v0, 0x10

    if-ne v4, v0, :cond_dc

    .line 1454
    const/16 v0, 0xe

    const/4 v8, 0x0

    aput v8, v3, v0

    const/16 v0, 0xd

    aput v8, v3, v0

    const/16 v0, 0xc

    aput v8, v3, v0

    const/16 v0, 0xb

    aput v8, v3, v0

    const/4 v0, 0x7

    aput v8, v3, v0

    aput v8, v3, v22

    .line 1455
    const/16 v0, 0xf

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v3, v0

    .line 1457
    :cond_dc
    return v19

    .line 1416
    .end local v5    # "Z":I
    .end local v6    # "sz":Z
    .end local v7    # "x":I
    .end local v9    # "y":I
    .end local v10    # "z":I
    .end local v11    # "axis_y":I
    .end local v13    # "axis_z":I
    .end local v15    # "sx":Z
    .end local v16    # "sy":Z
    .end local v17    # "rowLength":I
    :cond_dd
    :goto_dd
    return v6

    .line 1413
    :cond_de
    :goto_de
    return v6
.end method


# virtual methods
.method public whitelist cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 1806
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method protected abstract greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
.end method

.method public whitelist createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 3
    .param p1, "mem"    # Landroid/hardware/HardwareBuffer;

    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createDirectChannel(Landroid/os/MemoryFile;)Landroid/hardware/SensorDirectChannel;
    .registers 3
    .param p1, "mem"    # Landroid/os/MemoryFile;

    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v0

    return-object v0
.end method

.method protected abstract greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
.end method

.method greylist-max-o destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V
    .registers 2
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;

    .line 975
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V

    .line 976
    return-void
.end method

.method protected abstract greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
.end method

.method public whitelist flush(Landroid/hardware/SensorEventListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 918
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public whitelist getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 7
    .param p1, "type"    # I

    .line 526
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 527
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 531
    .local v1, "wakeUpSensor":Z
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x11

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x16

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x17

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x22

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x20

    if-eq p1, v2, :cond_2d

    const/16 v2, 0x24

    if-ne p1, v2, :cond_2e

    .line 537
    :cond_2d
    const/4 v1, 0x1

    .line 540
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 541
    .local v3, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v4

    if-ne v4, v1, :cond_45

    return-object v3

    .line 542
    .end local v3    # "sensor":Landroid/hardware/Sensor;
    :cond_45
    goto :goto_32

    .line 543
    :cond_46
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .registers 7
    .param p1, "type"    # I
    .param p2, "wakeUp"    # Z

    .line 573
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 574
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 575
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v3

    if-ne v3, p2, :cond_1b

    .line 576
    return-object v2

    .line 578
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_1b
    goto :goto_8

    .line 579
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDynamicSensorList(I)Ljava/util/List;
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    move-result-object v0

    .line 496
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 497
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 499
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 501
    .local v3, "i":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_2a

    .line 502
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    .end local v3    # "i":Landroid/hardware/Sensor;
    :cond_2a
    goto :goto_15

    .line 505
    :cond_2b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected abstract greylist-max-o getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getSensorByHandle(I)Landroid/hardware/Sensor;
    .registers 5
    .param p1, "sensorHandle"    # I

    .line 468
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 469
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 470
    return-object v1

    .line 472
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1b
    goto :goto_8

    .line 473
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSensorList(I)Ljava/util/List;
    .registers 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 435
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 436
    :try_start_7
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 437
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v2, :cond_40

    .line 438
    const/4 v3, -0x1

    if-ne p1, v3, :cond_16

    .line 439
    move-object v2, v0

    goto :goto_36

    .line 441
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 443
    .local v4, "i":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p1, :cond_35

    .line 444
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v4    # "i":Landroid/hardware/Sensor;
    :cond_35
    goto :goto_20

    .line 448
    :cond_36
    :goto_36
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 449
    iget-object v3, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 451
    :cond_40
    monitor-exit v1

    .line 452
    return-object v2

    .line 451
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v2
.end method

.method public whitelist getSensors()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public whitelist initDataInjection(Z)Z
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1874
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->initDataInjectionImpl(ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist initDataInjection(ZI)Z
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "mode"    # I

    .line 1908
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->initDataInjectionImpl(ZI)Z

    move-result v0

    return v0
.end method

.method protected abstract blacklist initDataInjectionImpl(ZI)Z
.end method

.method public whitelist injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .registers 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1943
    if-eqz p1, :cond_69

    .line 1946
    if-eqz p2, :cond_60

    .line 1949
    const/16 v0, 0x17

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    .line 1950
    .local v0, "expectedNumValues":I
    array-length v1, p2

    if-ne v1, v0, :cond_2e

    .line 1955
    const/4 v1, -0x1

    if-lt p3, v1, :cond_26

    const/4 v1, 0x3

    if-gt p3, v1, :cond_26

    .line 1958
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_1e

    .line 1961
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result v1

    return v1

    .line 1959
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative or zero sensor timestamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1956
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid sensor accuracy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1951
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong number of values for sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1952
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1947
    .end local v0    # "expectedNumValues":I
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1944
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public whitelist isDynamicSensorDiscoverySupported()Z
    .registers 3

    .line 1063
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1064
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    .line 1021
    return-void
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1039
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    .line 1040
    return-void
.end method

.method protected abstract greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I

    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .registers 12
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I

    .line 822
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 823
    .local v3, "delay":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .end local p1    # "listener":Landroid/hardware/SensorEventListener;
    .end local p2    # "sensor":Landroid/hardware/Sensor;
    .end local p4    # "maxReportLatencyUs":I
    .local v1, "listener":Landroid/hardware/SensorEventListener;
    .local v2, "sensor":Landroid/hardware/Sensor;
    .local v5, "maxReportLatencyUs":I
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 888
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 889
    .local v3, "delayUs":I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move-object v4, p5

    .end local p1    # "listener":Landroid/hardware/SensorEventListener;
    .end local p2    # "sensor":Landroid/hardware/Sensor;
    .end local p4    # "maxReportLatencyUs":I
    .end local p5    # "handler":Landroid/os/Handler;
    .local v1, "listener":Landroid/hardware/SensorEventListener;
    .local v2, "sensor":Landroid/hardware/Sensor;
    .local v4, "handler":Landroid/os/Handler;
    .local v5, "maxReportLatencyUs":I
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 12
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 857
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 858
    .local v3, "delay":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .end local p1    # "listener":Landroid/hardware/SensorEventListener;
    .end local p2    # "sensor":Landroid/hardware/Sensor;
    .end local p4    # "handler":Landroid/os/Handler;
    .local v1, "listener":Landroid/hardware/SensorEventListener;
    .local v2, "sensor":Landroid/hardware/Sensor;
    .local v4, "handler":Landroid/os/Handler;
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;I)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public whitelist requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 1774
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public greylist-max-o setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 3
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 2005
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
.end method

.method public whitelist unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 1053
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    .line 1054
    return-void
.end method

.method protected abstract greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 701
    if-nez p1, :cond_3

    .line 702
    return-void

    .line 705
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 706
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 683
    if-eqz p1, :cond_9

    if-nez p2, :cond_5

    goto :goto_9

    .line 687
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 688
    return-void

    .line 684
    :cond_9
    :goto_9
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 643
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 644
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 662
    return-void
.end method

.method protected abstract greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
