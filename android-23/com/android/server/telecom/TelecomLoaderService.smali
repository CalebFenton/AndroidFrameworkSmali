.class public Lcom/android/server/telecom/TelecomLoaderService;
.super Lcom/android/server/SystemService;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.ITelecomService"

.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "TelecomLoaderService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultDialerAppRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDefaultSmsAppRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 0
    .param p1, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(Landroid/content/pm/PackageManagerInternal;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 135
    new-instance v0, Landroid/content/ComponentName;

    #@2
    .line 136
    const-string/jumbo v1, "com.android.server.telecom"

    #@5
    .line 137
    const-string/jumbo v2, "com.android.server.telecom.components.TelecomService"

    #@8
    .line 135
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    sput-object v0, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    #@d
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 141
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    #@a
    .line 159
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    #@c
    .line 160
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V

    #@f
    .line 157
    return-void
.end method

.method private connectToTelecom()V
    .locals 6

    #@0
    .prologue
    .line 177
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 180
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    #@9
    iget-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    #@b
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@e
    .line 181
    const/4 v3, 0x0

    #@f
    iput-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    #@11
    .line 184
    :cond_0
    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-direct {v2, p0, v3}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V

    #@17
    .line 185
    .local v2, "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    new-instance v1, Landroid/content/Intent;

    #@19
    const-string/jumbo v3, "com.android.ITelecomService"

    #@1c
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 186
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    #@21
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@24
    .line 187
    const v0, 0x4000041

    #@27
    .line 191
    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    #@29
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@2b
    invoke-virtual {v3, v1, v2, v0, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 192
    iput-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    :cond_1
    monitor-exit v4

    #@34
    .line 176
    return-void

    #@35
    .line 177
    .end local v0    # "flags":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3
.end method

.method private registerCarrierConfigChangedReceiver()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 314
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    #@3
    .line 313
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@6
    move-result-object v6

    #@7
    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    #@9
    .line 315
    .local v6, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$5;

    #@b
    invoke-direct {v1, p0, v6}, Lcom/android/server/telecom/TelecomLoaderService$5;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;)V

    #@e
    .line 326
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    #@10
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@12
    .line 327
    new-instance v3, Landroid/content/IntentFilter;

    #@14
    const-string/jumbo v5, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    #@17
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1a
    move-object v5, v4

    #@1b
    .line 326
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1e
    .line 312
    return-void
.end method

.method private registerDefaultAppNotifier()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 274
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    #@4
    .line 273
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    #@a
    .line 278
    .local v4, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-string/jumbo v1, "sms_default_application"

    #@d
    .line 277
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@10
    move-result-object v3

    #@11
    .line 280
    .local v3, "defaultSmsAppUri":Landroid/net/Uri;
    const-string/jumbo v1, "dialer_default_application"

    #@14
    .line 279
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@17
    move-result-object v5

    #@18
    .line 282
    .local v5, "defaultDialerAppUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/server/telecom/TelecomLoaderService$4;

    #@1a
    .line 283
    new-instance v2, Landroid/os/Handler;

    #@1c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@23
    move-object v1, p0

    #@24
    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/TelecomLoaderService$4;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/pm/PackageManagerInternal;Landroid/net/Uri;)V

    #@27
    .line 305
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v3, v7, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@30
    .line 307
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    #@32
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, v5, v7, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@39
    .line 272
    return-void
.end method

.method private registerDefaultAppProviders()V
    .locals 2

    #@0
    .prologue
    .line 200
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    #@2
    .line 199
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    #@8
    .line 204
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$1;

    #@a
    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    #@d
    .line 203
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    #@10
    .line 227
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$2;

    #@12
    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$2;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    #@15
    .line 226
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    #@18
    .line 249
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$3;

    #@1a
    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$3;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    #@1d
    .line 248
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    #@20
    .line 198
    return-void
.end method

.method private updateSimCallManagerPermissions(Landroid/content/pm/PackageManagerInternal;I)V
    .locals 6
    .param p1, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 333
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "telecom"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/telecom/TelecomManager;

    #@b
    .line 334
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2, p2}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    #@e
    move-result-object v1

    #@f
    .line 335
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_0

    #@11
    .line 336
    const-string/jumbo v3, "TelecomLoaderService"

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "updating sim call manager permissions for userId:"

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 337
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 338
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    #@36
    .line 331
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 169
    const/16 v0, 0x226

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 170
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V

    #@7
    .line 171
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V

    #@a
    .line 172
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    #@d
    .line 168
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    #@0
    .prologue
    .line 164
    return-void
.end method
