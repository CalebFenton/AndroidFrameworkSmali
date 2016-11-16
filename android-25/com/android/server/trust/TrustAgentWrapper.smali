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

.field private mPendingSuccessfulUnlock:Z

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

.method static synthetic -get11(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/trust/TrustAgentWrapper;)I
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

.method static synthetic -set3(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@2
    return p1
.end method

.method static synthetic -set7(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
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
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trustManagerService"    # Lcom/android/server/trust/TrustManagerService;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 84
    iput-boolean v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    #@7
    .line 96
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$1;

    #@9
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@c
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@e
    .line 108
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$2;

    #@10
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$2;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@13
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@15
    .line 195
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$3;

    #@17
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@1a
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    #@1c
    .line 228
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$4;

    #@1e
    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@21
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    #@23
    .line 267
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@25
    .line 268
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    #@27
    .line 269
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@29
    const-string/jumbo v3, "alarm"

    #@2c
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Landroid/app/AlarmManager;

    #@32
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    #@34
    .line 270
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@37
    move-result v2

    #@38
    iput v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@3a
    .line 271
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@40
    .line 273
    new-instance v2, Landroid/content/Intent;

    #@42
    const-string/jumbo v3, "android.server.trust.TRUST_EXPIRED_ACTION"

    #@45
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@48
    const-string/jumbo v3, "componentName"

    #@4b
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@4d
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@50
    move-result-object v2

    #@51
    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@53
    .line 274
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@55
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@57
    invoke-virtual {v3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@62
    .line 275
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@6b
    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    #@6d
    const-string/jumbo v2, "android.server.trust.TRUST_EXPIRED_ACTION"

    #@70
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@73
    .line 278
    .local v0, "alarmFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@75
    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@7c
    .line 279
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    #@7e
    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    .line 280
    .local v1, "pathUri":Ljava/lang/String;
    invoke-virtual {v0, v1, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    #@85
    .line 284
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    #@88
    .line 285
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    #@8a
    .line 286
    const v3, 0x4000001

    #@8d
    .line 285
    invoke-virtual {p1, p3, v2, v3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@90
    move-result v2

    #@91
    iput-boolean v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@93
    .line 287
    iget-boolean v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@95
    if-eqz v2, :cond_0

    #@97
    .line 288
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@99
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@9b
    const-string/jumbo v4, "android.permission.PROVIDE_TRUST_AGENT"

    #@9e
    const/4 v5, 0x0

    #@9f
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@a2
    .line 266
    :goto_0
    return-void

    #@a3
    .line 290
    :cond_0
    const-string/jumbo v2, "TrustAgentWrapper"

    #@a6
    new-instance v3, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v4, "Can\'t bind to TrustAgent "

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@b4
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@b7
    move-result-object v4

    #@b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    goto :goto_0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 295
    const-string/jumbo v0, "TrustAgentWrapper"

    #@3
    const-string/jumbo v1, "Remote Exception"

    #@6
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9
    .line 294
    return-void
.end method

.method private onTrustTimeout()V
    .locals 2

    #@0
    .prologue
    .line 300
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
    .line 298
    :cond_0
    :goto_0
    return-void

    #@a
    .line 301
    :catch_0
    move-exception v0

    #@b
    .line 302
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
    .line 446
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 447
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
    .line 448
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@12
    iget-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    #@14
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    #@17
    .line 445
    return-void
.end method

.method private setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    #@0
    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 346
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6
    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 343
    :cond_0
    :goto_0
    return-void

    #@a
    .line 348
    :catch_0
    move-exception v0

    #@b
    .line 349
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
    .line 413
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x4

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 415
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@9
    if-nez v0, :cond_0

    #@b
    .line 416
    return-void

    #@c
    .line 419
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
    .line 420
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@19
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1e
    .line 421
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@21
    .line 422
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    #@23
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@25
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@28
    .line 423
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2a
    .line 424
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@2c
    .line 425
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@2e
    const/4 v1, 0x2

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@32
    .line 412
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getScheduledRestartUptimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 442
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    #@2
    return-wide v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    #@2
    return v0
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 429
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
    .line 405
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
    .line 401
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
    .line 326
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
    .line 324
    :cond_0
    :goto_0
    return-void

    #@a
    .line 327
    :catch_0
    move-exception v0

    #@b
    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method

.method public onDeviceUnlocked()V
    .locals 2

    #@0
    .prologue
    .line 337
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
    .line 335
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

.method public onUnlockAttempt(Z)V
    .locals 2
    .param p1, "successful"    # Z

    #@0
    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 312
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6
    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    #@9
    .line 309
    :goto_0
    return-void

    #@a
    .line 314
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    goto :goto_0

    #@d
    .line 316
    :catch_0
    move-exception v0

    #@e
    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@11
    goto :goto_0
.end method

.method updateDevicePolicyFeatures()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 354
    const/4 v3, 0x0

    #@2
    .line 357
    .local v3, "trustDisabled":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@4
    if-eqz v6, :cond_1

    #@6
    .line 359
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
    .line 361
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
    .line 364
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    #@1e
    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@20
    const/4 v8, 0x0

    #@21
    .line 363
    invoke-virtual {v1, v8, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    .line 365
    .local v0, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v3, 0x1

    #@26
    .line 367
    if-eqz v0, :cond_0

    #@28
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@2b
    move-result v6

    #@2c
    if-lez v6, :cond_0

    #@2e
    .line 372
    new-instance v6, Landroid/os/Binder;

    #@30
    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    #@33
    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@35
    .line 373
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@37
    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    #@39
    invoke-interface {v6, v0, v7}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    #@3c
    .line 378
    .end local v0    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@3e
    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    #@41
    move-result-wide v4

    #@42
    .line 379
    .local v4, "maxTimeToLock":J
    iget-wide v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    #@44
    cmp-long v6, v4, v6

    #@46
    if-eqz v6, :cond_1

    #@48
    .line 382
    iput-wide v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    #@4a
    .line 383
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    #@4c
    if-eqz v6, :cond_1

    #@4e
    .line 384
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    #@50
    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    #@52
    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@55
    .line 385
    const/4 v6, 0x0

    #@56
    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    #@58
    .line 386
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    #@5a
    const/4 v7, 0x3

    #@5b
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 393
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "maxTimeToLock":J
    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@60
    if-eq v6, v3, :cond_2

    #@62
    .line 394
    iput-boolean v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    #@64
    .line 395
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    #@66
    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    #@68
    invoke-virtual {v6, v7, v9}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@6b
    .line 397
    :cond_2
    return v3

    #@6c
    .line 376
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    #@6e
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@70
    const/4 v8, 0x0

    #@71
    invoke-interface {v6, v7, v8}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@74
    goto :goto_0

    #@75
    .line 390
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v2

    #@76
    .line 391
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    #@79
    goto :goto_1
.end method
