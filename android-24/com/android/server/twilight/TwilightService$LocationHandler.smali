.class final Lcom/android/server/twilight/TwilightService$LocationHandler;
.super Landroid/os/Handler;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationHandler"
.end annotation


# static fields
.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_DISABLE_LOCATION_UPDATES:I = 0x5

.field private static final MSG_DO_TWILIGHT_UPDATE:I = 0x4

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_PROCESS_NEW_LOCATION:I = 0x3


# instance fields
.field private mDidFirstInit:Z

.field private mLastNetworkRegisterTime:J

.field private mLastUpdateInterval:J

.field private mLocation:Landroid/location/Location;

.field private mNetworkListenerEnabled:Z

.field private mPassiveListenerEnabled:Z

.field private final mTwilightCalculator:Lcom/android/server/TwilightCalculator;

.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method private constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    #@0
    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 307
    const-wide/32 v0, -0x1b7740

    #@8
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    #@a
    .line 310
    new-instance v0, Lcom/android/server/TwilightCalculator;

    #@c
    invoke-direct {v0}, Lcom/android/server/TwilightCalculator;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@11
    .line 288
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$LocationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@3
    return-void
.end method

.method private retrieveLocation()V
    .locals 12

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 438
    const/4 v4, 0x0

    #@2
    .line 440
    .local v4, "location":Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@4
    iget-object v6, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@6
    new-instance v8, Landroid/location/Criteria;

    #@8
    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    #@b
    const/4 v9, 0x1

    #@c
    invoke-virtual {v6, v8, v9}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    #@f
    move-result-object v6

    #@10
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v5

    #@14
    .line 441
    .end local v4    # "location":Landroid/location/Location;
    .local v5, "providers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_2

    #@1a
    .line 443
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@1c
    iget-object v8, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@1e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Ljava/lang/String;

    #@24
    invoke-virtual {v8, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    #@27
    move-result-object v1

    #@28
    .line 445
    .local v1, "lastKnownLocation":Landroid/location/Location;
    if-eqz v4, :cond_1

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 446
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@2f
    move-result-wide v8

    #@30
    .line 447
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@33
    move-result-wide v10

    #@34
    .line 446
    cmp-long v6, v8, v10

    #@36
    if-gez v6, :cond_0

    #@38
    .line 448
    :cond_1
    move-object v4, v1

    #@39
    .local v4, "location":Landroid/location/Location;
    goto :goto_0

    #@3a
    .line 455
    .end local v1    # "lastKnownLocation":Landroid/location/Location;
    .end local v4    # "location":Landroid/location/Location;
    :cond_2
    if-nez v4, :cond_3

    #@3c
    .line 456
    new-instance v0, Landroid/text/format/Time;

    #@3e
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@41
    .line 457
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@44
    move-result-wide v8

    #@45
    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    #@48
    .line 459
    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    #@4a
    iget v6, v0, Landroid/text/format/Time;->isDst:I

    #@4c
    if-lez v6, :cond_4

    #@4e
    const/16 v6, 0xe10

    #@50
    :goto_1
    int-to-long v6, v6

    #@51
    sub-long v6, v8, v6

    #@53
    long-to-double v6, v6

    #@54
    .line 458
    const-wide v8, 0x3f71111111111111L    # 0.004166666666666667

    #@59
    mul-double v2, v8, v6

    #@5b
    .line 460
    .local v2, "lngOffset":D
    new-instance v4, Landroid/location/Location;

    #@5d
    const-string/jumbo v6, "fake"

    #@60
    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@63
    .line 461
    .restart local v4    # "location":Landroid/location/Location;
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    #@66
    .line 462
    const-wide/16 v6, 0x0

    #@68
    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    #@6b
    .line 463
    const v6, 0x48cb9d00    # 417000.0f

    #@6e
    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    #@71
    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@74
    move-result-wide v6

    #@75
    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    #@78
    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@7b
    move-result-wide v6

    #@7c
    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    #@7f
    .line 472
    .end local v0    # "currentTime":Landroid/text/format/Time;
    .end local v2    # "lngOffset":D
    .end local v4    # "location":Landroid/location/Location;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    #@82
    .line 437
    return-void

    #@83
    .restart local v0    # "currentTime":Landroid/text/format/Time;
    :cond_4
    move v6, v7

    #@84
    .line 459
    goto :goto_1
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@2
    .line 477
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    #@5
    .line 475
    return-void
.end method

.method private updateTwilightState()V
    .locals 26

    #@0
    .prologue
    .line 481
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 482
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@a
    const/4 v6, 0x0

    #@b
    invoke-static {v3, v6}, Lcom/android/server/twilight/TwilightService;->-wrap4(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    #@e
    .line 483
    return-void

    #@f
    .line 486
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v4

    #@13
    .line 489
    .local v4, "now":J
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@17
    .line 490
    move-object/from16 v0, p0

    #@19
    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@1b
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    #@1e
    move-result-wide v6

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@23
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    #@26
    move-result-wide v8

    #@27
    .line 489
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    #@2a
    .line 491
    move-object/from16 v0, p0

    #@2c
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@2e
    iget v3, v3, Lcom/android/server/TwilightCalculator;->mState:I

    #@30
    const/4 v6, 0x1

    #@31
    if-ne v3, v6, :cond_4

    #@33
    const/4 v14, 0x1

    #@34
    .line 492
    .local v14, "isNight":Z
    :goto_0
    move-object/from16 v0, p0

    #@36
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@38
    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    #@3a
    move-wide/from16 v20, v0

    #@3c
    .line 493
    .local v20, "todaySunrise":J
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@40
    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    #@42
    move-wide/from16 v22, v0

    #@44
    .line 496
    .local v22, "todaySunset":J
    move-object/from16 v0, p0

    #@46
    iget-object v7, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@48
    const-wide/32 v8, 0x5265c00

    #@4b
    add-long/2addr v8, v4

    #@4c
    .line 497
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@50
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    #@53
    move-result-wide v10

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@58
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    #@5b
    move-result-wide v12

    #@5c
    .line 496
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    #@5f
    .line 498
    move-object/from16 v0, p0

    #@61
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@63
    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    #@65
    move-wide/from16 v24, v0

    #@67
    .line 500
    .local v24, "tomorrowSunrise":J
    const/4 v2, 0x0

    #@68
    .line 501
    .local v2, "amount":F
    if-eqz v14, :cond_2

    #@6a
    .line 502
    const-wide/16 v6, -0x1

    #@6c
    cmp-long v3, v20, v6

    #@6e
    if-eqz v3, :cond_1

    #@70
    const-wide/16 v6, -0x1

    #@72
    cmp-long v3, v22, v6

    #@74
    if-nez v3, :cond_5

    #@76
    .line 503
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    #@78
    .line 512
    :cond_2
    :goto_1
    new-instance v18, Lcom/android/server/twilight/TwilightState;

    #@7a
    move-object/from16 v0, v18

    #@7c
    invoke-direct {v0, v14, v2}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    #@7f
    .line 516
    .local v18, "state":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, p0

    #@81
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@83
    move-object/from16 v0, v18

    #@85
    invoke-static {v3, v0}, Lcom/android/server/twilight/TwilightService;->-wrap4(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    #@88
    .line 520
    const-wide/16 v6, -0x1

    #@8a
    cmp-long v3, v20, v6

    #@8c
    if-eqz v3, :cond_3

    #@8e
    const-wide/16 v6, -0x1

    #@90
    cmp-long v3, v22, v6

    #@92
    if-nez v3, :cond_7

    #@94
    .line 522
    :cond_3
    const-wide/32 v6, 0x2932e00

    #@97
    add-long v16, v4, v6

    #@99
    .line 546
    .local v16, "nextUpdate":J
    :goto_2
    new-instance v19, Landroid/content/Intent;

    #@9b
    const-string/jumbo v3, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    #@9e
    move-object/from16 v0, v19

    #@a0
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a3
    .line 548
    .local v19, "updateIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@a5
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@a7
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@aa
    move-result-object v3

    #@ab
    const/4 v6, 0x0

    #@ac
    const/4 v7, 0x0

    #@ad
    .line 547
    move-object/from16 v0, v19

    #@af
    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@b2
    move-result-object v15

    #@b3
    .line 549
    .local v15, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@b5
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@b7
    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@b9
    invoke-virtual {v3, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@bc
    .line 550
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@c0
    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@c2
    const/4 v6, 0x1

    #@c3
    move-wide/from16 v0, v16

    #@c5
    invoke-virtual {v3, v6, v0, v1, v15}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@c8
    .line 480
    return-void

    #@c9
    .line 491
    .end local v2    # "amount":F
    .end local v14    # "isNight":Z
    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v16    # "nextUpdate":J
    .end local v18    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v19    # "updateIntent":Landroid/content/Intent;
    .end local v20    # "todaySunrise":J
    .end local v22    # "todaySunset":J
    .end local v24    # "tomorrowSunrise":J
    :cond_4
    const/4 v14, 0x0

    #@ca
    .restart local v14    # "isNight":Z
    goto/16 :goto_0

    #@cc
    .line 504
    .restart local v2    # "amount":F
    .restart local v20    # "todaySunrise":J
    .restart local v22    # "todaySunset":J
    .restart local v24    # "tomorrowSunrise":J
    :cond_5
    cmp-long v3, v4, v22

    #@ce
    if-lez v3, :cond_6

    #@d0
    .line 505
    const/high16 v3, 0x3f800000    # 1.0f

    #@d2
    sub-long v6, v4, v22

    #@d4
    long-to-float v6, v6

    #@d5
    const v7, 0x4adbba00    # 7200000.0f

    #@d8
    div-float/2addr v6, v7

    #@d9
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    #@dc
    move-result v2

    #@dd
    goto :goto_1

    #@de
    .line 507
    :cond_6
    const/4 v3, 0x0

    #@df
    .line 508
    sub-long v6, v20, v4

    #@e1
    long-to-float v6, v6

    #@e2
    const v7, 0x4adbba00    # 7200000.0f

    #@e5
    div-float/2addr v6, v7

    #@e6
    .line 507
    const/high16 v7, 0x3f800000    # 1.0f

    #@e8
    sub-float v6, v7, v6

    #@ea
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    #@ed
    move-result v2

    #@ee
    goto :goto_1

    #@ef
    .line 525
    .restart local v18    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_7
    const-wide/32 v16, 0xea60

    #@f2
    .line 527
    .restart local v16    # "nextUpdate":J
    const/high16 v3, 0x3f800000    # 1.0f

    #@f4
    cmpl-float v3, v2, v3

    #@f6
    if-eqz v3, :cond_8

    #@f8
    const/4 v3, 0x0

    #@f9
    cmpl-float v3, v2, v3

    #@fb
    if-nez v3, :cond_b

    #@fd
    .line 528
    :cond_8
    cmp-long v3, v4, v22

    #@ff
    if-lez v3, :cond_9

    #@101
    .line 529
    add-long v16, v16, v24

    #@103
    goto :goto_2

    #@104
    .line 530
    :cond_9
    cmp-long v3, v4, v20

    #@106
    if-lez v3, :cond_a

    #@108
    .line 531
    add-long v16, v16, v22

    #@10a
    goto :goto_2

    #@10b
    .line 533
    :cond_a
    add-long v16, v16, v20

    #@10d
    goto :goto_2

    #@10e
    .line 538
    :cond_b
    const-wide/32 v6, 0x83d60

    #@111
    add-long v16, v16, v6

    #@113
    goto :goto_2
.end method


# virtual methods
.method public disableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 322
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    #@4
    .line 321
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 318
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    #@4
    .line 317
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 335
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 334
    :cond_0
    :goto_0
    return-void

    #@6
    .line 337
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v9, Landroid/location/Location;

    #@a
    .line 338
    .local v9, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@c
    invoke-static {v0, v9}, Lcom/android/server/twilight/TwilightService;->-wrap0(Landroid/location/Location;Landroid/location/Location;)Z

    #@f
    move-result v8

    #@10
    .line 339
    .local v8, "hasMoved":Z
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 340
    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    #@17
    move-result v0

    #@18
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@1a
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    #@1d
    move-result v1

    #@1e
    cmpg-float v0, v0, v1

    #@20
    if-gez v0, :cond_3

    #@22
    const/4 v7, 0x1

    #@23
    .line 346
    .local v7, "hasBetterAccuracy":Z
    :goto_1
    if-nez v8, :cond_1

    #@25
    if-eqz v7, :cond_0

    #@27
    .line 347
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    #@2a
    goto :goto_0

    #@2b
    .line 339
    .end local v7    # "hasBetterAccuracy":Z
    :cond_2
    const/4 v7, 0x1

    #@2c
    .restart local v7    # "hasBetterAccuracy":Z
    goto :goto_1

    #@2d
    .line 340
    .end local v7    # "hasBetterAccuracy":Z
    :cond_3
    const/4 v7, 0x0

    #@2e
    .restart local v7    # "hasBetterAccuracy":Z
    goto :goto_1

    #@2f
    .line 353
    .end local v7    # "hasBetterAccuracy":Z
    .end local v8    # "hasMoved":Z
    .end local v9    # "location":Landroid/location/Location;
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@31
    if-nez v0, :cond_4

    #@33
    .line 356
    return-void

    #@34
    .line 358
    :cond_4
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    #@36
    const-wide/32 v2, 0x1b7740

    #@39
    add-long/2addr v0, v2

    #@3a
    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3d
    move-result-wide v2

    #@3e
    .line 358
    cmp-long v0, v0, v2

    #@40
    if-ltz v0, :cond_5

    #@42
    .line 362
    return-void

    #@43
    .line 367
    :cond_5
    const/4 v0, 0x0

    #@44
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@46
    .line 368
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@48
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@4a
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@4c
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@53
    .line 377
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@55
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@57
    const-string/jumbo v1, "network"

    #@5a
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    move-result v10

    #@5e
    .line 383
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@60
    if-nez v0, :cond_6

    #@62
    if-eqz v10, :cond_6

    #@64
    .line 384
    const/4 v0, 0x1

    #@65
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@67
    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6a
    move-result-wide v0

    #@6b
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    #@6d
    .line 386
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@6f
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@71
    const-string/jumbo v1, "network"

    #@74
    .line 387
    const/4 v4, 0x0

    #@75
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@77
    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    #@7a
    move-result-object v5

    #@7b
    const-wide/32 v2, 0x5265c00

    #@7e
    .line 386
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    #@81
    .line 389
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    #@83
    if-nez v0, :cond_6

    #@85
    .line 390
    const/4 v0, 0x1

    #@86
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    #@88
    .line 391
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@8a
    if-nez v0, :cond_6

    #@8c
    .line 392
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->retrieveLocation()V

    #@8f
    .line 402
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@91
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@93
    const-string/jumbo v1, "passive"

    #@96
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@99
    move-result v11

    #@9a
    .line 409
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    #@9c
    if-nez v0, :cond_7

    #@9e
    if-eqz v11, :cond_7

    #@a0
    .line 410
    const/4 v0, 0x1

    #@a1
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    #@a3
    .line 411
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@a5
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@a7
    const-string/jumbo v1, "passive"

    #@aa
    .line 412
    const-wide/16 v2, 0x0

    #@ac
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@ae
    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    #@b1
    move-result-object v5

    #@b2
    const v4, 0x469c4000    # 20000.0f

    #@b5
    .line 411
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    #@b8
    .line 415
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@ba
    if-eqz v0, :cond_9

    #@bc
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    #@be
    :goto_4
    if-nez v0, :cond_0

    #@c0
    .line 416
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@c2
    long-to-double v0, v0

    #@c3
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    #@c5
    mul-double/2addr v0, v2

    #@c6
    double-to-long v0, v0

    #@c7
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@c9
    .line 417
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@cb
    const-wide/16 v2, 0x0

    #@cd
    cmp-long v0, v0, v2

    #@cf
    if-nez v0, :cond_a

    #@d1
    .line 418
    const-wide/16 v0, 0x1388

    #@d3
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@d5
    .line 422
    :cond_8
    :goto_5
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@d7
    const/4 v2, 0x1

    #@d8
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessageDelayed(IJ)Z

    #@db
    goto/16 :goto_0

    #@dd
    .line 378
    :catch_0
    move-exception v6

    #@de
    .line 381
    .local v6, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    #@df
    .local v10, "networkLocationEnabled":Z
    goto/16 :goto_2

    #@e1
    .line 403
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "networkLocationEnabled":Z
    :catch_1
    move-exception v6

    #@e2
    .line 406
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    #@e3
    .local v11, "passiveLocationEnabled":Z
    goto :goto_3

    #@e4
    .line 415
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "passiveLocationEnabled":Z
    :cond_9
    const/4 v0, 0x0

    #@e5
    goto :goto_4

    #@e6
    .line 419
    :cond_a
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@e8
    const-wide/32 v2, 0xdbba0

    #@eb
    cmp-long v0, v0, v2

    #@ed
    if-lez v0, :cond_8

    #@ef
    .line 420
    const-wide/32 v0, 0xdbba0

    #@f2
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@f4
    goto :goto_5

    #@f5
    .line 427
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@f7
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@f9
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@fb
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    #@fe
    move-result-object v1

    #@ff
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@102
    .line 428
    const/4 v0, 0x1

    #@103
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->removeMessages(I)V

    #@106
    goto/16 :goto_0

    #@108
    .line 432
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 335
    nop

    #@10e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 313
    const/4 v1, 0x3

    #@1
    invoke-virtual {p0, v1, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    .line 314
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    #@8
    .line 312
    return-void
.end method

.method public requestLocationUpdate()V
    .locals 1

    #@0
    .prologue
    .line 326
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    #@4
    .line 325
    return-void
.end method

.method public requestTwilightUpdate()V
    .locals 1

    #@0
    .prologue
    .line 330
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    #@4
    .line 329
    return-void
.end method
