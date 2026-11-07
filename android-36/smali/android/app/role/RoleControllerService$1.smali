.class Landroid/app/role/RoleControllerService$1;
.super Landroid/app/role/IRoleController$Stub;
.source "RoleControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/role/RoleControllerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/role/RoleControllerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$S0LdWTdgvHeIuY2ykgbRNTCQCgc(Landroid/app/role/RoleControllerService$1;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/role/RoleControllerService$1;->lambda$onClearRoleHolders$3(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iIu2X-cQJtcMkX8b-wXV8vMoW8U(Landroid/app/role/RoleControllerService$1;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/role/RoleControllerService$1;->lambda$grantDefaultRoles$0(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lp0ij2YFQK00VwRWvp1rZDHx5Os(Landroid/app/role/RoleControllerService$1;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService$1;->lambda$onRemoveRoleHolder$2(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vV8jaVcDDES8lw3kFrLtqRhTHmg(Landroid/app/role/RoleControllerService$1;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService$1;->lambda$onAddRoleHolder$1(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/role/RoleControllerService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/role/RoleControllerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-direct {p0}, Landroid/app/role/IRoleController$Stub;-><init>()V

    return-void
.end method

.method private blacklist enforceCallerSystemUid(Ljava/lang/String;)V
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 133
    return-void

    .line 130
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only the system process can call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic blacklist lambda$grantDefaultRoles$0(Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 96
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v0, p1}, Landroid/app/role/RoleControllerService;->-$$Nest$mgrantDefaultRoles(Landroid/app/role/RoleControllerService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onAddRoleHolder$1(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 105
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService;->-$$Nest$monAddRoleHolder(Landroid/app/role/RoleControllerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onClearRoleHolders$3(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 124
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v0, p1, p2, p3}, Landroid/app/role/RoleControllerService;->-$$Nest$monClearRoleHolders(Landroid/app/role/RoleControllerService;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRemoveRoleHolder$2(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 115
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService;->-$$Nest$monRemoveRoleHolder(Landroid/app/role/RoleControllerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist getLegacyFallbackDisabledRoles(Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 191
    const-string v0, "getLegacyFallbackDisabledRoles"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    .line 193
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "result":Landroid/os/Bundle;
    :try_start_f
    iget-object v1, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-virtual {v1}, Landroid/app/role/RoleControllerService;->onGetLegacyFallbackDisabledRoles()Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "legacyFallbackDisabledRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_20

    .line 202
    .end local v1    # "legacyFallbackDisabledRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_26

    .line 200
    :catch_20
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method public blacklist grantDefaultRoles(Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 93
    const-string v0, "grantDefaultRoles"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    .line 94
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v0}, Landroid/app/role/RoleControllerService;->-$$Nest$fgetmWorkerHandler(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/role/RoleControllerService$1;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public blacklist isApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 138
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    const-string v1, "android.permission.MANAGE_ROLE_HOLDERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleControllerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "result":Landroid/os/Bundle;
    :try_start_12
    const-string v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 144
    const-string v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 146
    iget-object v1, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-virtual {v1, p1, p2}, Landroid/app/role/RoleControllerService;->onIsApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 147
    .local v1, "qualified":Z
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_28

    .line 150
    .end local v1    # "qualified":Z
    goto :goto_2e

    .line 148
    :catch_28
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public blacklist isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 157
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    const-string v1, "android.permission.MANAGE_ROLE_HOLDERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleControllerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "result":Landroid/os/Bundle;
    :try_start_12
    const-string v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 163
    const-string v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 165
    iget-object v1, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-virtual {v1, p1, p2}, Landroid/app/role/RoleControllerService;->onIsApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 166
    .local v1, "visible":Z
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_28

    .line 169
    .end local v1    # "visible":Z
    goto :goto_2e

    .line 167
    :catch_28
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method

.method public blacklist isRoleVisible(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 175
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    const-string v1, "android.permission.MANAGE_ROLE_HOLDERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleControllerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "result":Landroid/os/Bundle;
    :try_start_12
    const-string v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 181
    iget-object v1, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-virtual {v1, p1}, Landroid/app/role/RoleControllerService;->onIsRoleVisible(Ljava/lang/String;)Z

    move-result v1

    .line 182
    .local v1, "visible":Z
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    .line 185
    .end local v1    # "visible":Z
    goto :goto_29

    .line 183
    :catch_23
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public blacklist onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 12
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 102
    const-string v0, "onAddRoleHolder"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    .line 103
    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v0}, Landroid/app/role/RoleControllerService;->-$$Nest$fgetmWorkerHandler(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "roleName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "callback":Landroid/os/RemoteCallback;
    .local v3, "roleName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "flags":I
    .local v6, "callback":Landroid/os/RemoteCallback;
    invoke-direct/range {v1 .. v6}, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda3;-><init>(Landroid/app/role/RoleControllerService$1;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public blacklist onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 121
    const-string v0, "onClearRoleHolders"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    .line 122
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v0}, Landroid/app/role/RoleControllerService;->-$$Nest$fgetmWorkerHandler(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/role/RoleControllerService$1;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public blacklist onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 12
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 112
    const-string v0, "onRemoveRoleHolder"

    invoke-direct {p0, v0}, Landroid/app/role/RoleControllerService$1;->enforceCallerSystemUid(Ljava/lang/String;)V

    .line 113
    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Landroid/app/role/RoleControllerService$1;->this$0:Landroid/app/role/RoleControllerService;

    invoke-static {v0}, Landroid/app/role/RoleControllerService;->-$$Nest$fgetmWorkerHandler(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "roleName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "callback":Landroid/os/RemoteCallback;
    .local v3, "roleName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "flags":I
    .local v6, "callback":Landroid/os/RemoteCallback;
    invoke-direct/range {v1 .. v6}, Landroid/app/role/RoleControllerService$1$$ExternalSyntheticLambda2;-><init>(Landroid/app/role/RoleControllerService$1;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method
