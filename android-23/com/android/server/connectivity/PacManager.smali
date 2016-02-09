.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;,
        Lcom/android/server/connectivity/PacManager$1;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final KEY_PROXY:Ljava/lang/String; = "keyProxy"

.field public static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field public static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field public static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field public static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private mHasDownloaded:Z

.field private mHasSentBroadcast:Z

.field private mLastPort:I

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private mPacUrl:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/PacManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/PacManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/PacManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/PacManager;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "pacUri"    # Landroid/net/Uri;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/connectivity/PacManager;->get(Landroid/net/Uri;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/PacManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->longSchedule()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/PacManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->reschedule()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/PacManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "proxyMessage"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@6
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    #@8
    .line 96
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    #@f
    .line 98
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    #@11
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    #@14
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    #@16
    .line 133
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@18
    .line 134
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    #@1b
    .line 137
    new-instance v0, Landroid/content/Intent;

    #@1d
    const-string/jumbo v1, "android.net.proxy.PAC_REFRESH"

    #@20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@23
    .line 136
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    #@29
    .line 138
    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    #@2b
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    #@2e
    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    #@30
    const-string/jumbo v2, "android.net.proxy.PAC_REFRESH"

    #@33
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@36
    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@39
    .line 140
    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    #@3b
    .line 141
    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    #@3d
    .line 132
    return-void
.end method

.method private bind()V
    .locals 4

    #@0
    .prologue
    const v3, 0x40000005    # 2.0000012f

    #@3
    .line 262
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 263
    const-string/jumbo v1, "PacManager"

    #@a
    const-string/jumbo v2, "No context for binding"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 264
    return-void

    #@11
    .line 266
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@16
    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.pacprocessor"

    #@19
    const-string/jumbo v2, "com.android.pacprocessor.PacService"

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    .line 268
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@21
    if-eqz v1, :cond_1

    #@23
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 270
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@30
    .line 271
    return-void

    #@31
    .line 273
    :cond_1
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    #@33
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    #@36
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@38
    .line 305
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@3a
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@3c
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@3f
    .line 308
    new-instance v0, Landroid/content/Intent;

    #@41
    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@44
    .line 309
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.proxyhandler"

    #@47
    const-string/jumbo v2, "com.android.proxyhandler.ProxyService"

    #@4a
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4d
    .line 310
    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    #@4f
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    #@52
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@54
    .line 343
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@56
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@58
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@5b
    .line 261
    return-void
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "pacUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    new-instance v0, Ljava/net/URL;

    #@2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@9
    .line 201
    .local v0, "url":Ljava/net/URL;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@b
    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@e
    move-result-object v1

    #@f
    .line 202
    .local v1, "urlConnection":Ljava/net/URLConnection;
    new-instance v2, Ljava/lang/String;

    #@11
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    #@1c
    return-object v2
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "alarm"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/AlarmManager;

    #@f
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@11
    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@13
    return-object v0
.end method

.method private getDownloadDelay(I)J
    .locals 4
    .param p1, "delayIndex"    # I

    #@0
    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getPacChangeDelay()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, " "

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 235
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    #@c
    if-ge p1, v1, :cond_0

    #@e
    .line 236
    aget-object v1, v0, p1

    #@10
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@13
    move-result-wide v2

    #@14
    return-wide v2

    #@15
    .line 238
    :cond_0
    const-wide/16 v2, 0x0

    #@17
    return-wide v2
.end method

.method private getNextDelay(I)I
    .locals 1
    .param p1, "currentDelay"    # I

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 206
    add-int/lit8 p1, p1, 0x1

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 207
    return v0

    #@6
    .line 209
    :cond_0
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 227
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "conn.pac_change_delay"

    #@9
    .line 228
    const-string/jumbo v4, "8 32 120 14400 43200"

    #@c
    .line 226
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 229
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string/jumbo v3, "pac_change_delay"

    #@13
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 230
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_0

    #@19
    .end local v1    # "defaultDelay":Ljava/lang/String;
    :goto_0
    return-object v1

    #@1a
    .restart local v1    # "defaultDelay":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    #@1b
    goto :goto_0
.end method

.method private longSchedule()V
    .locals 1

    #@0
    .prologue
    .line 213
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@3
    .line 214
    const/4 v0, 0x4

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    #@7
    .line 212
    return-void
