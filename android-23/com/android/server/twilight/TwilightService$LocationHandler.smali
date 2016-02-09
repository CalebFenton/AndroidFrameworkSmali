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
    .line 181
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 199
    const-wide/32 v0, -0x1b7740

    #@8
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    #@a
    .line 202
    new-instance v0, Lcom/android/server/TwilightCalculator;

    #@c
    invoke-direct {v0}, Lcom/android/server/TwilightCalculator;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@11
    .line 181
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
    .line 321
    const/4 v4, 0x0

    #@2
    .line 323
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
    .line 324
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
    .line 326
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
    .line 328
    .local v1, "lastKnownLocation":Landroid/location/Location;
    if-eqz v4, :cond_1

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 329
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@2f
    move-result-wide v8

    #@30
    .line 330
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@33
    move-result-wide v10

    #@34
    .line 329
    cmp-long v6, v8, v10

    #@36
    if-gez v6, :cond_0

    #@38
    .line 331
    :cond_1
    move-object v4, v1

    #@39
    .local v4, "location":Landroid/location/Location;
    goto :goto_0

    #@3a
    .line 338
    .end local v1    # "lastKnownLocation":Landroid/location/Location;
    .end local v4    # "location":Landroid/location/Location;
    :cond_2
    if-nez v4, :cond_3

    #@3c
    .line 339
    new-instance v0, Landroid/text/format/Time;

    #@3e
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@41
    .line 340
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@44
    move-result-wide v8

    #@45
    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    #@48
    .line 342
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
    .line 341
    const-wide v8, 0x3f71111111111111L    # 0.004166666666666667

    #@59
    mul-double v2, v8, v6

    #@5b
    .line 343
    .local v2, "lngOffset":D
    new-instance v4, Landroid/location/Location;

    #@5d
    const-string/jumbo v6, "fake"

    #@60
    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@63
    .line 344
    .restart local v4    # "location":Landroid/location/Location;
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    #@66
    .line 345
    const-wide/16 v6, 0x0

    #@68
    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    #@6b
    .line 346
    const v6, 0x48cb9d00    # 417000.0f

    #@6e
    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    #@71
    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@74
    move-result-wide v6

    #@75
    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    #@78
    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@7b
    move-result-wide v6

    #@7c
    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    #@7f
    .line 355
    .end local v0    # "currentTime":Landroid/text/format/Time;
    .end local v2    # "lngOffset":D
    .end local v4    # "location":Landroid/location/Location;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    #@82
    .line 320
    return-void

    #@83
    .restart local v0    # "currentTime":Landroid/text/format/Time;
    :cond_4
    move v6, v7

    #@84
    .line 342
    goto :goto_1
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@2
    .line 360
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    #@5
    .line 358
    return-void
.end method

