.class public abstract Landroid/permission/PermissionControllerService;
.super Landroid/app/Service;
.source "PermissionControllerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist CAMERA_MIC_INDICATORS_NOT_PRESENT:J = 0x9b0491fL

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.permission.PermissionControllerService"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/permission/PermissionControllerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    const-class v0, Landroid/permission/PermissionControllerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionControllerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/permission/PermissionControllerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/permission/PermissionControllerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionControllerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getPrivilegesDescriptionStringForProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "deviceProfileName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onApplyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionControllerService;->onRestoreDelayedRuntimePermissionsBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 175
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 455
    new-instance v0, Landroid/permission/PermissionControllerService$1;

    invoke-direct {v0, p0}, Landroid/permission/PermissionControllerService$1;-><init>(Landroid/permission/PermissionControllerService;)V

    return-object v0
.end method

.method public abstract whitelist onCountPermissionApps(Ljava/util/List;ILjava/util/function/IntConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/function/IntConsumer;",
            ")V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetAppPermissions(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionPresentationInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public whitelist onGetGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onGetHibernationEligibility(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 450
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onGetPermissionUsages(ZJLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public whitelist onGetPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 336
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onGetRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/OutputStream;Ljava/lang/Runnable;)V
.end method

.method public whitelist onGetUnusedAppCount(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "callback"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 434
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onGrantOrUpgradeDefaultRuntimePermissions(Ljava/lang/Runnable;)V
.end method

.method public whitelist onOneTimePermissionSessionTimeout(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onOneTimePermissionSessionTimeout(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 324
    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerService;->onOneTimePermissionSessionTimeout(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public whitelist onRestoreDelayedRuntimePermissionsBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public whitelist onRestoreRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/InputStream;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "backup"    # Ljava/io/InputStream;
    .param p3, "callback"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    return-void
.end method

.method public abstract whitelist onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract whitelist onRevokeRuntimePermissions(Ljava/util/Map;ZILjava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;ZI",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public whitelist onRevokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;ILjava/lang/Runnable;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 399
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p4}, Landroid/permission/PermissionControllerService;->onRevokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method public whitelist onRevokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onSetRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/permission/AdminPermissionControlParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/permission/AdminPermissionControlParams;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onSetRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onStageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/InputStream;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "backup"    # Ljava/io/InputStream;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionControllerService;->onRestoreRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/InputStream;Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public whitelist onUpdateUserSensitivePermissionFlags(ILjava/lang/Runnable;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 261
    invoke-virtual {p0}, Landroid/permission/PermissionControllerService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/permission/PermissionControllerService;->onUpdateUserSensitivePermissionFlags(ILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public whitelist onUpdateUserSensitivePermissionFlags(ILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 252
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
