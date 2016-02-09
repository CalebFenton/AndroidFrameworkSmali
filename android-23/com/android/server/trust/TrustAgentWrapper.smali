.class public Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustAgentWrapper$1;,
        Lcom/android/server/trust/TrustAgentWrapper$2;,
        Lcom/android/server/trust/TrustAgentWrapper$3;,
        Lcom/android/server/trust/TrustAgentWrapper$4;
    }
.end annotation


# static fields
.field private static final DATA_DURATION:Ljava/lang/String; = "duration"

.field private static final DEBUG:Z = false

.field private static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field private static final MSG_GRANT_TRUST:I = 0x1

.field private static final MSG_MANAGING_TRUST:I = 0x6

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final MSG_REVOKE_TRUST:I = 0x2

.field private static final MSG_SET_TRUST_AGENT_FEATURES_COMPLETED:I = 0x5

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final RESTART_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "TrustAgentWrapper"

.field private static final TRUST_EXPIRED_ACTION:Ljava/lang/String; = "android.server.trust.TRUST_EXPIRED_ACTION"


# instance fields
.field private final mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;

.field private mBound:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mManagingTrust:Z

.field private mMaximumTimeToLock:J

.field private mMessage:Ljava/lang/CharSequence;

.field private final mName:Landroid/content/ComponentName;

.field private mScheduledRestartUptimeMillis:J

.field private mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field private mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field private mTrustDisabledByDpm:Z

.field private final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field private mTrusted:Z

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@2
    return v0
.end method

