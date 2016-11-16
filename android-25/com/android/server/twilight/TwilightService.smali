.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasListeners:Z

.field private mLastLocation:Landroid/location/Location;

.field private mLastTwilightState:Lcom/android/server/twilight/TwilightState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListeners"
    .end annotation
.end field

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/twilight/TwilightListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/twilight/TwilightService;)Lcom/android/server/twilight/TwilightState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    #@a
    .line 76
    new-instance v0, Landroid/os/Handler;

    #@c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@13
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    #@15
    .line 74
    return-void
.end method

.method private static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .locals 11
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "timeMillis"    # J

    #@0
    .prologue
    .line 280
    if-nez p0, :cond_0

    #@2
    .line 281
    const/4 v6, 0x0

    #@3
    return-object v6

    #@4
    .line 284
    :cond_0
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    #@6
    .line 285
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    #@9
    move-result-wide v6

    #@a
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    #@d
    move-result-wide v8

    #@e
    .line 284
    invoke-direct {v0, v6, v7, v8, v9}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    #@11
    .line 287
    .local v0, "ca":Landroid/icu/impl/CalendarAstronomer;
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    #@14
    move-result-object v1

    #@15
    .line 288
    .local v1, "noon":Landroid/icu/util/Calendar;
    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@18
    .line 289
    const/16 v6, 0xb

    #@1a
    const/16 v7, 0xc

    #@1c
    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->set(II)V

    #@1f
    .line 290
    const/16 v6, 0xc

    #@21
    const/4 v7, 0x0

    #@22
    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->set(II)V

    #@25
    .line 291
    const/16 v6, 0xd

    #@27
    const/4 v7, 0x0

    #@28
    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->set(II)V

    #@2b
    .line 292
    const/16 v6, 0xe

    #@2d
    const/4 v7, 0x0

    #@2e
    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->set(II)V

    #@31
    .line 293
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@34
    move-result-wide v6

    #@35
    invoke-virtual {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@38
    .line 295
    const/4 v6, 0x1

    #@39
    invoke-virtual {v0, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    #@3c
    move-result-wide v2

    #@3d
    .line 296
    .local v2, "sunriseTimeMillis":J
    const/4 v6, 0x0

    #@3e
    invoke-virtual {v0, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    #@41
    move-result-wide v4

    #@42
    .line 298
    .local v4, "sunsetTimeMillis":J
    cmp-long v6, v4, p1

    #@44
    if-gez v6, :cond_2

    #@46
    .line 299
    const/4 v6, 0x5

    #@47
    const/4 v7, 0x1

    #@48
    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->add(II)V

    #@4b
    .line 300
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@4e
    move-result-wide v6

    #@4f
    invoke-virtual {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@52
    .line 301
    const/4 v6, 0x1

    #@53
    invoke-virtual {v0, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    #@56
    move-result-wide v2

    #@57
    .line 308
    :cond_1
    :goto_0
    new-instance v6, Lcom/android/server/twilight/TwilightState;

    #@59
    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    #@5c
    return-object v6

    #@5d
    .line 302
    :cond_2
    cmp-long v6, v2, p1

    #@5f
    if-lez v6, :cond_1

    #@61
    .line 303
    const/4 v6, 0x5

    #@62
    const/4 v7, -0x1

    #@63
    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->add(II)V

    #@66
    .line 304
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@69
    move-result-wide v6

    #@6a
    invoke-virtual {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@6d
    .line 305
    const/4 v6, 0x0

    #@6e
    invoke-virtual {v0, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    #@71
    move-result-wide v4

    #@72
    goto :goto_0
.end method

.method private startListening()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 154
    const-string/jumbo v1, "TwilightService"

    #@4
    const-string/jumbo v2, "startListening"

    #@7
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 157
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@c
    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v2

    #@10
    .line 157
    invoke-virtual {v1, v3, p0, v2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@13
    .line 161
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@15
    invoke-virtual {v1}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    #@18
    move-result-object v1

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 162
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@1d
    const-string/jumbo v2, "network"

    #@20
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 163
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@28
    .line 164
    const-string/jumbo v2, "network"

    #@2b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@2e
    move-result-object v3

    #@2f
    .line 163
    invoke-virtual {v1, v2, p0, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@32
    .line 172
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@34
    if-nez v1, :cond_1

    #@36
    .line 173
    new-instance v1, Lcom/android/server/twilight/TwilightService$2;

    #@38
    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@3b
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@3d
    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    #@3f
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@42
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@45
    .line 182
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4b
    .line 183
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@51
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@54
    .line 187
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    #@57
    .line 153
    return-void

    #@58
    .line 165
    :cond_2
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@5a
    const-string/jumbo v2, "gps"

    #@5d
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_0

    #@63
    .line 166
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@65
    .line 167
    const-string/jumbo v2, "gps"

    #@68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@6b
    move-result-object v3

    #@6c
    .line 166
    invoke-virtual {v1, v2, p0, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@6f
    goto :goto_0
.end method

.method private stopListening()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 191
    const-string/jumbo v0, "TwilightService"

    #@4
    const-string/jumbo v1, "stopListening"

    #@7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 193
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 194
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@17
    .line 195
    iput-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@19
    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 199
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@1f
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@22
    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@24
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@27
    .line 203
    iput-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    #@29
    .line 190
    return-void
.end method

.method private updateTwilightState()V
    .locals 14

    #@0
    .prologue
    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v8

    #@4
    .line 209
    .local v8, "currentTimeMillis":J
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v12, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    #@a
    .line 211
    .local v12, "location":Landroid/location/Location;
    :goto_0
    invoke-static {v12, v8, v9}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    #@d
    move-result-object v13

    #@e
    .line 217
    .local v13, "state":Lcom/android/server/twilight/TwilightState;
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    #@10
    monitor-enter v1

    #@11
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    #@13
    invoke-static {v0, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 219
    iput-object v13, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    #@1b
    .line 221
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@20
    move-result v0

    #@21
    add-int/lit8 v10, v0, -0x1

    #@23
    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_1

    #@25
    .line 222
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v11

    #@2b
    check-cast v11, Lcom/android/server/twilight/TwilightListener;

    #@2d
    .line 223
    .local v11, "listener":Lcom/android/server/twilight/TwilightListener;
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@32
    move-result-object v7

    #@33
    check-cast v7, Landroid/os/Handler;

    #@35
    .line 224
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/server/twilight/TwilightService$3;

    #@37
    invoke-direct {v0, p0, v11, v13}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    #@3a
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 221
    add-int/lit8 v10, v10, -0x1

    #@3f
    goto :goto_1

    #@40
    .line 210
    .end local v7    # "handler":Landroid/os/Handler;
    .end local v10    # "i":I
    .end local v11    # "listener":Lcom/android/server/twilight/TwilightListener;
    .end local v12    # "location":Landroid/location/Location;
    .end local v13    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@42
    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    #@45
    move-result-object v12

    #@46
    goto :goto_0

    #@47
    .restart local v12    # "location":Landroid/location/Location;
    .restart local v13    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_1
    monitor-exit v1

    #@48
    .line 235
    if-eqz v13, :cond_2

    #@4a
    .line 236
    invoke-virtual {v13}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_3

    #@50
    .line 237
    invoke-virtual {v13}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    #@53
    move-result-wide v2

    #@54
    .line 238
    .local v2, "triggerAtMillis":J
    :goto_2
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@56
    const-string/jumbo v4, "TwilightService"

    #@59
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    #@5b
    const/4 v1, 0x1

    #@5c
    move-object v5, p0

    #@5d
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@60
    .line 206
    .end local v2    # "triggerAtMillis":J
    :cond_2
    return-void

    #@61
    .line 217
    :catchall_0
    move-exception v0

    #@62
    monitor-exit v1

    #@63
    throw v0

    #@64
    .line 237
    :cond_3
    invoke-virtual {v13}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    #@67
    move-result-wide v2

    #@68
    .restart local v2    # "triggerAtMillis":J
    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 150
    return v2

    #@8
    .line 134
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    #@a
    if-nez v0, :cond_0

    #@c
    .line 135
    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    #@e
    .line 136
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 137
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    #@15
    .line 140
    :cond_0
    return v1

    #@16
    .line 142
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 143
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    #@1c
    .line 144
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 145
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    #@23
    .line 148
    :cond_1
    return v1

    #@24
    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAlarm()V
    .locals 2

    #@0
    .prologue
    .line 244
    const-string/jumbo v0, "TwilightService"

    #@3
    const-string/jumbo v1, "onAlarm"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 245
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    #@c
    .line 243
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 118
    const/16 v1, 0x3e8

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 119
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 120
    .local v0, "c":Landroid/content/Context;
    const-string/jumbo v1, "alarm"

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/app/AlarmManager;

    #@11
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@13
    .line 121
    const-string/jumbo v1, "location"

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/location/LocationManager;

    #@1c
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@1e
    .line 123
    const/4 v1, 0x1

    #@1f
    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    #@21
    .line 124
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 125
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    #@28
    .line 117
    .end local v0    # "c":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 250
    if-eqz p1, :cond_0

    #@2
    .line 251
    const-string/jumbo v0, "TwilightService"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "onLocationChanged: provider="

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 252
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 253
    const-string/jumbo v2, " accuracy="

    #@1c
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 253
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    #@23
    move-result v2

    #@24
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 254
    const-string/jumbo v2, " time="

    #@2b
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 254
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    #@32
    move-result-wide v2

    #@33
    .line 251
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 255
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    #@40
    .line 256
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    #@43
    .line 249
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 265
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 81
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    #@2
    new-instance v1, Lcom/android/server/twilight/TwilightService$1;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@a
    .line 80
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 261
    return-void
.end method
