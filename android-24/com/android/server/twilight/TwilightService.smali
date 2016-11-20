.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/twilight/TwilightService$1;,
        Lcom/android/server/twilight/TwilightService$2;,
        Lcom/android/server/twilight/TwilightService$3;,
        Lcom/android/server/twilight/TwilightService$4;,
        Lcom/android/server/twilight/TwilightService$5;,
        Lcom/android/server/twilight/TwilightService$LocationHandler;,
        Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_TWILIGHT_AUTO:Ljava/lang/String; = "com.android.server.action.RESET_TWILIGHT_AUTO"

.field public static final ACTION_TWILIGHT_CHANGED:Ljava/lang/String; = "android.intent.action.TWILIGHT_CHANGED"

.field static final ACTION_UPDATE_TWILIGHT_STATE:Ljava/lang/String; = "com.android.server.action.UPDATE_TWILIGHT_STATE"

.field static final DEBUG:Z = false

.field public static final EXTRA_AMOUNT:Ljava/lang/String; = "amount"

.field public static final EXTRA_IS_NIGHT:Ljava/lang/String; = "isNight"

.field private static final EXTRA_RESET_USER:Ljava/lang/String; = "user"

.field private static final RESET_TIME:J = 0x6ddd00L

.field static final TAG:Ljava/lang/String; = "TwilightService"

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentUser:I

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private mLocked:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/twilight/TwilightManager;

.field mTwilightState:Lcom/android/server/twilight/TwilightState;


# direct methods
.method static synthetic -get0(Lcom/android/server/twilight/TwilightService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/twilight/TwilightService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/twilight/TwilightService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mLocked:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 1
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/twilight/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->reregisterSettingObserver()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->scheduleReset()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setLockedState(Lcom/android/server/twilight/TwilightState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 83
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@a
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 89
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@11
    .line 217
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@16
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    #@18
    .line 554
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    #@1a
    new-instance v1, Landroid/os/Handler;

    #@1c
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@1f
    invoke-direct {v0, p0, v1}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;Landroid/os/Handler;)V

    #@22
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    #@24
    .line 577
    new-instance v0, Lcom/android/server/twilight/TwilightService$3;

    #@26
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@29
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@2b
    .line 605
    new-instance v0, Lcom/android/server/twilight/TwilightService$4;

    #@2d
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$4;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@30
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    #@32
    .line 619
    new-instance v0, Lcom/android/server/twilight/TwilightService$5;

    #@34
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$5;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@37
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    #@39
    .line 98
    return-void
.end method

.method private static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 264
    if-nez p1, :cond_0

    #@4
    .line 265
    return v3

    #@5
    .line 268
    :cond_0
    if-nez p0, :cond_1

    #@7
    .line 269
    return v2

    #@8
    .line 273
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@b
    move-result-wide v4

    #@c
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@f
    move-result-wide v6

    #@10
    cmp-long v4, v4, v6

    #@12
    if-gez v4, :cond_2

    #@14
    .line 274
    return v3

    #@15
    .line 278
    :cond_2
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    #@18
    move-result v0

    #@19
    .line 281
    .local v0, "distance":F
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    #@1c
    move-result v4

    #@1d
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    #@20
    move-result v5

    #@21
    add-float v1, v4, v5

    #@23
    .line 285
    .local v1, "totalAccuracy":F
    cmpl-float v4, v0, v1

    #@25
    if-ltz v4, :cond_3

    #@27
    :goto_0
    return v2

    #@28
    :cond_3
    move v2, v3

    #@29
    goto :goto_0
.end method

.method private reregisterSettingObserver()V
    .locals 5

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 133
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    #@a
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@d
    .line 134
    const-string/jumbo v1, "twilight_mode"

    #@10
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v1

    #@14
    .line 135
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    #@16
    iget v3, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    #@18
    .line 134
    const/4 v4, 0x0

    #@19
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1c
    .line 136
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    #@1e
    const/4 v2, 0x1

    #@1f
    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    #@22
    .line 131
    return-void
.end method

.method private scheduleReset()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    const-wide/32 v6, 0x6ddd00

    #@8
    add-long v2, v4, v6

    #@a
    .line 189
    .local v2, "resetTime":J
    new-instance v1, Landroid/content/Intent;

    #@c
    const-string/jumbo v4, "com.android.server.action.RESET_TWILIGHT_AUTO"

    #@f
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 190
    .local v1, "resetIntent":Landroid/content/Intent;
    const-string/jumbo v4, "user"

    #@15
    iget v5, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    #@17
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1a
    .line 192
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v4

    #@1e
    .line 191
    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@21
    move-result-object v0

    #@22
    .line 193
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@24
    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@27
    .line 194
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@29
    const/4 v5, 0x1

    #@2a
    invoke-virtual {v4, v5, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@2d
    .line 187
    return-void
.end method

.method private sendBroadcast()V
    .locals 4

    #@0
    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 175
    return-void

    #@9
    .line 177
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 178
    new-instance v0, Landroid/content/Intent;

    #@f
    const-string/jumbo v1, "android.intent.action.TWILIGHT_CHANGED"

    #@12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@15
    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "isNight"

    #@18
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    #@1a
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@21
    .line 180
    const-string/jumbo v1, "amount"

    #@24
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    #@26
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->getAmount()F

    #@29
    move-result v3

    #@2a
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    #@2d
    .line 181
    const/high16 v1, 0x40000000    # 2.0f

    #@2f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@32
    .line 182
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@35
    move-result-object v1

    #@36
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@38
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    monitor-exit v2

    #@3c
    .line 172
    return-void

    #@3d
    .line 173
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method

.method private setLockedState(Lcom/android/server/twilight/TwilightState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 142
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mLocked:Z

    #@6
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V

    #@9
    .line 145
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 139
    return-void

    #@e
    .line 140
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    .line 151
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 152
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v2, :cond_0

    #@7
    monitor-exit v3

    #@8
    .line 154
    return-void

    #@9
    .line 156
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    #@b
    invoke-static {v2, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 161
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    #@13
    .line 163
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v1

    #@19
    .line 164
    .local v1, "listenerLen":I
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@1c
    .line 165
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    #@24
    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->postUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 164
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .end local v0    # "i":I
    .end local v1    # "listenerLen":I
    :cond_1
    monitor-exit v3

    #@2b
    .line 169
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->sendBroadcast()V

    #@2e
    .line 150
    return-void

    #@2f
    .line 151
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 122
    const/16 v0, 0x3e8

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 123
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    .line 124
    const-string/jumbo v1, "twilight_mode"

    #@10
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    #@16
    iget v3, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    #@18
    const/4 v4, 0x0

    #@19
    .line 123
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1c
    .line 125
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    #@1e
    invoke-virtual {v0, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    #@21
    .line 126
    iput-boolean v5, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    #@23
    .line 127
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->sendBroadcast()V

    #@26
    .line 121
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "alarm"

    #@7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/app/AlarmManager;

    #@d
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    #@f
    .line 105
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    .line 106
    const-string/jumbo v2, "location"

    #@16
    .line 105
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/location/LocationManager;

    #@1c
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@1e
    .line 107
    new-instance v1, Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-direct {v1, p0, v2}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$LocationHandler;)V

    #@24
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@26
    .line 108
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    #@2c
    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    #@2e
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    #@31
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@34
    .line 111
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 112
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40
    .line 113
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@46
    .line 114
    const-string/jumbo v1, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    #@49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4c
    .line 115
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@4f
    move-result-object v1

    #@50
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@52
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@55
    .line 117
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    #@57
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    #@59
    invoke-virtual {p0, v1, v2}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@5c
    .line 103
    return-void
.end method
