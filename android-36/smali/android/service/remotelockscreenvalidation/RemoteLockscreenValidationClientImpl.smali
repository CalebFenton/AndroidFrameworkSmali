.class public Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationClientImpl.java"

# interfaces
.implements Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsConnected:Z

.field private final blacklist mIsServiceAvailable:Z

.field private final blacklist mLifecycleExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

.field private blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method public static synthetic blacklist $r8$lambda$JfDA3YI3mH_ZxG7DEtqteu_Sqrw(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->connectInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XGCA6jt69t5p-pUSdF5_pduhwcw(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->lambda$executeApiCall$2(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fW1e4QfOBfp1pbY974ICoMF-bDw(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->lambda$onServiceConnected$3(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fW2bGMD08Z-WsSIxym66YnjfrfI(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->disconnectInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qfNcIPQN5PocN5B_BCexaCqTTGg(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->lambda$connectInternal$1(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$spHN2YSAzEmGir5GAz3fJLehukE(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->lambda$disconnectInternal$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "serviceComponent"    # Landroid/content/ComponentName;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->isServiceAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsServiceAvailable:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    .line 71
    if-nez p2, :cond_24

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_25

    :cond_24
    move-object v0, p2

    :goto_25
    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    .line 73
    return-void
.end method

.method private blacklist connect()V
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda3;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method private blacklist connectInternal()V
    .registers 5

    .line 130
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_c

    .line 131
    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "RemoteLockscreenValidation service unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 134
    :cond_c
    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_11

    .line 135
    return-void

    .line 137
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.remotelockscreenvalidation.RemoteLockscreenValidationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    const/16 v1, 0x21

    .line 141
    .local v1, "flags":I
    iget-object v2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda4;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/content/Intent;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method private blacklist disconnectInternal()V
    .registers 3

    .line 115
    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    if-nez v0, :cond_c

    .line 116
    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "already disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 119
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    .line 120
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda5;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    .line 122
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 123
    return-void
.end method

.method private blacklist executeApiCall(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V
    .registers 4
    .param p1, "call"    # Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;

    .line 188
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda2;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method private blacklist executeInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V
    .registers 3
    .param p1, "call"    # Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;

    .line 192
    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    if-eqz v0, :cond_e

    .line 193
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    invoke-direct {p0, p1, v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->performApiCallInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    goto :goto_16

    .line 195
    :cond_e
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->connect()V

    .line 198
    :goto_16
    return-void
.end method

.method private blacklist getServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 178
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 179
    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v1

    .line 178
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 180
    :catch_f
    move-exception v0

    .line 181
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    .line 182
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 181
    const-string v3, "Cannot resolve service %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isServiceAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->getServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 161
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 162
    return v1

    .line 165
    :cond_c
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_REMOTE_LOCKSCREEN_VALIDATION_SERVICE"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 167
    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s/%s does not require permission %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v1

    .line 172
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$connectInternal$1(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 141
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private synthetic blacklist lambda$disconnectInternal$0()V
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$executeApiCall$2(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V
    .registers 2
    .param p1, "call"    # Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;

    .line 188
    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->executeInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$3(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    .line 220
    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->onConnectedInternal(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    return-void
.end method

.method private blacklist onConnectedInternal(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .registers 5
    .param p1, "service"    # Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    .line 145
    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    if-nez v0, :cond_10

    .line 146
    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConnectInternal but connection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    .line 148
    return-void

    .line 150
    :cond_10
    iput-object p1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;

    .line 152
    .local v1, "call":Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;
    iget-object v2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    invoke-direct {p0, v1, v2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->performApiCallInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    .line 153
    iget-object v2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 154
    .end local v1    # "call":Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;
    goto :goto_1d

    .line 155
    :cond_34
    return-void
.end method

.method private blacklist performApiCallInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .registers 6
    .param p1, "apiCaller"    # Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;
    .param p2, "service"    # Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    .line 203
    if-nez p2, :cond_8

    .line 204
    const-string v0, "Service is null"

    invoke-virtual {p1, v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;->onError(Ljava/lang/String;)V

    .line 205
    return-void

    .line 208
    :cond_8
    :try_start_8
    invoke-virtual {p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;->exec(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 213
    goto :goto_1e

    .line 209
    :catch_c
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "executeInternal error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;->onError(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->disconnect()V

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method


# virtual methods
.method public blacklist disconnect()V
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda0;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public blacklist isServiceAvailable()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsServiceAvailable:Z

    return v0
.end method

.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 231
    invoke-virtual {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->disconnect()V

    .line 232
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 236
    invoke-virtual {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->disconnect()V

    .line 237
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 218
    nop

    .line 219
    invoke-static {p2}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    move-result-object v0

    .line 220
    .local v0, "service":Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;
    iget-object v1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda1;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 226
    return-void
.end method

.method public blacklist validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
    .registers 6
    .param p1, "guess"    # [B
    .param p2, "callback"    # Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 85
    const-string v0, "Service is not available"

    invoke-interface {p2, v0}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;->onFailure(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 86
    return-void

    .line 90
    :cond_c
    goto :goto_15

    .line 88
    :catch_d
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error while failing for service unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    new-instance v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;[BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V

    invoke-direct {p0, v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->executeApiCall(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V

    .line 107
    return-void
.end method
