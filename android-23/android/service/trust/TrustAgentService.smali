.class public Landroid/service/trust/TrustAgentService;
.super Landroid/app/Service;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/TrustAgentService$ConfigurationData;,
        Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;,
        Landroid/service/trust/TrustAgentService$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FLAG_GRANT_TRUST_DISMISS_KEYGUARD:I = 0x2

.field public static final FLAG_GRANT_TRUST_INITIATED_BY_USER:I = 0x1

.field private static final MSG_CONFIGURE:I = 0x2

.field private static final MSG_DEVICE_LOCKED:I = 0x4

.field private static final MSG_DEVICE_UNLOCKED:I = 0x5

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final MSG_UNLOCK_ATTEMPT:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"

.field public static final TRUST_AGENT_META_DATA:Ljava/lang/String; = "android.service.trust.trustagent"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mManagingTrust:Z

.field private mPendingGrantTrustTask:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/service/trust/TrustAgentService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-class v1, Landroid/service/trust/TrustAgentService;

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 77
    const-string/jumbo v1, "["

    #@15
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 77
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 77
    const-string/jumbo v1, "]"

    #@28
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    #@32
    .line 146
    new-instance v0, Ljava/lang/Object;

    #@34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@37
    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    #@39
    .line 148
    new-instance v0, Landroid/service/trust/TrustAgentService$1;

    #@3b
    invoke-direct {v0, p0}, Landroid/service/trust/TrustAgentService$1;-><init>(Landroid/service/trust/TrustAgentService;)V

    #@3e
    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    #@40
    .line 74
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Remote exception while "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 229
    return-void
.end method


# virtual methods
.method public final grantTrust(Ljava/lang/CharSequence;JI)V
    .locals 8
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 292
    iget-object v7, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 293
    :try_start_0
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first."

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 292
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v7

    #@12
    throw v1

    #@13
    .line 297
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 299
    :try_start_2
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    #@19
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, v2, p2, p3, p4}, Landroid/service/trust/ITrustAgentServiceCallback;->grantTrust(Ljava/lang/CharSequence;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    :goto_0
    monitor-exit v7

    #@21
    .line 291
    return-void

    #@22
    .line 300
    :catch_0
    move-exception v0

    #@23
    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "calling enableTrust()"

    #@26
    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    #@29
    goto :goto_0

    #@2a
    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Landroid/service/trust/TrustAgentService$2;

    #@2c
    move-object v2, p0

    #@2d
    move-object v3, p1

    #@2e
    move-wide v4, p2

    #@2f
    move v6, p4

    #@30
    invoke-direct/range {v1 .. v6}, Landroid/service/trust/TrustAgentService$2;-><init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JI)V

    #@33
    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    goto :goto_0
.end method

.method public final grantTrust(Ljava/lang/CharSequence;JZ)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "initiatedByUser"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 272
    if-eqz p4, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    #@6
    .line 271
    return-void

    #@7
    .line 272
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 360
    new-instance v0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;)V

    #@6
    return-object v0
.end method

.method public onConfigure(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 244
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onCreate()V
    .locals 6

    #@0
    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 183
    new-instance v0, Landroid/content/ComponentName;

    #@5
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@c
    .line 185
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v3

    #@10
    const/4 v4, 0x0

    #@11
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@14
    move-result-object v2

    #@15
    .line 186
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string/jumbo v3, "android.permission.BIND_TRUST_AGENT"

    #@18
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    .line 187
    new-instance v3, Ljava/lang/IllegalStateException;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 188
    const-string/jumbo v5, " is not declared with the permission "

    #@32
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 189
    const-string/jumbo v5, "\""

    #@39
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    .line 189
    const-string/jumbo v5, "android.permission.BIND_TRUST_AGENT"

    #@40
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 189
    const-string/jumbo v5, "\""

    #@47
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 191
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    #@54
    .line 192
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    #@56
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v5, "Can\'t get ServiceInfo for "

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 181
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-void
.end method

.method public onDeviceLocked()V
    .locals 0

    #@0
    .prologue
    .line 219
    return-void
.end method

.method public onDeviceUnlocked()V
    .locals 0

    #@0
    .prologue
    .line 226
    return-void
.end method

.method public onTrustTimeout()V
    .locals 0

    #@0
    .prologue
    .line 212
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .locals 0
    .param p1, "successful"    # Z

    #@0
    .prologue
    .line 202
    return-void
.end method

.method public final revokeTrust()V
    .locals 3

    #@0
    .prologue
    .line 320
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 321
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 322
    const/4 v1, 0x0

    #@8
    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    #@a
    .line 324
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 326
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    #@10
    invoke-interface {v1}, Landroid/service/trust/ITrustAgentServiceCallback;->revokeTrust()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    :cond_1
    :goto_0
    monitor-exit v2

    #@14
    .line 319
    return-void

    #@15
    .line 327
    :catch_0
    move-exception v0

    #@16
    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "calling revokeTrust()"

    #@19
    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public final setManagingTrust(Z)V
    .locals 3
    .param p1, "managingTrust"    # Z

    #@0
    .prologue
    .line 343
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 344
    :try_start_0
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    #@5
    if-eq v1, p1, :cond_0

    #@7
    .line 345
    iput-boolean p1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    #@9
    .line 346
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 348
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    #@f
    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :cond_0
    :goto_0
    monitor-exit v2

    #@13
    .line 342
    return-void

    #@14
    .line 349
    :catch_0
    move-exception v0

    #@15
    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "calling setManagingTrust()"

    #@18
    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method
