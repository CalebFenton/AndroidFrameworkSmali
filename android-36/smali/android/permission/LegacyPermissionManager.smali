.class public final Landroid/permission/LegacyPermissionManager;
.super Ljava/lang/Object;
.source "LegacyPermissionManager.java"


# instance fields
.field private final blacklist mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 53
    const-string/jumbo v0, "legacy_permission"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/ILegacyPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/ILegacyPermissionManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/LegacyPermissionManager;-><init>(Landroid/permission/ILegacyPermissionManager;)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Landroid/permission/ILegacyPermissionManager;)V
    .registers 2
    .param p1, "legacyPermissionManager"    # Landroid/permission/ILegacyPermissionManager;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 67
    return-void
.end method

.method static synthetic blacklist lambda$grantDefaultPermissionsToEnabledCarrierApps$5(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 243
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$grantDefaultPermissionsToEnabledImsServices$2(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 180
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$3(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$grantDefaultPermissionsToLuiApp$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 138
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$4(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 222
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$revokeDefaultPermissionsFromLuiApps$1(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "message":Ljava/lang/String;
    .local v3, "callingFeatureId":Ljava/lang/String;
    .local v4, "pid":I
    .local v5, "uid":I
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/permission/ILegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return p1

    .line 88
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "callingFeatureId":Ljava/lang/String;
    .end local v4    # "pid":I
    .end local v5    # "uid":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "message":Ljava/lang/String;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    .restart local p4    # "pid":I
    .restart local p5    # "uid":I
    :catch_f
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object p1, v0

    .line 89
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "callingFeatureId":Ljava/lang/String;
    .restart local v4    # "pid":I
    .restart local v5    # "uid":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "message":Ljava/lang/String;
    .local v3, "callingFeatureId":Ljava/lang/String;
    .local v4, "pid":I
    .local v5, "uid":I
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/permission/ILegacyPermissionManager;->checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return p1

    .line 118
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "callingFeatureId":Ljava/lang/String;
    .end local v4    # "pid":I
    .end local v5    # "uid":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "message":Ljava/lang/String;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    .restart local p4    # "pid":I
    .restart local p5    # "uid":I
    :catch_f
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object p1, v0

    .line 119
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "callingFeatureId":Ljava/lang/String;
    .restart local v4    # "pid":I
    .restart local v5    # "uid":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 262
    nop

    .line 263
    return-void

    .line 260
    :catch_7
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 242
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 241
    invoke-interface {v0, p1, v1}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 243
    new-instance v0, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 246
    goto :goto_16

    .line 244
    :catch_12
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 179
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 178
    invoke-interface {v0, p1, v1}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 180
    new-instance v0, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 183
    goto :goto_16

    .line 181
    :catch_12
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 184
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 200
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 199
    invoke-interface {v0, p1, v1}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 201
    new-instance v0, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 204
    goto :goto_16

    .line 202
    :catch_12
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist grantDefaultPermissionsToLuiApp(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 137
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 136
    invoke-interface {v0, p1, v1}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 138
    new-instance v0, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 141
    goto :goto_16

    .line 139
    :catch_12
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 221
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 220
    invoke-interface {v0, p1, v1}, Landroid/permission/ILegacyPermissionManager;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 222
    new-instance v0, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 225
    goto :goto_16

    .line 223
    :catch_12
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 158
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 157
    invoke-interface {v0, p1, v1}, Landroid/permission/ILegacyPermissionManager;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 159
    new-instance v0, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 162
    goto :goto_16

    .line 160
    :catch_12
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
