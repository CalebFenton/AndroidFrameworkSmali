.class public abstract Landroid/app/role/RoleControllerService;
.super Landroid/app/Service;
.source "RoleControllerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.app.role.RoleControllerService"


# instance fields
.field private blacklist mWorkerHandler:Landroid/os/Handler;

.field private blacklist mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmWorkerHandler(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/app/role/RoleControllerService;->mWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgrantDefaultRoles(Landroid/app/role/RoleControllerService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/role/RoleControllerService;->grantDefaultRoles(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAddRoleHolder(Landroid/app/role/RoleControllerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monClearRoleHolders(Landroid/app/role/RoleControllerService;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/role/RoleControllerService;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRemoveRoleHolder(Landroid/app/role/RoleControllerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-class v0, Landroid/app/role/RoleControllerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/role/RoleControllerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private blacklist grantDefaultRoles(Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    invoke-virtual {p0}, Landroid/app/role/RoleControllerService;->onGrantDefaultRoles()Z

    move-result v1

    .line 212
    .local v1, "successful":Z
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 215
    .end local v1    # "successful":Z
    goto :goto_15

    .line 213
    :catch_f
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method private blacklist onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 224
    const-string v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/role/RoleControllerService;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 227
    .local v1, "successful":Z
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    .line 230
    .end local v1    # "successful":Z
    goto :goto_1f

    .line 228
    :catch_19
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    invoke-virtual {p4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method private blacklist onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 254
    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleControllerService;->onClearRoleHolders(Ljava/lang/String;I)Z

    move-result v1

    .line 255
    .local v1, "successful":Z
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14

    .line 258
    .end local v1    # "successful":Z
    goto :goto_1a

    .line 256
    :catch_14
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 260
    return-void
.end method

.method private blacklist onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 239
    const-string v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 241
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/role/RoleControllerService;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 242
    .local v1, "successful":Z
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    .line 245
    .end local v1    # "successful":Z
    goto :goto_1f

    .line 243
    :catch_19
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/role/RoleControllerManager;->KEY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    invoke-virtual {p4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 247
    return-void
.end method


# virtual methods
.method public abstract whitelist onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 89
    new-instance v0, Landroid/app/role/RoleControllerService$1;

    invoke-direct {v0, p0}, Landroid/app/role/RoleControllerService$1;-><init>(Landroid/app/role/RoleControllerService;)V

    return-object v0
.end method

.method public abstract whitelist onClearRoleHolders(Ljava/lang/String;I)Z
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Landroid/app/role/RoleControllerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/role/RoleControllerService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 75
    iget-object v0, p0, Landroid/app/role/RoleControllerService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/role/RoleControllerService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/role/RoleControllerService;->mWorkerHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 83
    iget-object v0, p0, Landroid/app/role/RoleControllerService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 84
    return-void
.end method

.method public whitelist onGetLegacyFallbackDisabledRoles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 371
    sget-object v0, Landroid/app/role/RoleControllerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGetLegacyFallbackDisabledRoles is unsupported by this version of PermissionController"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist onGrantDefaultRoles()Z
.end method

.method public abstract whitelist onIsApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onIsApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 351
    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleControllerService;->onIsApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist onIsRoleVisible(Ljava/lang/String;)Z
.end method

.method public abstract whitelist onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