.end method

.method private reschedule()V
    .locals 1

    #@0
    .prologue
    .line 218
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@8
    .line 219
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    #@d
    .line 217
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    #@4
    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    #@6
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 360
    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 365
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 366
    return-void

    #@c
    .line 368
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    #@e
    if-nez v0, :cond_2

    #@10
    .line 369
    new-instance v0, Landroid/net/ProxyInfo;

    #@12
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    #@14
    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    #@16
    invoke-direct {v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    #@1c
    .line 370
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :cond_2
    monitor-exit p0

    #@20
    .line 364
    return-void

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)Z
    .locals 3
    .param p1, "script"    # Ljava/lang/String;

    #@0
    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 249
    const-string/jumbo v1, "PacManager"

    #@7
    const-string/jumbo v2, "setCurrentProxyScript: no proxy service"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 250
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 253
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@11
    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    #@14
    .line 254
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 258
    :goto_0
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 255
    :catch_0
    move-exception v0

    #@19
    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PacManager"

    #@1c
    const-string/jumbo v2, "Unable to set PAC file"

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method private setDownloadIn(I)V
    .locals 8
    .param p1, "delayIndex"    # I

    #@0
    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    #@3
    move-result-wide v0

    #@4
    .line 243
    .local v0, "delay":J
    const-wide/16 v4, 0x3e8

    #@6
    mul-long/2addr v4, v0

    #@7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v6

    #@b
    add-long v2, v4, v6

    #@d
    .line 244
    .local v2, "timeTillTrigger":J
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    #@10
    move-result-object v4

    #@11
    iget-object v5, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    #@13
    const/4 v6, 0x3

    #@14
    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@17
    .line 241
    return-void
.end method

.method private unbind()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 348
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 349
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@7
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@c
    .line 350
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@e
    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 353
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@14
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@19
    .line 354
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@1b
    .line 356
    :cond_1
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@1d
    .line 357
    const/4 v0, -0x1

    #@1e
    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    #@20
    .line 347
    return-void
.end method


# virtual methods
.method public declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z
    .locals 5
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 161
    :try_start_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 162
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    #@14
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    move-result v1

    #@1e
    if-lez v1, :cond_0

    #@20
    monitor-exit p0

    #@21
    .line 164
    return v4

    #@22
    .line 166
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    #@24
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 167
    :try_start_2
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@28
    move-result-object v1

    #@29
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    :try_start_3
    monitor-exit v2

    #@2c
    .line 169
    const/4 v1, 0x0

    #@2d
    iput v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@2f
    .line 170
    const/4 v1, 0x0

    #@30
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    #@32
    .line 171
    const/4 v1, 0x0

    #@33
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    #@35
    .line 172
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    #@3b
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@3e
    .line 173
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@41
    .line 174
    const/4 v1, 0x1

    #@42
    monitor-exit p0

    #@43
    return v1

    #@44
    .line 166
    :catchall_0
    move-exception v1

    #@45
    :try_start_4
    monitor-exit v2

    #@46
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@47
    :catchall_1
    move-exception v1

    #@48
    monitor-exit p0

    #@49
    throw v1

    #@4a
    .line 176
    :cond_1
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    #@50
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@53
    .line 177
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    #@55
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@56
    .line 178
    :try_start_6
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@58
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    #@5a
    .line 179
    const/4 v1, 0x0

    #@5b
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    #@5d
    .line 180
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@5f
    if-eqz v1, :cond_2

    #@61
    .line 182
    :try_start_7
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@63
    invoke-interface {v1}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@66
    .line 186
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@69
    :cond_2
    :goto_0
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@6a
    monitor-exit p0

    #@6b
    .line 190
    return v4

    #@6c
    .line 183
    :catch_0
    move-exception v0

    #@6d
    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string/jumbo v1, "PacManager"

    #@70
    const-string/jumbo v3, "Failed to stop PAC service"

    #@73
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@76
    .line 186
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@79
    goto :goto_0

    #@7a
    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v1

    #@7b
    :try_start_c
    monitor-exit v2

    #@7c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@7d
    .line 185
    :catchall_3
    move-exception v1

    #@7e
    .line 186
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    #@81
    .line 185
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
.end method