.method private updateTwilightState()V
    .locals 26

    #@0
    .prologue
    .line 364
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 365
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@a
    const/4 v4, 0x0

    #@b
    invoke-static {v3, v4}, Lcom/android/server/twilight/TwilightService;->-wrap1(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    #@e
    .line 366
    return-void

    #@f
    .line 369
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v16

    #@13
    .line 372
    .local v16, "now":J
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@17
    const-wide/32 v4, 0x5265c00

    #@1a
    sub-long v4, v16, v4

    #@1c
    .line 373
    move-object/from16 v0, p0

    #@1e
    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@20
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    #@23
    move-result-wide v6

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@28
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    #@2b
    move-result-wide v8

    #@2c
    .line 372
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    #@2f
    .line 374
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@33
    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    #@35
    move-wide/from16 v24, v0

    #@37
    .line 377
    .local v24, "yesterdaySunset":J
    move-object/from16 v0, p0

    #@39
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@3b
    .line 378
    move-object/from16 v0, p0

    #@3d
    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@3f
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    #@42
    move-result-wide v6

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@47
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    #@4a
    move-result-wide v8

    #@4b
    move-wide/from16 v4, v16

    #@4d
    .line 377
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    #@50
    .line 379
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@54
    iget v3, v3, Lcom/android/server/TwilightCalculator;->mState:I

    #@56
    const/4 v4, 0x1

    #@57
    if-ne v3, v4, :cond_2

    #@59
    const/4 v12, 0x1

    #@5a
    .line 380
    .local v12, "isNight":Z
    :goto_0
    move-object/from16 v0, p0

    #@5c
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@5e
    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    #@60
    move-wide/from16 v18, v0

    #@62
    .line 381
    .local v18, "todaySunrise":J
    move-object/from16 v0, p0

    #@64
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@66
    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    #@68
    move-wide/from16 v20, v0

    #@6a
    .line 384
    .local v20, "todaySunset":J
    move-object/from16 v0, p0

    #@6c
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@6e
    const-wide/32 v4, 0x5265c00

    #@71
    add-long v4, v4, v16

    #@73
    .line 385
    move-object/from16 v0, p0

    #@75
    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@77
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    #@7a
    move-result-wide v6

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@7f
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    #@82
    move-result-wide v8

    #@83
    .line 384
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    #@86
    .line 386
    move-object/from16 v0, p0

    #@88
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    #@8a
    iget-wide v10, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    #@8c
    .line 389
    .local v10, "tomorrowSunrise":J
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    #@8e
    move v3, v12

    #@8f
    move-wide/from16 v4, v24

    #@91
    move-wide/from16 v6, v18

    #@93
    move-wide/from16 v8, v20

    #@95
    invoke-direct/range {v2 .. v11}, Lcom/android/server/twilight/TwilightState;-><init>(ZJJJJ)V

    #@98
    .line 394
    .local v2, "state":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, p0

    #@9a
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@9c
    invoke-static {v3, v2}, Lcom/android/server/twilight/TwilightService;->-wrap1(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    #@9f
    .line 398
    const-wide/16 v4, -0x1

    #@a1
    cmp-long v3, v18, v4

    #@a3
    if-eqz v3, :cond_1

    #@a5
    const-wide/16 v4, -0x1

    #@a7
    cmp-long v3, v20, v4

    #@a9
    if-nez v3, :cond_3

    #@ab
    .line 400
    :cond_1
    const-wide/32 v4, 0x2932e00

    #@ae
    add-long v14, v16, v4

    #@b0
    .line 418
    .local v14, "nextUpdate":J
    :goto_1
    new-instance v22, Landroid/content/Intent;

    #@b2
    const-string/jumbo v3, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    #@b5
    move-object/from16 v0, v22

    #@b7
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ba
    .line 420
    .local v22, "updateIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@bc
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@be
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@c1
    move-result-object v3

    #@c2
    const/4 v4, 0x0

    #@c3
    const/4 v5, 0x0

    #@c4
    .line 419
    move-object/from16 v0, v22

    #@c6
    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@c9
    move-result-object v13

    #@ca
    .line 421
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@cc
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@ce
    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@d0
    invoke-virtual {v3, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@d3
    .line 422
    move-object/from16 v0, p0

    #@d5
    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@d7
    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@d9
    const/4 v4, 0x1

    #@da
    invoke-virtual {v3, v4, v14, v15, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@dd
    .line 363
    return-void

    #@de
    .line 379
    .end local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v10    # "tomorrowSunrise":J
    .end local v12    # "isNight":Z
    .end local v13    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "nextUpdate":J
    .end local v18    # "todaySunrise":J
    .end local v20    # "todaySunset":J
    .end local v22    # "updateIntent":Landroid/content/Intent;
    :cond_2
    const/4 v12, 0x0

    #@df
    .restart local v12    # "isNight":Z
    goto/16 :goto_0

    #@e1
    .line 403
    .restart local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .restart local v10    # "tomorrowSunrise":J
    .restart local v18    # "todaySunrise":J
    .restart local v20    # "todaySunset":J
    :cond_3
    const-wide/32 v14, 0xea60

    #@e4
    .line 405
    .restart local v14    # "nextUpdate":J
    cmp-long v3, v16, v20

    #@e6
    if-lez v3, :cond_4

    #@e8
    .line 406
    add-long/2addr v14, v10

    #@e9
    goto :goto_1

    #@ea
    .line 407
    :cond_4
    cmp-long v3, v16, v18

    #@ec
    if-lez v3, :cond_5

    #@ee
    .line 408
    add-long v14, v14, v20

    #@f0
    goto :goto_1

    #@f1
    .line 410
    :cond_5
    add-long v14, v14, v18

    #@f3
    goto :goto_1
.end method


# virtual methods
.method public enableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 210
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    #@4
    .line 209
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 222
    :cond_0
    :goto_0
    return-void

    #@6
    .line 225
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v9, Landroid/location/Location;

    #@a
    .line 226
    .local v9, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@c
    invoke-static {v0, v9}, Lcom/android/server/twilight/TwilightService;->-wrap0(Landroid/location/Location;Landroid/location/Location;)Z

    #@f
    move-result v8

    #@10
    .line 227
    .local v8, "hasMoved":Z
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 228
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
    .line 234
    .local v7, "hasBetterAccuracy":Z
    :goto_1
    if-nez v8, :cond_1

    #@25
    if-eqz v7, :cond_0

    #@27
    .line 235
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    #@2a
    goto :goto_0

    #@2b
    .line 227
    .end local v7    # "hasBetterAccuracy":Z
    :cond_2
    const/4 v7, 0x1

    #@2c
    .restart local v7    # "hasBetterAccuracy":Z
    goto :goto_1

    #@2d
    .line 228
    .end local v7    # "hasBetterAccuracy":Z
    :cond_3
    const/4 v7, 0x0

    #@2e
    .restart local v7    # "hasBetterAccuracy":Z
    goto :goto_1

    #@2f
    .line 241
    .end local v7    # "hasBetterAccuracy":Z
    .end local v8    # "hasMoved":Z
    .end local v9    # "location":Landroid/location/Location;
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@31
    if-nez v0, :cond_4

    #@33
    .line 244
    return-void

    #@34
    .line 246
    :cond_4
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    #@36
    const-wide/32 v2, 0x1b7740

    #@39
    add-long/2addr v0, v2

    #@3a
    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3d
    move-result-wide v2

    #@3e
    .line 246
    cmp-long v0, v0, v2

    #@40
    if-ltz v0, :cond_5

    #@42
    .line 250
    return-void

    #@43
    .line 255
    :cond_5
    const/4 v0, 0x0

    #@44
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@46
    .line 256
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@48
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@4a
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@4c
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@53
    .line 265
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
    .line 271
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@60
    if-nez v0, :cond_6

    #@62
    if-eqz v10, :cond_6

    #@64
    .line 272
    const/4 v0, 0x1

    #@65
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    #@67
    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6a
    move-result-wide v0

    #@6b
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    #@6d
    .line 274
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@6f
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@71
    const-string/jumbo v1, "network"

    #@74
    .line 275
    const/4 v4, 0x0

    #@75
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@77
    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    #@7a
    move-result-object v5

    #@7b
    const-wide/32 v2, 0x5265c00

    #@7e
    .line 274
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    #@81
    .line 277
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    #@83
    if-nez v0, :cond_6

    #@85
    .line 278
    const/4 v0, 0x1

    #@86
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    #@88
    .line 279
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #@8a
    if-nez v0, :cond_6

    #@8c
    .line 280
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->retrieveLocation()V

    #@8f
    .line 290
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
    .line 297
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    #@9c
    if-nez v0, :cond_7

    #@9e
    if-eqz v11, :cond_7

    #@a0
    .line 298
    const/4 v0, 0x1

    #@a1
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    #@a3
    .line 299
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@a5
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@a7
    const-string/jumbo v1, "passive"

    #@aa
    .line 300
    const-wide/16 v2, 0x0

    #@ac
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    #@ae
    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    #@b1
    move-result-object v5

    #@b2
    const v4, 0x469c4000    # 20000.0f

    #@b5
    .line 299
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    #@b8
    .line 303
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
    .line 304
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
    .line 305
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@cb
    const-wide/16 v2, 0x0

    #@cd
    cmp-long v0, v0, v2

    #@cf
    if-nez v0, :cond_a

    #@d1
    .line 306
    const-wide/16 v0, 0x1388

    #@d3
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@d5
    .line 310
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
    .line 266
    :catch_0
    move-exception v6

    #@de
    .line 269
    .local v6, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    #@df
    .local v10, "networkLocationEnabled":Z
    goto/16 :goto_2

    #@e1
    .line 291
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "networkLocationEnabled":Z
    :catch_1
    move-exception v6

    #@e2
    .line 294
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    #@e3
    .local v11, "passiveLocationEnabled":Z
    goto :goto_3

    #@e4
    .line 303
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "passiveLocationEnabled":Z
    :cond_9
    const/4 v0, 0x0

    #@e5
    goto :goto_4

    #@e6
    .line 307
    :cond_a
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@e8
    const-wide/32 v2, 0xdbba0

    #@eb
    cmp-long v0, v0, v2

    #@ed
    if-lez v0, :cond_8

    #@ef
    .line 308
    const-wide/32 v0, 0xdbba0

    #@f2
    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    #@f4
    goto :goto_5

    #@f5
    .line 315
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 205
    const/4 v1, 0x3

    #@1
    invoke-virtual {p0, v1, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    .line 206
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    #@8
    .line 204
    return-void
.end method

.method public requestLocationUpdate()V
    .locals 1

    #@0
    .prologue
    .line 214
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    #@4
    .line 213
    return-void
.end method

.method public requestTwilightUpdate()V
    .locals 1

    #@0
    .prologue
    .line 218
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    #@4
    .line 217
    return-void
.end method
