.class public Lcom/android/server/NetworkTimeUpdateService;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;,
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NetworkTimeUpdateService$1;,
        Lcom/android/server/NetworkTimeUpdateService$2;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = false

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

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
    .line 61
    const/4 v0, 0x0

    #@1
    sput v0, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    #@3
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 64
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    #@7
    .line 66
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    #@9
    .line 77
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@b
    .line 230
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    #@d
    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    #@10
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    #@12
    .line 244
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$2;

    #@14
    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    #@17
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    #@19
    .line 93
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@1b
    .line 94
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@21
    .line 95
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
    .line 96
    new-instance v0, Landroid/content/Intent;

    #@30
    const-string/jumbo v1, "com.android.server.NetworkTimeUpdateService.action.POLL"

    #@33
    const/4 v2, 0x0

    #@34
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@37
    .line 97
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
    .line 99
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@44
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@47
    move-result-object v1

    #@48
    .line 100
    const v2, 0x10e0078

    #@4b
    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@4e
    move-result v1

    #@4f
    int-to-long v2, v1

    #@50
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@52
    .line 101
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@57
    move-result-object v1

    #@58
    .line 102
    const v2, 0x10e0079

    #@5b
    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@5e
    move-result v1

    #@5f
    int-to-long v2, v1

    #@60
    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    #@62
    .line 103
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@64
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@67
    move-result-object v1

    #@68
    .line 104
    const v2, 0x10e007a

    #@6b
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@6e
    move-result v1

    #@6f
    iput v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    #@71
    .line 105
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@73
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@76
    move-result-object v1

    #@77
    .line 106
    const v2, 0x10e007b

    #@7a
    .line 105
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@7d
    move-result v1

    #@7e
    iput v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    #@80
    .line 92
    return-void
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 226
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "auto_time"

    #@a
    .line 225
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
    .locals 14
    .param p1, "event"    # I

    #@0
    .prologue
    const-wide/16 v12, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 150
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    #@6
    move-result v6

    #@7
    if-nez v6, :cond_0

    #@9
    return-void

    #@a
    .line 152
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v4

    #@e
    .line 155
    .local v4, "refTime":J
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    #@10
    cmp-long v6, v6, v12

    #@12
    if-eqz v6, :cond_1

    #@14
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    #@16
    sub-long v6, v4, v6

    #@18
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@1a
    cmp-long v6, v6, v8

    #@1c
    if-gez v6, :cond_1

    #@1e
    .line 156
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@20
    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    #@23
    .line 157
    return-void

    #@24
    .line 159
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@27
    move-result-wide v0

    #@28
    .line 162
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@2a
    cmp-long v6, v6, v12

    #@2c
    if-eqz v6, :cond_2

    #@2e
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@30
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@32
    add-long/2addr v6, v8

    #@33
    cmp-long v6, v4, v6

    #@35
    if-ltz v6, :cond_7

    #@37
    .line 167
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@39
    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    #@3c
    move-result-wide v6

    #@3d
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@3f
    cmp-long v6, v6, v8

    #@41
    if-ltz v6, :cond_3

    #@43
    .line 168
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@45
    invoke-interface {v6}, Landroid/util/TrustedTime;->forceRefresh()Z

    #@48
    .line 172
    :cond_3
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@4a
    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    #@4d
    move-result-wide v6

    #@4e
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@50
    cmp-long v6, v6, v8

    #@52
    if-gez v6, :cond_8

    #@54
    .line 173
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    #@56
    invoke-interface {v6}, Landroid/util/TrustedTime;->currentTimeMillis()J

    #@59
    move-result-wide v2

    #@5a
    .line 174
    .local v2, "ntp":J
    iput v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@5c
    .line 177
    sub-long v6, v2, v0

    #@5e
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    #@61
    move-result-wide v6

    #@62
    iget v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    #@64
    int-to-long v8, v8

    #@65
    cmp-long v6, v6, v8

    #@67
    if-gtz v6, :cond_4

    #@69
    .line 178
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@6b
    cmp-long v6, v6, v12

    #@6d
    if-nez v6, :cond_5

    #@6f
    .line 186
    :cond_4
    const-wide/16 v6, 0x3e8

    #@71
    div-long v6, v2, v6

    #@73
    const-wide/32 v8, 0x7fffffff

    #@76
    cmp-long v6, v6, v8

    #@78
    if-gez v6, :cond_5

    #@7a
    .line 187
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@7d
    .line 192
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@80
    move-result-wide v6

    #@81
    iput-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    #@83
    .line 206
    .end local v2    # "ntp":J
    :cond_6
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@85
    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    #@88
    .line 148
    return-void

    #@89
    .line 163
    :cond_7
    const/4 v6, 0x1

    #@8a
    if-ne p1, v6, :cond_6

    #@8c
    goto :goto_0

    #@8d
    .line 195
    :cond_8
    iget v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@8f
    add-int/lit8 v6, v6, 0x1

    #@91
    iput v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@93
    .line 196
    iget v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    #@95
    if-ltz v6, :cond_9

    #@97
    iget v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@99
    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    #@9b
    if-gt v6, v7, :cond_a

    #@9d
    .line 197
    :cond_9
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    #@9f
    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    #@a2
    .line 203
    :goto_1
    return-void

    #@a3
    .line 200
    :cond_a
    iput v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    #@a5
    .line 201
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    #@a7
    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    #@aa
    goto :goto_1
.end method

.method private registerForAlarms()V
    .locals 4

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@2
    .line 134
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$3;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$3;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    #@7
    .line 139
    new-instance v2, Landroid/content/IntentFilter;

    #@9
    const-string/jumbo v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    #@c
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@f
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@12
    .line 132
    return-void
.end method

.method private registerForConnectivityIntents()V
    .locals 3

    #@0
    .prologue
    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 144
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 145
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@d
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@12
    .line 142
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    #@0
    .prologue
    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 127
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 128
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 129
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@13
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    #@15
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@18
    .line 125
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .param p1, "interval"    # J

    #@0
    .prologue
    .line 215
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7
    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v2

    #@b
    .line 217
    .local v2, "now":J
    add-long v0, v2, p1

    #@d
    .line 218
    .local v0, "next":J
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    #@f
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    #@11
    const/4 v6, 0x3

    #@12
    invoke-virtual {v4, v6, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@15
    .line 214
    return-void
.end method


# virtual methods
.method public systemRunning()V
    .locals 4

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    #@3
    .line 112
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    #@6
    .line 113
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForConnectivityIntents()V

    #@9
    .line 115
    new-instance v0, Landroid/os/HandlerThread;

    #@b
    const-string/jumbo v1, "NetworkTimeUpdateService"

    #@e
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@11
    .line 116
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@14
    .line 117
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
    .line 119
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
    .line 121
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
    .line 122
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    #@35
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v1, v2}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    #@3a
    .line 110
    return-void
.end method
