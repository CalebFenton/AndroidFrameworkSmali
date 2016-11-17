.class Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;
.super Landroid/content/IRestrictionsManager$Stub;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/restrictions/RestrictionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictionsManagerImpl"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/IDevicePolicyManager;

.field private final mUm:Landroid/os/IUserManager;

.field final synthetic this$0:Lcom/android/server/restrictions/RestrictionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/restrictions/RestrictionsManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/restrictions/RestrictionsManagerService;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->this$0:Lcom/android/server/restrictions/RestrictionsManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/IRestrictionsManager$Stub;-><init>()V

    #@5
    .line 65
    iput-object p2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    #@7
    .line 66
    const-string/jumbo v0, "user"

    #@a
    invoke-static {p1, v0}, Lcom/android/server/restrictions/RestrictionsManagerService;->-wrap0(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/IUserManager;

    #@10
    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    #@12
    .line 67
    const-string/jumbo v0, "device_policy"

    #@15
    invoke-static {p1, v0}, Lcom/android/server/restrictions/RestrictionsManagerService;->-wrap0(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    #@1b
    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@1d
    .line 64
    return-void
.end method

.method private enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 191
    .local v0, "pkgs":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 192
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 193
    new-instance v2, Ljava/lang/SecurityException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 196
    .end local v0    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@28
    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public createLocalApprovalIntent()Landroid/content/Intent;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 131
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v6

    #@5
    .line 132
    .local v6, "userHandle":I
    iget-object v7, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@7
    if-eqz v7, :cond_2

    #@9
    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v0

    #@d
    .line 136
    .local v0, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@f
    invoke-interface {v7, v6}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    #@12
    move-result-object v4

    #@13
    .line 138
    .local v4, "restrictionsProvider":Landroid/content/ComponentName;
    if-nez v4, :cond_0

    #@15
    .line 139
    new-instance v7, Ljava/lang/IllegalStateException;

    #@17
    .line 140
    const-string/jumbo v8, "Cannot request permission without a restrictions provider registered"

    #@1a
    .line 139
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 152
    .end local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    :catchall_0
    move-exception v7

    #@1f
    .line 153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 152
    throw v7

    #@23
    .line 142
    .restart local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 143
    .local v3, "providerPackageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    #@29
    const-string/jumbo v7, "android.content.action.REQUEST_LOCAL_APPROVAL"

    #@2c
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2f
    .line 144
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@32
    .line 145
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@35
    move-result-object v7

    #@36
    .line 146
    const/4 v8, 0x0

    #@37
    const/4 v9, 0x0

    #@38
    .line 145
    invoke-interface {v7, v2, v8, v9, v6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@3b
    move-result-object v5

    #@3c
    .line 147
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_1

    #@3e
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@40
    if-eqz v7, :cond_1

    #@42
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@44
    iget-boolean v7, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    #@46
    if-eqz v7, :cond_1

    #@48
    .line 148
    new-instance v7, Landroid/content/ComponentName;

    #@4a
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4c
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4e
    .line 149
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@50
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@52
    .line 148
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    .line 153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 150
    return-object v2

    #@5c
    .line 153
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5f
    .line 156
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "providerPackageName":Ljava/lang/String;
    .end local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v10
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    #@2
    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasRestrictionsProvider()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 77
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v2

    #@5
    .line 78
    .local v2, "userHandle":I
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@7
    if-eqz v4, :cond_1

    #@9
    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v0

    #@d
    .line 81
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@f
    invoke-interface {v4, v2}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v4

    #@13
    if-eqz v4, :cond_0

    #@15
    const/4 v3, 0x1

    #@16
    .line 83
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 81
    return v3

    #@1a
    .line 82
    :catchall_0
    move-exception v3

    #@1b
    .line 83
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 82
    throw v3

    #@1f
    .line 86
    .end local v0    # "ident":J
    :cond_1
    return v3
.end method

.method public notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 164
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v5

    #@8
    .line 165
    .local v5, "userHandle":I
    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 168
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@12
    invoke-interface {v6, v5}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    #@15
    move-result-object v1

    #@16
    .line 169
    .local v1, "permProvider":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    #@18
    .line 170
    new-instance v6, Ljava/lang/SecurityException;

    #@1a
    const-string/jumbo v7, "No restrictions provider registered for user"

    #@1d
    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@20
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 181
    .end local v1    # "permProvider":Landroid/content/ComponentName;
    :catchall_0
    move-exception v6

    #@22
    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 181
    throw v6

    #@26
    .line 172
    .restart local v1    # "permProvider":Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 173
    const-string/jumbo v7, "Restrictions provider does not match caller "

    #@2d
    .line 172
    invoke-direct {p0, v0, v6, v7}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    #@30
    .line 176
    new-instance v4, Landroid/content/Intent;

    #@32
    .line 177
    const-string/jumbo v6, "android.content.action.PERMISSION_RESPONSE_RECEIVED"

    #@35
    .line 176
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@38
    .line 178
    .local v4, "responseIntent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@3b
    .line 179
    const-string/jumbo v6, "android.content.extra.RESPONSE_BUNDLE"

    #@3e
    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@41
    .line 180
    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    #@43
    new-instance v7, Landroid/os/UserHandle;

    #@45
    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    #@48
    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 161
    .end local v1    # "permProvider":Landroid/content/ComponentName;
    .end local v2    # "ident":J
    .end local v4    # "responseIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "requestData"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 98
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v5

    #@8
    .line 99
    .local v5, "userHandle":I
    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 103
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    #@12
    invoke-interface {v6, v5}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    #@15
    move-result-object v4

    #@16
    .line 105
    .local v4, "restrictionsProvider":Landroid/content/ComponentName;
    if-nez v4, :cond_0

    #@18
    .line 106
    new-instance v6, Ljava/lang/IllegalStateException;

    #@1a
    .line 107
    const-string/jumbo v7, "Cannot request permission without a restrictions provider registered"

    #@1d
    .line 106
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 120
    .end local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    :catchall_0
    move-exception v6

    #@22
    .line 121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 120
    throw v6

    #@26
    .line 110
    .restart local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    const-string/jumbo v6, "Package name does not match caller "

    #@29
    invoke-direct {p0, v0, p1, v6}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 113
    new-instance v1, Landroid/content/Intent;

    #@2e
    const-string/jumbo v6, "android.content.action.REQUEST_PERMISSION"

    #@31
    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@34
    .line 114
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@37
    .line 115
    const-string/jumbo v6, "android.content.extra.PACKAGE_NAME"

    #@3a
    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3d
    .line 116
    const-string/jumbo v6, "android.content.extra.REQUEST_TYPE"

    #@40
    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@43
    .line 117
    const-string/jumbo v6, "android.content.extra.REQUEST_ID"

    #@46
    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@49
    .line 118
    const-string/jumbo v6, "android.content.extra.REQUEST_BUNDLE"

    #@4c
    invoke-virtual {v1, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@4f
    .line 119
    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    #@51
    new-instance v7, Landroid/os/UserHandle;

    #@53
    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    #@56
    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    .line 121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5c
    .line 93
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ident":J
    .end local v4    # "restrictionsProvider":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method
