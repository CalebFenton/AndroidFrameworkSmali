.class public Lcom/android/server/NetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$1;,
        Lcom/android/server/NetworkTimeUpdateService$2;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;,
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = false

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NETWORK_CHANGE_EVENT_DELAY_MS:I = 0x3e8

.field private static final NOT_SET:J = -0x1L

.field private static POLL_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastNtpFetchTime:J

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private mNitzZoneSetTime:J

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private mTime:Landroid/util/TrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkTimeUpdateService;I)V
    .locals 0
    .param p1, "event"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    sput v0, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    #@3
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    .line 73
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    #@7
    .line 75
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    #@9
    .line 86
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@b
    .line 251
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    #@d
    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    #@10
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    #@12
    .line 266
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$2;

    #@14
    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    #@17
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    #@19
    .line 103
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@1b
    .line 104
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@21
    .line 105
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@23
    const-string/jumbo v2, "alarm"

    #@26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Landroid/app/AlarmManager;

    #@2c
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    #@2e
    .line 106
    new-instance v0, Landroid/content/Intent;

    #@30
    const-string/jumbo v1, "com.android.server.NetworkTimeUpdateService.action.POLL"

    #@33
    const/4 v2, 0x0

    #@34
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@37
    .line 107
    .local v0, "pollIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@39
    sget v2, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    #@42
    .line 109
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@44
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@47
    move-result-object v1

    #@48
    .line 110
    const v2, 0x10e007a

    #@4b
    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@4e
    move-result v1

    #@4f
    int-to-long v2, v1

    #@50
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@52
    .line 111
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@57
    move-result-object v1

    #@58
    .line 112
    const v2, 0x10e007b

    #@5b
    .line 111
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@5e
    move-result v1

    #@5f
    int-to-long v2, v1

    #@60
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    #@62
    .line 113
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@64
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@67
    move-result-object v1

    #@68
    .line 114
    const v2, 0x10e007c

    #@6b
    .line 113
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@6e
    move-result v1

    #@6f
    iput v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    #@71
    .line 115
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@73
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@76
    move-result-object v1

    #@77
    .line 116
    const v2, 0x10e007d

    #@7a
    .line 115
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@7d
    move-result v1

    #@7e
    iput v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    #@80
    .line 118
    const-string/jumbo v1, "power"

    #@83
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@86
    move-result-object v1

    #@87
    check-cast v1, Landroid/os/PowerManager;

    #@89
    .line 119
    const-string/jumbo v2, "NetworkTimeUpdateService"

    #@8c
    const/4 v3, 0x1

    #@8d
    .line 118
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@90
    move-result-object v1

    #@91
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@93
    .line 102
    return-void
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 247
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "auto_time"

    #@a
    .line 246
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method private onPollNetworkTime(I)V
    .locals 2
    .param p1, "event"    # I

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@9
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@c
    .line 166
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTimeUnderWakeLock(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 168
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@11
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@14
    .line 161
    return-void

    #@15
    .line 167
    :catchall_0
    move-exception v0

    #@16
    .line 168
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@18
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1b
    .line 167
    throw v0
.end method

.method private onPollNetworkTimeUnderWakeLock(I)V
    .locals 14
    .param p1, "event"    # I

    #@0
    .prologue
    const-wide/16 v12, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v4

    #@7
    .line 176
    .local v4, "refTime":J
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    #@9
    cmp-long v6, v6, v12

    #@b
    if-eqz v6, :cond_0

    #@d
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    #@f
    sub-long v6, v4, v6

    #@11
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@13
    cmp-long v6, v6, v8

    #@15
    if-gez v6, :cond_0

    #@17
    .line 177
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@19
    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    #@1c
    .line 178
    return-void

    #@1d
    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@20
    move-result-wide v0

    #@21
    .line 183
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@23
    cmp-long v6, v6, v12

    #@25
    if-eqz v6, :cond_1

    #@27
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@29
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@2b
    add-long/2addr v6, v8

    #@2c
    cmp-long v6, v4, v6

    #@2e
    if-ltz v6, :cond_6

    #@30
    .line 188
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@32
    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    #@35
    move-result-wide v6

    #@36
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@38
    cmp-long v6, v6, v8

    #@3a
    if-ltz v6, :cond_2

    #@3c
    .line 189
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@3e
    invoke-interface {v6}, Landroid/util/TrustedTime;->forceRefresh()Z

    #@41
    .line 193
    :cond_2
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@43
    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    #@46
    move-result-wide v6

    #@47
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@49
    cmp-long v6, v6, v8

    #@4b
    if-gez v6, :cond_7

    #@4d
    .line 194
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@4f
    invoke-interface {v6}, Landroid/util/TrustedTime;->currentTimeMillis()J

    #@52
    move-result-wide v2

    #@53
    .line 195
    .local v2, "ntp":J
    iput v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@55
    .line 198
    sub-long v6, v2, v0

    #@57
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    #@5a
    move-result-wide v6

    #@5b
    iget v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    #@5d
    int-to-long v8, v8

    #@5e
    cmp-long v6, v6, v8

    #@60
    if-gtz v6, :cond_3

    #@62
    .line 199
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@64
    cmp-long v6, v6, v12

    #@66
    if-nez v6, :cond_4

    #@68
    .line 207
    :cond_3
    const-wide/16 v6, 0x3e8

    #@6a
    div-long v6, v2, v6

    #@6c
    const-wide/32 v8, 0x7fffffff

    #@6f
    cmp-long v6, v6, v8

    #@71
    if-gez v6, :cond_4

    #@73
    .line 208
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@76
    .line 213
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@79
    move-result-wide v6

    #@7a
    iput-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@7c
    .line 227
    .end local v2    # "ntp":J
    :cond_5
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@7e
    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    #@81
    .line 172
    return-void

    #@82
    .line 184
    :cond_6
    const/4 v6, 0x1

    #@83
    if-ne p1, v6, :cond_5

    #@85
    goto :goto_0

    #@86
    .line 216
    :cond_7
    iget v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@88
    add-int/lit8 v6, v6, 0x1

    #@8a
    iput v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@8c
    .line 217
    iget v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    #@8e
    if-ltz v6, :cond_8

    #@90
    iget v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@92
    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    #@94
    if-gt v6, v7, :cond_9

    #@96
    .line 218
    :cond_8
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    #@98
    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    #@9b
    .line 224
    :goto_1
    return-void

    #@9c
    .line 221
    :cond_9
    iput v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@9e
    .line 222
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@a0
    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    #@a3
    goto :goto_1
.end method

.method private registerForAlarms()V
    .locals 4

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@2
    .line 147
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$3;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$3;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    #@7
    .line 152
    new-instance v2, Landroid/content/IntentFilter;

    #@9
    const-string/jumbo v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    #@c
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@f
    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@12
    .line 145
    return-void
.end method

.method private registerForConnectivityIntents()V
    .locals 3

    #@0
    .prologue
    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 157
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 158
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@d
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@12
    .line 155
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    #@0
    .prologue
    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 140
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 141
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 142
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@13
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    #@15
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@18
    .line 138
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .param p1, "interval"    # J

    #@0
    .prologue
    .line 236
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7
    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v2

    #@b
    .line 238
    .local v2, "now":J
    add-long v0, v2, p1

    #@d
    .line 239
    .local v0, "next":J
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    #@f
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    #@11
    const/4 v6, 0x3

    #@12
    invoke-virtual {v4, v6, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@15
    .line 235
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "Permission Denial: can\'t dump NetworkTimeUpdateService from from pid="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 330
    const-string/jumbo v1, ", uid="

    #@22
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 331
    const-string/jumbo v1, " without permission "

    #@31
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 332
    const-string/jumbo v1, "android.permission.DUMP"

    #@38
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 333
    return-void

    #@44
    .line 335
    :cond_0
    const-string/jumbo v0, "PollingIntervalMs: "

    #@47
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 336
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@4c
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@4f
    .line 337
    const-string/jumbo v0, "\nPollingIntervalShorterMs: "

    #@52
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    .line 338
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    #@57
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@5a
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v1, "\nTryAgainTimesMax: "

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 340
    const-string/jumbo v0, "TimeErrorThresholdMs: "

    #@76
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    .line 341
    iget v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    #@7b
    int-to-long v0, v0

    #@7c
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@7f
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v1, "\nTryAgainCounter: "

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 343
    const-string/jumbo v0, "LastNtpFetchTime: "

    #@9b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    .line 344
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@a0
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@a3
    .line 345
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a6
    .line 325
    return-void
.end method

.method public systemRunning()V
    .locals 4

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    #@3
    .line 125
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    #@6
    .line 126
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForConnectivityIntents()V

    #@9
    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    #@b
    const-string/jumbo v1, "NetworkTimeUpdateService"

    #@e
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@11
    .line 129
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@14
    .line 130
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    #@16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    #@1d
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    #@1f
    .line 132
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    #@21
    const/4 v2, 0x2

    #@22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@29
    .line 134
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    #@2b
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    #@2d
    const/4 v3, 0x1

    #@2e
    invoke-direct {v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    #@31
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    #@33
    .line 135
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    #@35
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v1, v2}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    #@3a
    .line 123
    return-void
.end method
