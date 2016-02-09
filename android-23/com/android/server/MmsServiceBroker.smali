.class public Lcom/android/server/MmsServiceBroker;
.super Lcom/android/server/SystemService;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MmsServiceBroker$BinderService;,
        Lcom/android/server/MmsServiceBroker$1;,
        Lcom/android/server/MmsServiceBroker$2;,
        Lcom/android/server/MmsServiceBroker$3;
    }
.end annotation


# static fields
.field private static final FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_MMS_SENT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_SENT_URI:Landroid/net/Uri;

.field private static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final RETRY_DELAY_ON_DISCONNECTION_MS:J = 0xbb8L

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "MmsServiceBroker"


# instance fields
.field private volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mService:Lcom/android/internal/telephony/IMms;

.field private final mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

.field private volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Landroid/net/Uri;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Landroid/net/Uri;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/MmsServiceBroker;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getCallingPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->tryConnecting()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 56
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, "com.android.mms.service"

    #@5
    const-string/jumbo v2, "com.android.mms.service.MmsService"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 55
    sput-object v0, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    #@d
    .line 60
    const-string/jumbo v0, "content://sms/sent/0"

    #@10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    #@16
    .line 61
    const-string/jumbo v0, "content://mms/sent/0"

    #@19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    #@1f
    .line 62
    const-string/jumbo v0, "content://sms/draft/0"

    #@22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    #@28
    .line 63
    const-string/jumbo v0, "content://mms/draft/0"

    #@2b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2e
    move-result-object v0

    #@2f
    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    #@31
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 73
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@6
    .line 74
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    #@8
    .line 75
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@a
    .line 77
    new-instance v0, Lcom/android/server/MmsServiceBroker$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$1;-><init>(Lcom/android/server/MmsServiceBroker;)V

    #@f
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    #@11
    .line 90
    new-instance v0, Lcom/android/server/MmsServiceBroker$2;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$2;-><init>(Lcom/android/server/MmsServiceBroker;)V

    #@16
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    #@18
    .line 117
    new-instance v0, Lcom/android/server/MmsServiceBroker$3;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$3;-><init>(Lcom/android/server/MmsServiceBroker;)V

    #@1d
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    #@1f
    .line 217
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    #@21
    .line 218
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    #@23
    .line 215
    return-void
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 298
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "appops"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/AppOpsManager;

    #@f
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@11
    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@13
    return-object v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 319
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v1

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v2

    #@9
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 320
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    array-length v1, v0

    #@10
    if-lez v1, :cond_0

    #@12
    .line 321
    aget-object v1, v0, v3

    #@14
    return-object v1

    #@15
    .line 323
    :cond_0
    const-string/jumbo v1, "unknown"

    #@18
    return-object v1
.end method

.method private getOrConnectService()Lcom/android/internal/telephony/IMms;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 250
    monitor-enter p0

    #@2
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 252
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v1

    #@a
    .line 255
    :cond_0
    :try_start_1
    const-string/jumbo v1, "MmsServiceBroker"

    #@d
    const-string/jumbo v6, "MmsService not connected. Try connecting..."

    #@10
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 256
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    #@15
    .line 257
    iget-object v6, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    #@17
    const/4 v7, 0x1

    #@18
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@1b
    move-result-object v6

    #@1c
    .line 256
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1f
    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result-wide v6

    #@23
    const-wide/16 v8, 0xfa0

    #@25
    add-long v2, v6, v8

    #@27
    .line 260
    .local v2, "shouldEnd":J
    const-wide/16 v4, 0xfa0

    #@29
    .line 261
    .local v4, "waitTime":J
    :goto_0
    const-wide/16 v6, 0x0

    #@2b
    cmp-long v1, v4, v6

    #@2d
    if-lez v1, :cond_2

    #@2f
    .line 264
    :try_start_2
    invoke-virtual {p0, v4, v5}, Lcom/android/server/MmsServiceBroker;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    .line 268
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 270
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    monitor-exit p0

    #@39
    return-object v1

    #@3a
    .line 265
    :catch_0
    move-exception v0

    #@3b
    .line 266
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v1, "MmsServiceBroker"

    #@3e
    const-string/jumbo v6, "Connection wait interrupted"

    #@41
    invoke-static {v1, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@44
    goto :goto_1

    #@45
    .line 250
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "shouldEnd":J
    .end local v4    # "waitTime":J
    :catchall_0
    move-exception v1

    #@46
    monitor-exit p0

    #@47
    throw v1

    #@48
    .line 273
    .restart local v2    # "shouldEnd":J
    .restart local v4    # "waitTime":J
    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4b
    move-result-wide v6

    #@4c
    sub-long v4, v2, v6

    #@4e
    goto :goto_0

    #@4f
    .line 276
    :cond_2
    const-string/jumbo v1, "MmsServiceBroker"

    #@52
    const-string/jumbo v6, "Can not connect to MmsService (timed out)"

    #@55
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@58
    monitor-exit p0

    #@59
    .line 277
    return-object v10
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 305
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    #@c
    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    #@e
    return-object v0
.end method

.method private getServiceGuarded()Lcom/android/internal/telephony/IMms;
    .locals 2

    #@0
    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getOrConnectService()Lcom/android/internal/telephony/IMms;

    #@3
    move-result-object v0

    #@4
    .line 290
    .local v0, "service":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    #@6
    .line 291
    return-object v0

    #@7
    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    #@9
    return-object v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 312
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    #@6
    .line 313
    const-string/jumbo v1, "phone"

    #@9
    .line 312
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@f
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@11
    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@13
    return-object v0
.end method

.method private tryConnecting()V
    .locals 5

    #@0
    .prologue
    .line 231
    const-string/jumbo v2, "MmsServiceBroker"

    #@3
    const-string/jumbo v3, "Connecting to MmsService"

    #@6
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 232
    monitor-enter p0

    #@a
    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 234
    const-string/jumbo v2, "MmsServiceBroker"

    #@11
    const-string/jumbo v3, "Already connected"

    #@14
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 235
    return-void

    #@19
    .line 237
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    #@1b
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@1e
    .line 238
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    #@20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 240
    :try_start_2
    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    #@25
    iget-object v3, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    #@27
    const/4 v4, 0x1

    #@28
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_1

    #@2e
    .line 241
    const-string/jumbo v2, "MmsServiceBroker"

    #@31
    const-string/jumbo v3, "Failed to bind to MmsService"

    #@34
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    :cond_1
    :goto_0
    monitor-exit p0

    #@38
    .line 230
    return-void

    #@39
    .line 243
    :catch_0
    move-exception v0

    #@3a
    .line 244
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_3
    const-string/jumbo v2, "MmsServiceBroker"

    #@3d
    const-string/jumbo v3, "Forbidden to bind to MmsService"

    #@40
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 232
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit p0

    #@46
    throw v2
.end method


# virtual methods
.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 223
    const-string/jumbo v0, "imms"

    #@3
    new-instance v1, Lcom/android/server/MmsServiceBroker$BinderService;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/MmsServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 222
    return-void
.end method

.method public systemRunning()V
    .locals 2

    #@0
    .prologue
    .line 227
    const-string/jumbo v0, "MmsServiceBroker"

    #@3
    const-string/jumbo v1, "Delay connecting to MmsService until an API is called"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 226
    return-void
.end method