.method static synthetic -get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/trust/TrustAgentWrapper;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/trust/TrustAgentWrapper;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    #@2
    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trustManagerService"    # Lcom/android/server/trust/TrustManagerService;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 95
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$1;

    #@6
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@9
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@b
    .line 107
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$2;

    #@d
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$2;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@10
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@12
    .line 194
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$3;

    #@14
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@17
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    #@19
    .line 227
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$4;

    #@1b
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@1e
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    #@20
    .line 261
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@22
    .line 262
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    #@24
    .line 263
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@26
    const-string/jumbo v3, "alarm"

    #@29
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/app/AlarmManager;

    #@2f
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    #@31
    .line 264
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@34
    move-result v2

    #@35
    iput v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@37
    .line 265
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3a
    move-result-object v2

    #@3b
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@3d
    .line 267
    new-instance v2, Landroid/content/Intent;

    #@3f
    const-string/jumbo v3, "android.server.trust.TRUST_EXPIRED_ACTION"

    #@42
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@45
    const-string/jumbo v3, "componentName"

    #@48
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@4a
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@4d
    move-result-object v2

    #@4e
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@50
    .line 268
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@52
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@54
    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@5f
    .line 269
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@68
    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    #@6a
    const-string/jumbo v2, "android.server.trust.TRUST_EXPIRED_ACTION"

    #@6d
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@70
    .line 272
    .local v0, "alarmFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@72
    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@79
    .line 273
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@7b
    invoke-virtual {v2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    .line 274
    .local v1, "pathUri":Ljava/lang/String;
    const/4 v2, 0x0

    #@80
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    #@83
    .line 278
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    #@86
    .line 279
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    #@88
    .line 280
    const v3, 0x4000001

    #@8b
    .line 279
    invoke-virtual {p1, p3, v2, v3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@8e
    move-result v2

    #@8f
    iput-boolean v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@91
    .line 281
    iget-boolean v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@93
    if-eqz v2, :cond_0

    #@95
    .line 282
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@97
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@99
    const-string/jumbo v4, "android.permission.PROVIDE_TRUST_AGENT"

    #@9c
    const/4 v5, 0x0

    #@9d
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@a0
    .line 260
    :goto_0
    return-void

    #@a1
    .line 284
    :cond_0
    const-string/jumbo v2, "TrustAgentWrapper"

    #@a4
    new-instance v3, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v4, "Can\'t bind to TrustAgent "

    #@ac
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@b2
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v3

    #@be
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    goto :goto_0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 289
    const-string/jumbo v0, "TrustAgentWrapper"

    #@3
    const-string/jumbo v1, "Remote Exception"

    #@6
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9
    .line 288
    return-void
.end method

.method private onTrustTimeout()V
    .locals 2

    #@0
    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6
    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 292
    :cond_0
    :goto_0
    return-void

    #@a
    .line 295
    :catch_0
    move-exception v0

    #@b
    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method

.method private scheduleRestart()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 436
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v0

    #@a
    const-wide/32 v2, 0x493e0

    #@d
    add-long/2addr v0, v2

    #@e
    iput-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    #@10
    .line 438
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@12
    iget-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    #@14
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@17
    .line 435
    return-void
.end method

.method private setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    #@0
    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 336
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6
    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 333
    :cond_0
    :goto_0
    return-void

    #@a
    .line 338
    :catch_0
    move-exception v0

    #@b
    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 403
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x4

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 405
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@9
    if-nez v0, :cond_0

    #@b
    .line 406
    return-void

    #@c
    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    #@e
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@10
    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@12
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logAgentStopped(ILandroid/content/ComponentName;)V

    #@17
    .line 410
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@19
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1e
    .line 411
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@21
    .line 412
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@23
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@25
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@28
    .line 413
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2a
    .line 414
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@2c
    .line 415
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@2e
    const/4 v1, 0x2

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@32
    .line 402
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getScheduledRestartUptimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 432
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    #@2
    return-wide v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@2
    return v0
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isManagingTrust()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 395
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isTrusted()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 391
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public onDeviceLocked()V
    .locals 2

    #@0
    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6
    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 314
    :cond_0
    :goto_0
    return-void

    #@a
    .line 317
    :catch_0
    move-exception v0

    #@b
    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method

.method public onDeviceUnlocked()V
    .locals 2

    #@0
    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6
    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 325
    :cond_0
    :goto_0
    return-void

    #@a
    .line 328
    :catch_0
    move-exception v0

    #@b
    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method

.method public onUnlockAttempt(Z)V
    .locals 2
    .param p1, "successful"    # Z

    #@0
    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6
    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 303
    :cond_0
    :goto_0
    return-void

    #@a
    .line 306
    :catch_0
    move-exception v0

    #@b
    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method

.method updateDevicePolicyFeatures()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 344
    const/4 v3, 0x0

    #@2
    .line 347
    .local v3, "trustDisabled":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@4
    if-eqz v6, :cond_1

    #@6
    .line 349
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v7, "device_policy"

    #@b
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    #@11
    .line 351
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@13
    const/4 v7, 0x0

    #@14
    invoke-virtual {v1, v7, v6}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    #@17
    move-result v6

    #@18
    and-int/lit8 v6, v6, 0x10

    #@1a
    if-eqz v6, :cond_3

    #@1c
    .line 354
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@1e
    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@20
    const/4 v8, 0x0

    #@21
    .line 353
    invoke-virtual {v1, v8, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    .line 355
    .local v0, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v3, 0x1

    #@26
    .line 357
    if-eqz v0, :cond_0

    #@28
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@2b
    move-result v6

    #@2c
    if-lez v6, :cond_0

    #@2e
    .line 362
    new-instance v6, Landroid/os/Binder;

    #@30
    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    #@33
    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@35
    .line 363
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@37
    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@39
    invoke-interface {v6, v0, v7}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    #@3c
    .line 368
    .end local v0    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_0
    :goto_0
    const/4 v6, 0x0

    #@3d
    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    #@40
    move-result-wide v4

    #@41
    .line 369
    .local v4, "maxTimeToLock":J
    iget-wide v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    #@43
    cmp-long v6, v4, v6

    #@45
    if-eqz v6, :cond_1

    #@47
    .line 372
    iput-wide v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    #@49
    .line 373
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    #@4b
    if-eqz v6, :cond_1

    #@4d
    .line 374
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    #@4f
    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    #@51
    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@54
    .line 375
    const/4 v6, 0x0

    #@55
    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    #@57
    .line 376
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@59
    const/4 v7, 0x3

    #@5a
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 383
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "maxTimeToLock":J
    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@5f
    if-eq v6, v3, :cond_2

    #@61
    .line 384
    iput-boolean v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@63
    .line 385
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    #@65
    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@67
    invoke-virtual {v6, v7, v9}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@6a
    .line 387
    :cond_2
    return v3

    #@6b
    .line 366
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6d
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@6f
    const/4 v8, 0x0

    #@70
    invoke-interface {v6, v7, v8}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@73
    goto :goto_0

    #@74
    .line 380
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v2

    #@75
    .line 381
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@78
    goto :goto_1
.end method
