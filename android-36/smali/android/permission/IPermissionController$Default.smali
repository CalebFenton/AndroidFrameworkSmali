.class public Landroid/permission/IPermissionController$Default;
.super Ljava/lang/Object;
.source "IPermissionController.java"

# interfaces
.implements Landroid/permission/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist countPermissionApps(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .param p2, "flags"    # I
    .param p3, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/internal/infra/AndroidFuture;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    .local p1, "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getAppPermissions(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist getGroupOfPlatformPermission(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    .local p2, "callback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getHibernationEligibility(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist getPermissionUsages(ZJLcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "countSystem"    # Z
    .param p2, "numMillis"    # J
    .param p4, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist getPlatformPermissionsForGroup(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    .local p2, "callback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public blacklist getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "deviceProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    .local p2, "callback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist getUnusedAppCount(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist grantOrUpgradeDefaultRuntimePermissions(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist notifyOneTimePermissionSessionTimeout(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "request"    # Landroid/os/Bundle;
    .param p2, "doDryRun"    # Z
    .param p3, "reason"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/internal/infra/AndroidFuture;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setRuntimePermissionGrantStateByDeviceAdminFromParams(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/permission/AdminPermissionControlParams;
    .param p3, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist stageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist updateUserSensitiveForApp(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method
