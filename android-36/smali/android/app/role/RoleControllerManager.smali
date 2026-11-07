.class public Landroid/app/role/RoleControllerManager;
.super Ljava/lang/Object;
.source "RoleControllerManager.java"


# static fields
.field public static final blacklist KEY_EXCEPTION:Ljava/lang/String;

.field public static final blacklist KEY_RESULT:Ljava/lang/String;

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist REQUEST_TIMEOUT_MILLIS:J = 0x3a98L

.field private static volatile blacklist sRemoteServiceComponentName:Landroid/content/ComponentName;

.field private static final blacklist sRemoteServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector<",
            "Landroid/app/role/IRoleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sRemoteServicesLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector<",
            "Landroid/app/role/IRoleController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$0EloyO_-GeplHJ5zXe8j-56ktpw(Landroid/app/role/RoleControllerManager;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/role/RoleControllerManager;->lambda$grantDefaultRoles$0(Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$0tx7BPWnDrQ6WMW4cIZ8pdNKCfI(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/role/RoleControllerManager;->lambda$isApplicationVisibleForRole$4(Ljava/lang/String;Ljava/lang/String;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$SBahA-vu-Jx7yuX2REqFD-mWlt8(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerManager;->lambda$onRemoveRoleHolder$2(Ljava/lang/String;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$k3BF_MHkuZUIZzYUt_PkJ2WkZOs(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerManager;->lambda$onAddRoleHolder$1(Ljava/lang/String;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$lzBuBW3JVR2A4GzniytQyDCEgVU(Landroid/app/role/RoleControllerManager;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/role/RoleControllerManager;->lambda$onClearRoleHolders$3(Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$o_rwov9auGnSiNODH_gijJW0XC0(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/role/RoleControllerManager;->lambda$isRoleVisible$5(Ljava/lang/String;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/app/role/RoleControllerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".key.RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".key.EXCEPTION"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/role/RoleControllerManager;->LOG_TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/role/RoleControllerManager;->sRemoteServicesLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/app/role/RoleControllerManager;->sRemoteServices:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/ComponentName;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 14
    .param p1, "remoteServiceComponentName"    # Landroid/content/ComponentName;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v1, Landroid/app/role/RoleControllerManager;->sRemoteServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_6
    invoke-virtual {p3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v7, v0

    .line 111
    .local v7, "userId":I
    sget-object v0, Landroid/app/role/RoleControllerManager;->sRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    .line 112
    .local v0, "remoteService":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector<Landroid/app/role/IRoleController;>;"
    if-nez v0, :cond_3c

    .line 113
    new-instance v2, Landroid/app/role/RoleControllerManager$1;

    .line 114
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.app.role.RoleControllerService"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    new-instance v8, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda5;

    invoke-direct {v8}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda5;-><init>()V
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_42

    const/4 v6, 0x0

    move-object v3, p0

    move-object v9, p2

    .end local p2    # "handler":Landroid/os/Handler;
    .local v9, "handler":Landroid/os/Handler;
    :try_start_32
    invoke-direct/range {v2 .. v9}, Landroid/app/role/RoleControllerManager$1;-><init>(Landroid/app/role/RoleControllerManager;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V

    move-object v0, v2

    .line 124
    sget-object p2, Landroid/app/role/RoleControllerManager;->sRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {p2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3e

    .line 112
    .end local v9    # "handler":Landroid/os/Handler;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_3c
    move-object v3, p0

    move-object v9, p2

    .line 126
    .end local p2    # "handler":Landroid/os/Handler;
    .restart local v9    # "handler":Landroid/os/Handler;
    :goto_3e
    iput-object v0, v3, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    .line 127
    .end local v0    # "remoteService":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector<Landroid/app/role/IRoleController;>;"
    .end local v7    # "userId":I
    monitor-exit v1

    .line 128
    return-void

    .line 127
    .end local v9    # "handler":Landroid/os/Handler;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_42
    move-exception v0

    move-object v3, p0

    move-object v9, p2

    move-object p2, v0

    .end local p2    # "handler":Landroid/os/Handler;
    .restart local v9    # "handler":Landroid/os/Handler;
    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_48

    throw p2

    :catchall_48
    move-exception v0

    move-object p2, v0

    goto :goto_46
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-static {p1}, Landroid/app/role/RoleControllerManager;->getRemoteServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1, p1}, Landroid/app/role/RoleControllerManager;-><init>(Landroid/content/ComponentName;Landroid/os/Handler;Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method private blacklist createBooleanRemoteCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)Landroid/os/RemoteCallback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/os/RemoteCallback;"
        }
    .end annotation

    .line 278
    .local p1, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda4;-><init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public static blacklist createWithInitializedRemoteServiceComponentName(Landroid/os/Handler;Landroid/content/Context;)Landroid/app/role/RoleControllerManager;
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    new-instance v0, Landroid/app/role/RoleControllerManager;

    sget-object v1, Landroid/app/role/RoleControllerManager;->sRemoteServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, v1, p0, p1}, Landroid/app/role/RoleControllerManager;-><init>(Landroid/content/ComponentName;Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method

.method private static blacklist getRemoteServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.role.RoleControllerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 141
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 143
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static blacklist initializeRemoteServiceComponentName(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    invoke-static {p0}, Landroid/app/role/RoleControllerManager;->getRemoteServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Landroid/app/role/RoleControllerManager;->sRemoteServiceComponentName:Landroid/content/ComponentName;

    .line 91
    return-void
.end method

.method static synthetic blacklist lambda$createBooleanRemoteCallback$10(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "future"    # Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 279
    sget-object v0, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 280
    .local v0, "exception":Ljava/lang/Exception;
    if-eqz v0, :cond_e

    .line 281
    invoke-virtual {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_1b

    .line 283
    :cond_e
    sget-object v1, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 285
    :goto_1b
    return-void
.end method

.method static synthetic blacklist lambda$getLegacyFallbackDisabledRoles$6(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "future"    # Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 251
    sget-object v0, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 252
    .local v0, "exception":Ljava/lang/Exception;
    if-eqz v0, :cond_e

    .line 253
    invoke-virtual {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_17

    .line 255
    :cond_e
    sget-object v1, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 257
    :goto_17
    return-void
.end method

.method static synthetic blacklist lambda$getLegacyFallbackDisabledRoles$7(Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "service"    # Landroid/app/role/IRoleController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 250
    .local v0, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda11;-><init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p0, v1}, Landroid/app/role/IRoleController;->getLegacyFallbackDisabledRoles(Landroid/os/RemoteCallback;)V

    .line 258
    return-object v0
.end method

.method static synthetic blacklist lambda$getLegacyFallbackDisabledRoles$8(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 7
    .param p0, "err"    # Ljava/lang/Throwable;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "res"    # Ljava/util/List;

    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    .local v0, "token":J
    if-eqz p0, :cond_12

    .line 264
    :try_start_6
    sget-object v2, Landroid/app/role/RoleControllerManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error calling getLegacyFallbackDisabledRoles()"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_15

    .line 268
    :cond_12
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1a

    .line 271
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    throw v2
.end method

.method static synthetic blacklist lambda$getLegacyFallbackDisabledRoles$9(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/util/List;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "res"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 260
    new-instance v0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3, p1, p2}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$grantDefaultRoles$0(Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p1, "service"    # Landroid/app/role/IRoleController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 155
    .local v0, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerManager;->createBooleanRemoteCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)Landroid/os/RemoteCallback;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/app/role/IRoleController;->grantDefaultRoles(Landroid/os/RemoteCallback;)V

    .line 156
    return-object v0
.end method

.method private synthetic blacklist lambda$isApplicationVisibleForRole$4(Ljava/lang/String;Ljava/lang/String;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Landroid/app/role/IRoleController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 218
    .local v0, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    nop

    .line 219
    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerManager;->createBooleanRemoteCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)Landroid/os/RemoteCallback;

    move-result-object v1

    .line 218
    invoke-interface {p3, p1, p2, v1}, Landroid/app/role/IRoleController;->isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 220
    return-object v0
.end method

.method private synthetic blacklist lambda$isRoleVisible$5(Ljava/lang/String;Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/app/role/IRoleController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 235
    .local v0, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerManager;->createBooleanRemoteCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)Landroid/os/RemoteCallback;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Landroid/app/role/IRoleController;->isRoleVisible(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 236
    return-object v0
.end method

.method private synthetic blacklist lambda$onAddRoleHolder$1(Ljava/lang/String;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "service"    # Landroid/app/role/IRoleController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 170
    .local v0, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    nop

    .line 171
    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerManager;->createBooleanRemoteCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)Landroid/os/RemoteCallback;

    move-result-object v1

    .line 170
    invoke-interface {p4, p1, p2, p3, v1}, Landroid/app/role/IRoleController;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 172
    return-object v0
.end method

.method private synthetic blacklist lambda$onClearRoleHolders$3(Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "service"    # Landroid/app/role/IRoleController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 202
    .local v0, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerManager;->createBooleanRemoteCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)Landroid/os/RemoteCallback;

    move-result-object v1

    invoke-interface {p3, p1, p2, v1}, Landroid/app/role/IRoleController;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 203
    return-object v0
.end method

.method private synthetic blacklist lambda$onRemoveRoleHolder$2(Ljava/lang/String;Ljava/lang/String;ILandroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "service"    # Landroid/app/role/IRoleController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 186
    .local v0, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    nop

    .line 187
    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerManager;->createBooleanRemoteCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)Landroid/os/RemoteCallback;

    move-result-object v1

    .line 186
    invoke-interface {p4, p1, p2, p3, v1}, Landroid/app/role/IRoleController;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 188
    return-object v0
.end method

.method static synthetic blacklist lambda$propagateCallback$11(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .registers 9
    .param p0, "err"    # Ljava/lang/Throwable;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/util/function/Consumer;
    .param p3, "res"    # Ljava/lang/Boolean;

    .line 293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 295
    .local v0, "token":J
    if-eqz p0, :cond_2d

    .line 296
    :try_start_6
    sget-object v2, Landroid/app/role/RoleControllerManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_30

    .line 299
    :cond_2d
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_35

    .line 302
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    nop

    .line 304
    return-void

    .line 302
    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    throw v2
.end method

.method static synthetic blacklist lambda$propagateCallback$12(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/util/function/Consumer;
    .param p3, "res"    # Ljava/lang/Boolean;
    .param p4, "err"    # Ljava/lang/Throwable;

    .line 292
    new-instance v0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$propagateCallback$13(Ljava/lang/String;Landroid/os/RemoteCallback;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 10
    .param p0, "opName"    # Ljava/lang/String;
    .param p1, "destination"    # Landroid/os/RemoteCallback;
    .param p2, "res"    # Ljava/lang/Boolean;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 313
    .local v0, "token":J
    const/4 v2, 0x0

    if-eqz p3, :cond_29

    .line 314
    :try_start_7
    sget-object v3, Landroid/app/role/RoleControllerManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_34

    .line 317
    :cond_29
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_31

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_31
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_39

    .line 320
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    throw v2
.end method

.method private blacklist propagateCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p2, "opName"    # Ljava/lang/String;
    .param p3, "destination"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 309
    .local p1, "operation":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    const-wide/16 v0, 0x3a98

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 310
    invoke-virtual {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    .line 323
    return-void
.end method

.method private blacklist propagateCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p2, "opName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p1, "operation":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .local p4, "destination":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-wide/16 v0, 0x3a98

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3, p2, p4}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    .line 305
    return-void
.end method


# virtual methods
.method public blacklist getLegacyFallbackDisabledRoles(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 248
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;->postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 259
    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    .line 274
    return-void
.end method

.method public blacklist grantDefaultRoles(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda6;-><init>(Landroid/app/role/RoleControllerManager;)V

    invoke-interface {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;->postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 158
    .local v0, "operation":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    const-string v1, "grantDefaultRoles"

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/app/role/RoleControllerManager;->propagateCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 159
    return-void
.end method

.method public blacklist isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda13;-><init>(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;->postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 222
    .local v0, "operation":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    const-string v1, "isApplicationVisibleForRole"

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/app/role/RoleControllerManager;->propagateCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 223
    return-void
.end method

.method public blacklist isRoleVisible(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda9;-><init>(Landroid/app/role/RoleControllerManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;->postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 238
    .local v0, "operation":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    const-string v1, "isRoleVisible"

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/app/role/RoleControllerManager;->propagateCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 239
    return-void
.end method

.method public blacklist onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 168
    iget-object v0, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;->postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 174
    .local v0, "operation":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    const-string v1, "onAddRoleHolder"

    invoke-direct {p0, v0, v1, p4}, Landroid/app/role/RoleControllerManager;->propagateCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 175
    return-void
.end method

.method public blacklist onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 200
    iget-object v0, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda12;-><init>(Landroid/app/role/RoleControllerManager;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;->postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 205
    .local v0, "operation":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    const-string v1, "onClearRoleHolders"

    invoke-direct {p0, v0, v1, p3}, Landroid/app/role/RoleControllerManager;->propagateCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 206
    return-void
.end method

.method public blacklist onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 184
    iget-object v0, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda10;-><init>(Landroid/app/role/RoleControllerManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;->postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 190
    .local v0, "operation":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    const-string v1, "onRemoveRoleHolder"

    invoke-direct {p0, v0, v1, p4}, Landroid/app/role/RoleControllerManager;->propagateCallback(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 191
    return-void
.end method
