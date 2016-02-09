.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;,
        Lcom/android/server/twilight/TwilightService$LocationHandler;,
        Lcom/android/server/twilight/TwilightService$1;,
        Lcom/android/server/twilight/TwilightService$2;,
        Lcom/android/server/twilight/TwilightService$3;,
        Lcom/android/server/twilight/TwilightService$4;
    }
.end annotation


# static fields
.field static final ACTION_UPDATE_TWILIGHT_STATE:Ljava/lang/String; = "com.android.server.action.UPDATE_TWILIGHT_STATE"

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

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

.field private final mService:Lcom/android/server/twilight/TwilightManager;

.field mTwilightState:Lcom/android/server/twilight/TwilightState;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    #@2
    return-object v0
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

.method static synthetic -wrap1(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 57
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@a
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 63
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@11
    .line 108
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@16
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    #@18
    .line 426
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@1d
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    #@1f
    .line 443
    new-instance v0, Lcom/android/server/twilight/TwilightService$3;

    #@21
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@24
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    #@26
    .line 457
    new-instance v0, Lcom/android/server/twilight/TwilightService$4;

    #@28
    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$4;-><init>(Lcom/android/server/twilight/TwilightService;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    #@2d
    .line 68
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
    .line 157
    if-nez p1, :cond_0

    #@4
    .line 158
    return v3

    #@5
    .line 161
    :cond_0
    if-nez p0, :cond_1

    #@7
    .line 162
    return v2

    #@8
    .line 166
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
    .line 167
    return v3

    #@15
    .line 171
    :cond_2
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    #@18
    move-result v0

    #@19
    .line 174
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
    .line 178
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

.method private setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    .line 139
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    #@5
    invoke-static {v2, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 145
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    #@d
    .line 147
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v1

    #@13
    .line 148
    .local v1, "listenerLen":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@16
    .line 149
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->postUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 148
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .end local v0    # "i":I
    .end local v1    # "listenerLen":I
    :cond_0
    monitor-exit v3

    #@25
    .line 138
    return-void

    #@26
    .line 139
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2
.end method


# virtual methods
.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 74
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
    .line 75
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    .line 76
    const-string/jumbo v2, "location"

    #@16
    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/location/LocationManager;

    #@1c
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    #@1e
    .line 77
    new-instance v1, Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-direct {v1, p0, v2}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$LocationHandler;)V

    #@24
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@26
    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    #@28
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    #@2b
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@2e
    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@34
    .line 81
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 82
    const-string/jumbo v1, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40
    .line 83
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@43
    move-result-object v1

    #@44
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    #@46
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@49
    .line 85
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    #@4b
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    #@4d
    invoke-virtual {p0, v1, v2}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@50
    .line 73
    return-void
.end method
