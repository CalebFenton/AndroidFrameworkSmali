.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$1;,
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final KEY_PROXY:Ljava/lang/String; = "keyProxy"

.field private static final MAX_PAC_SIZE:J = 0x1312d00L

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

.field private final mNetThread:Landroid/os/HandlerThread;

.field private final mNetThreadHandler:Landroid/os/Handler;

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

.method static synthetic -get2(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
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
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 76
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@6
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    #@8
    .line 98
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    #@f
    .line 100
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    #@11
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    #@14
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    #@16
    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    #@18
    const-string/jumbo v1, "android.pacmanager"

    #@1b
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@1e
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    #@20
    .line 139
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@22
    .line 140
    const/4 v0, -0x1

    #@23
    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    #@25
    .line 141
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    #@27
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@2a
    .line 142
    new-instance v0, Landroid/os/Handler;

    #@2c
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    #@2e
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@35
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    #@37
    .line 145
    new-instance v0, Landroid/content/Intent;

    #@39
    const-string/jumbo v1, "android.net.proxy.PAC_REFRESH"

    #@3c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3f
    .line 144
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    #@45
    .line 146
    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    #@47
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    #@4a
    .line 147
    new-instance v1, Landroid/content/IntentFilter;

    #@4c
    const-string/jumbo v2, "android.net.proxy.PAC_REFRESH"

    #@4f
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@52
    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@55
    .line 148
    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    #@57
    .line 149
    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    #@59
    .line 138
    return-void
.end method

.method private bind()V
    .locals 4

    #@0
    .prologue
    const v3, 0x40000005    # 2.0000012f

    #@3
    .line 288
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 289
    const-string/jumbo v1, "PacManager"

    #@a
    const-string/jumbo v2, "No context for binding"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 290
    return-void

    #@11
    .line 292
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@16
    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.pacprocessor"

    #@19
    const-string/jumbo v2, "com.android.pacprocessor.PacService"

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    .line 294
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@21
    if-eqz v1, :cond_1

    #@23
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 296
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    #@29
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    #@2b
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2e
    .line 297
    return-void

    #@2f
    .line 299
    :cond_1
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    #@31
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    #@34
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@36
    .line 331
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@38
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@3a
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@3d
    .line 334
    new-instance v0, Landroid/content/Intent;

    #@3f
    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@42
    .line 335
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.proxyhandler"

    #@45
    const-string/jumbo v2, "com.android.proxyhandler.ProxyService"

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4b
    .line 336
    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    #@4d
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    #@50
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@52
    .line 369
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@54
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@56
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@59
    .line 287
    return-void
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "pacUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/32 v10, 0x1312d00

    #@3
    .line 208
    new-instance v6, Ljava/net/URL;

    #@5
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@8
    move-result-object v8

    #@9
    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@c
    .line 209
    .local v6, "url":Ljava/net/URL;
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@e
    invoke-virtual {v6, v8}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@11
    move-result-object v7

    #@12
    .line 210
    .local v7, "urlConnection":Ljava/net/URLConnection;
    const-wide/16 v2, -0x1

    #@14
    .line 212
    .local v2, "contentLength":J
    :try_start_0
    const-string/jumbo v8, "Content-Length"

    #@17
    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-wide v2

    #@1f
    .line 216
    :goto_0
    cmp-long v8, v2, v10

    #@21
    if-lez v8, :cond_0

    #@23
    .line 217
    new-instance v8, Ljava/io/IOException;

    #@25
    new-instance v9, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v10, "PAC too big: "

    #@2d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v9

    #@31
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@34
    move-result-object v9

    #@35
    const-string/jumbo v10, " bytes"

    #@38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@43
    throw v8

    #@44
    .line 219
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@46
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@49
    .line 220
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    #@4b
    new-array v0, v8, [B

    #@4d
    .line 222
    .local v0, "buffer":[B
    :cond_1
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    #@54
    move-result v4

    #@55
    .local v4, "count":I
    const/4 v8, -0x1

    #@56
    if-eq v4, v8, :cond_2

    #@58
    .line 223
    const/4 v8, 0x0

    #@59
    invoke-virtual {v1, v0, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@5c
    .line 224
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    #@5f
    move-result v8

    #@60
    int-to-long v8, v8

    #@61
    cmp-long v8, v8, v10

    #@63
    if-lez v8, :cond_1

    #@65
    .line 225
    new-instance v8, Ljava/io/IOException;

    #@67
    const-string/jumbo v9, "PAC too big"

    #@6a
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v8

    #@6e
    .line 228
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@71
    move-result-object v8

    #@72
    return-object v8

    #@73
    .line 213
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "count":I
    :catch_0
    move-exception v5

    #@74
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 154
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
    .line 156
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
    .line 260
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
    .line 261
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    #@c
    if-ge p1, v1, :cond_0

    #@e
    .line 262
    aget-object v1, v0, p1

    #@10
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@13
    move-result-wide v2

    #@14
    return-wide v2

    #@15
    .line 264
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
    .line 232
    add-int/lit8 p1, p1, 0x1

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 233
    return v0

    #@6
    .line 235
    :cond_0
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 249
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 253
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "conn.pac_change_delay"

    #@9
    .line 254
    const-string/jumbo v4, "8 32 120 14400 43200"

    #@c
    .line 252
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 255
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string/jumbo v3, "pac_change_delay"

    #@13
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 256
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
    .line 239
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@3
    .line 240
    const/4 v0, 0x4

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    #@7
    .line 238
    return-void
.end method

.method private reschedule()V
    .locals 1

    #@0
    .prologue
    .line 244
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@8
    .line 245
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    #@d
    .line 243
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 387
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
    .line 386
    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 391
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
    .line 392
    return-void

    #@c
    .line 394
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    #@e
    if-nez v0, :cond_2

    #@10
    .line 395
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
    .line 396
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :cond_2
    monitor-exit p0

    #@20
    .line 390
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
    .line 274
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 275
    const-string/jumbo v1, "PacManager"

    #@7
    const-string/jumbo v2, "setCurrentProxyScript: no proxy service"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 276
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 279
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@11
    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    #@14
    .line 280
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 284
    :goto_0
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 281
    :catch_0
    move-exception v0

    #@19
    .line 282
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
    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    #@3
    move-result-wide v0

    #@4
    .line 269
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
    .line 270
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
    .line 267
    return-void
.end method

.method private unbind()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 374
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 375
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@7
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@c
    .line 376
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    #@e
    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 379
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    #@14
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@19
    .line 380
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    #@1b
    .line 382
    :cond_1
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@1d
    .line 383
    const/4 v0, -0x1

    #@1e
    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    #@20
    .line 373
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
    .line 169
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
    .line 170
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
    .line 172
    return v4

    #@22
    .line 174
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    #@24
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 175
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
    .line 177
    const/4 v1, 0x0

    #@2d
    iput v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    #@2f
    .line 178
    const/4 v1, 0x0

    #@30
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    #@32
    .line 179
    const/4 v1, 0x0

    #@33
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    #@35
    .line 180
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    #@3b
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@3e
    .line 181
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@41
    .line 182
    const/4 v1, 0x1

    #@42
    monitor-exit p0

    #@43
    return v1

    #@44
    .line 174
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
    .line 184
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
    .line 185
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    #@55
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@56
    .line 186
    :try_start_6
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@58
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    #@5a
    .line 187
    const/4 v1, 0x0

    #@5b
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    #@5d
    .line 188
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@5f
    if-eqz v1, :cond_2

    #@61
    .line 190
    :try_start_7
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    #@63
    invoke-interface {v1}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@66
    .line 194
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
    .line 198
    return v4

    #@6c
    .line 191
    :catch_0
    move-exception v0

    #@6d
    .line 192
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
    .line 194
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@79
    goto :goto_0

    #@7a
    .line 185
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
    .line 193
    :catchall_3
    move-exception v1

    #@7e
    .line 194
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    #@81
    .line 193
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
.end method
