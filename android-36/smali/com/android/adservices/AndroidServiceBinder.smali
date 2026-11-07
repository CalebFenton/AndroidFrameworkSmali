.class final Lcom/android/adservices/AndroidServiceBinder;
.super Lcom/android/adservices/ServiceBinder;
.source "AndroidServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/adservices/ServiceBinder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist BIND_FLAGS:I = 0x41

.field private static final blacklist DEFAULT_BINDER_CONNECTION_TIMEOUT_MS:I = 0x1388

.field private static final blacklist IS_DEBUGGABLE:Z


# instance fields
.field private final blacklist mBinderConverter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mBinderTimeout:I

.field private blacklist mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private final blacklist mServiceIntentAction:Ljava/lang/String;

.field private final blacklist mSimulatingLowRamDevice:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBinderConverter(Lcom/android/adservices/AndroidServiceBinder;)Ljava/util/function/Function;
    .registers 1

    iget-object p0, p0, Lcom/android/adservices/AndroidServiceBinder;->mBinderConverter:Ljava/util/function/Function;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionCountDownLatch(Lcom/android/adservices/AndroidServiceBinder;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/adservices/AndroidServiceBinder;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/adservices/AndroidServiceBinder;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/adservices/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceIntentAction(Lcom/android/adservices/AndroidServiceBinder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Lcom/android/adservices/AndroidServiceBinder;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/adservices/AndroidServiceBinder;->mService:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUserIdForLogging(Lcom/android/adservices/AndroidServiceBinder;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder;->getUserIdForLogging()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 312
    invoke-static {}, Lcom/android/adservices/AndroidServiceBinder;->computeIsDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/adservices/AndroidServiceBinder;->IS_DEBUGGABLE:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceIntentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder;, "Lcom/android/adservices/AndroidServiceBinder<TT;>;"
    .local p3, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-direct {p0}, Lcom/android/adservices/ServiceBinder;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/android/adservices/AndroidServiceBinder;->mContext:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcom/android/adservices/AndroidServiceBinder;->mBinderConverter:Ljava/util/function/Function;

    .line 99
    invoke-static {}, Lcom/android/adservices/AndroidServiceBinder;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "debug.adservices.low_ram_device"

    if-nez v0, :cond_1c

    .line 100
    iput-boolean v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mSimulatingLowRamDevice:Z

    goto :goto_33

    .line 102
    :cond_1c
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "propValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v1, 0x1

    :cond_31
    iput-boolean v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mSimulatingLowRamDevice:Z

    .line 105
    .end local v0    # "propValue":Ljava/lang/String;
    :goto_33
    iget-boolean v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mSimulatingLowRamDevice:Z

    if-eqz v0, :cond_40

    .line 106
    const-string v0, "Service %s disabled because of system property %s"

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    :cond_40
    nop

    .line 113
    const-string v0, "debug.adservices.binder_timeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mBinderTimeout:I

    .line 116
    nop

    .line 118
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder;->getUserIdForLogging()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 116
    const-string v1, "AndroidServiceBinder(): serviceIntentAction=%s, fromUser=%d, toUser=%s"

    invoke-static {v1, v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    return-void
.end method

.method private static blacklist computeIsDebuggable()Z
    .registers 3

    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    .line 320
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    return v0

    .line 324
    :cond_b
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method

.method private blacklist getServiceComponentName()Landroid/content/ComponentName;
    .registers 7

    .line 257
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder;, "Lcom/android/adservices/AndroidServiceBinder<TT;>;"
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    const-string v1, "android.adservices.TOPICS_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 258
    const-string v2, "android.adservices.MEASUREMENT_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 259
    const-string v2, "android.adservices.customaudience.CUSTOM_AUDIENCE_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 260
    const-string v2, "android.adservices.adselection.AD_SELECTION_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 261
    const-string v2, "android.adservices.ADID_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 262
    const-string v2, "android.adservices.adid.AdIdProviderService"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 263
    const-string v2, "android.adservices.APPSETID_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 264
    const-string v2, "android.adservices.appsetid.AppSetIdProviderService"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 265
    const-string v2, "android.adservices.cobalt.AdServicesCobaltUploadService"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 266
    const-string v2, "android.adservices.AD_SERVICES_COMMON_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 267
    const-string v2, "android.adservices.SHELL_COMMAND_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 268
    const-string v2, "android.adservices.signals.PROTECTED_SIGNALS_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 269
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Bad service intent action: %s"

    invoke-static {v2, v0}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 270
    return-object v1

    .line 272
    :cond_85
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/adservices/AndroidServiceBinder;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 276
    const/high16 v3, 0x100000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 277
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 278
    invoke-static {v2, v3}, Lcom/android/adservices/AdServicesCommon;->resolveAdServicesService(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 279
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_b1

    .line 280
    nop

    .line 282
    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder;->getUserIdForLogging()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 280
    const-string v5, "Failed to find serviceInfo for adServices service on user %s using intent %s"

    invoke-static {v5, v4}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 283
    return-object v1

    .line 285
    :cond_b1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist getUserIdForLogging()Ljava/lang/String;
    .registers 3

    .line 289
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder;, "Lcom/android/adservices/AndroidServiceBinder<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_15

    .line 290
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 291
    :cond_15
    const-string v0, "N/A"

    .line 289
    :goto_17
    return-object v0
.end method

.method private static blacklist isDebuggable()Z
    .registers 1

    .line 315
    sget-boolean v0, Lcom/android/adservices/AndroidServiceBinder;->IS_DEBUGGABLE:Z

    return v0
.end method


# virtual methods
.method public blacklist getService()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder;, "Lcom/android/adservices/AndroidServiceBinder<TT;>;"
    iget-boolean v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mSimulatingLowRamDevice:Z

    if-nez v0, :cond_eb

    .line 130
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_7
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_f

    .line 135
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mService:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 139
    :cond_f
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_90

    .line 141
    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 142
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 144
    monitor-exit v0

    return-object v2

    .line 146
    :cond_1c
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 148
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "getService(): binding (on user %d) to %s (on user %s)"

    .line 150
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder;->getUserIdForLogging()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 148
    invoke-static {v4, v5}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/adservices/AndroidServiceBinder;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 156
    new-instance v4, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;

    invoke-direct {v4, p0, v2}, Lcom/android/adservices/AndroidServiceBinder$AdServicesServiceConnection;-><init>(Lcom/android/adservices/AndroidServiceBinder;Lcom/android/adservices/AndroidServiceBinder-IA;)V

    iput-object v4, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_e8

    .line 161
    :try_start_51
    iget-object v4, p0, Lcom/android/adservices/AndroidServiceBinder;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/adservices/AndroidServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/adservices/AndroidServiceBinder$$ExternalSyntheticLambda0;-><init>()V

    iget-object v6, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 162
    const/16 v7, 0x41

    invoke-virtual {v4, v3, v7, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v4

    .line 164
    .local v4, "success":Z
    if-nez v4, :cond_75

    .line 165
    const-string v5, "getService(): failed to bind to %s on user %s"

    iget-object v6, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder;->getUserIdForLogging()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 165
    invoke-static {v5, v6}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    iput-object v2, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_73} :catch_7c
    .catchall {:try_start_51 .. :try_end_73} :catchall_e8

    .line 169
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_e8

    return-object v2

    .line 171
    :cond_75
    :try_start_75
    const-string v5, "getService(): bound!"

    invoke-static {v5}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7a} :catch_7c
    .catchall {:try_start_75 .. :try_end_7a} :catchall_e8

    .line 180
    .end local v4    # "success":Z
    nop

    .line 181
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_95

    .line 173
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_7c
    move-exception v4

    .line 174
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7d
    const-string v5, "getService(): caught unexpected exception during service binding to %s on user %s: %s"

    iget-object v6, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceIntentAction:Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Lcom/android/adservices/AndroidServiceBinder;->getUserIdForLogging()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7, v4}, [Ljava/lang/Object;

    move-result-object v6

    .line 174
    invoke-static {v5, v6}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    iput-object v2, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 179
    monitor-exit v0

    return-object v2

    .line 182
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_90
    const-string v1, "getService(): There is already a pending connection!"

    invoke-static {v1}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 184
    :goto_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_7d .. :try_end_96} :catchall_e8

    .line 190
    :try_start_96
    const-string v0, "getService(): waiting up to %dms for binder connection"

    iget v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mBinderTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mBinderTimeout:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 193
    const-string v0, "getService(): timed out (%dms) waiting for binder connection"

    iget v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mBinderTimeout:I

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_c1} :catch_d8

    .line 201
    :cond_c1
    nop

    .line 203
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_c5
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_cd

    .line 207
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mService:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 205
    :cond_cd
    new-instance v1, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;

    const-string v2, "Service is not available."

    invoke-direct {v1, v2}, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/adservices/AndroidServiceBinder;, "Lcom/android/adservices/AndroidServiceBinder<TT;>;"
    throw v1

    .line 208
    .restart local p0    # "this":Lcom/android/adservices/AndroidServiceBinder;, "Lcom/android/adservices/AndroidServiceBinder<TT;>;"
    :catchall_d5
    move-exception v1

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_c5 .. :try_end_d7} :catchall_d5

    throw v1

    .line 197
    :catch_d8
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Thread interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 184
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_e8
    move-exception v1

    :try_start_e9
    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v1

    .line 124
    :cond_eb
    new-instance v0, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;

    const-string v1, "Service is not bound (because of SystemProperty debug.adservices.low_ram_device)"

    invoke-direct {v0, v1}, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unbindFromService()V
    .registers 4

    .line 296
    .local p0, "this":Lcom/android/adservices/AndroidServiceBinder;, "Lcom/android/adservices/AndroidServiceBinder<TT;>;"
    iget-boolean v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mSimulatingLowRamDevice:Z

    if-eqz v0, :cond_10

    .line 297
    const-string v0, "unbindFromService(): ignored because it\'s disabled by system property %s"

    const-string v1, "debug.adservices.low_ram_device"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 300
    return-void

    .line 302
    :cond_10
    iget-object v0, p0, Lcom/android/adservices/AndroidServiceBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_13
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_23

    .line 304
    const-string v1, "unbinding..."

    invoke-static {v1}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 307
    :cond_23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 308
    iput-object v1, p0, Lcom/android/adservices/AndroidServiceBinder;->mService:Ljava/lang/Object;

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2a

    throw v1
.end method
