.class public final Landroid/app/role/RoleManager;
.super Ljava/lang/Object;
.source "RoleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;,
        Landroid/app/role/RoleManager$ManageHoldersFlags;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_REQUEST_ROLE:Ljava/lang/String; = "android.app.role.action.REQUEST_ROLE"

.field public static final whitelist MANAGE_HOLDERS_FLAG_DONT_KILL_APP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PERMISSION_MANAGE_ROLES_FROM_CONTROLLER:Ljava/lang/String; = "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

.field public static final whitelist ROLE_ASSISTANT:Ljava/lang/String; = "android.app.role.ASSISTANT"

.field public static final whitelist ROLE_BROWSER:Ljava/lang/String; = "android.app.role.BROWSER"

.field public static final whitelist ROLE_CALL_REDIRECTION:Ljava/lang/String; = "android.app.role.CALL_REDIRECTION"

.field public static final whitelist ROLE_CALL_SCREENING:Ljava/lang/String; = "android.app.role.CALL_SCREENING"

.field public static final whitelist ROLE_DEVICE_POLICY_MANAGEMENT:Ljava/lang/String; = "android.app.role.DEVICE_POLICY_MANAGEMENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLE_DIALER:Ljava/lang/String; = "android.app.role.DIALER"

.field public static final whitelist ROLE_EMERGENCY:Ljava/lang/String; = "android.app.role.EMERGENCY"

.field public static final whitelist ROLE_FINANCED_DEVICE_KIOSK:Ljava/lang/String; = "android.app.role.FINANCED_DEVICE_KIOSK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLE_HOME:Ljava/lang/String; = "android.app.role.HOME"

.field public static final blacklist ROLE_MANAGER_USER_HANDLE_AWARE:J = 0x121abd1cL

.field public static final whitelist ROLE_NOTES:Ljava/lang/String; = "android.app.role.NOTES"

.field public static final whitelist ROLE_RESERVED_FOR_TESTING_PROFILE_GROUP_EXCLUSIVITY:Ljava/lang/String; = "android.app.role.RESERVED_FOR_TESTING_PROFILE_GROUP_EXCLUSIVITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLE_SMS:Ljava/lang/String; = "android.app.role.SMS"

.field public static final whitelist ROLE_SYSTEM_ACTIVITY_RECOGNIZER:Ljava/lang/String; = "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLE_SYSTEM_CALL_STREAMING:Ljava/lang/String; = "android.app.role.SYSTEM_CALL_STREAMING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ROLE_SYSTEM_DEPENDENCY_INSTALLER:Ljava/lang/String; = "android.app.role.SYSTEM_DEPENDENCY_INSTALLER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLE_SYSTEM_SUPERVISION:Ljava/lang/String; = "android.app.role.SYSTEM_SUPERVISION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLE_SYSTEM_WELLBEING:Ljava/lang/String; = "android.app.role.SYSTEM_WELLBEING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLE_WALLET:Ljava/lang/String; = "android.app.role.WALLET"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/app/role/OnRoleHoldersChangedListener;",
            "Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mListenersLock:Ljava/lang/Object;

.field private blacklist mRoleControllerManager:Landroid/app/role/RoleControllerManager;

.field private final blacklist mRoleControllerManagerLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/app/role/IRoleManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/role/IRoleManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/role/IRoleManager;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/role/RoleManager;->mListeners:Landroid/util/SparseArray;

    .line 290
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/role/RoleManager;->mListenersLock:Ljava/lang/Object;

    .line 296
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/role/RoleManager;->mRoleControllerManagerLock:Ljava/lang/Object;

    .line 307
    iput-object p1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 308
    iput-object p2, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    .line 309
    return-void
.end method

.method private static blacklist createRemoteCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/os/RemoteCallback;"
        }
    .end annotation

    .line 685
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/role/RoleManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/role/RoleManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private blacklist getContextUserIfAppropriate()Landroid/os/UserHandle;
    .registers 3

    .line 1012
    const-wide/32 v0, 0x121abd1c

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_14

    .line 1013
    :cond_10
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1012
    :goto_14
    return-object v0
.end method

.method private blacklist getRoleControllerManager()Landroid/app/role/RoleControllerManager;
    .registers 4

    .line 1302
    iget-object v0, p0, Landroid/app/role/RoleManager;->mRoleControllerManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1303
    :try_start_3
    iget-object v1, p0, Landroid/app/role/RoleManager;->mRoleControllerManager:Landroid/app/role/RoleControllerManager;

    if-nez v1, :cond_10

    .line 1304
    new-instance v1, Landroid/app/role/RoleControllerManager;

    iget-object v2, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/role/RoleControllerManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/role/RoleManager;->mRoleControllerManager:Landroid/app/role/RoleControllerManager;

    .line 1306
    :cond_10
    iget-object v1, p0, Landroid/app/role/RoleManager;->mRoleControllerManager:Landroid/app/role/RoleControllerManager;

    monitor-exit v0

    return-object v1

    .line 1307
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method static synthetic blacklist lambda$createRemoteCallback$0(Landroid/os/Bundle;Ljava/util/function/Consumer;)V
    .registers 6
    .param p0, "result"    # Landroid/os/Bundle;
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 686
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 687
    .local v0, "successful":Z
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 689
    .local v1, "token":J
    :try_start_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 691
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    nop

    .line 693
    return-void

    .line 691
    :catchall_15
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw v3
.end method

.method static synthetic blacklist lambda$createRemoteCallback$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 685
    new-instance v0, Landroid/app/role/RoleManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Landroid/app/role/RoleManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$isApplicationVisibleForRole$3(Ljava/util/function/Consumer;Z)V
    .registers 5
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "visible"    # Z

    .line 1169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1171
    .local v0, "token":J
    :try_start_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 1173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1174
    nop

    .line 1175
    return-void

    .line 1173
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1174
    throw v2
.end method

.method static synthetic blacklist lambda$isRoleVisible$2(Ljava/util/function/Consumer;Z)V
    .registers 5
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "visible"    # Z

    .line 1128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1130
    .local v0, "token":J
    :try_start_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 1132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1133
    nop

    .line 1134
    return-void

    .line 1132
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1133
    throw v2
.end method


# virtual methods
.method public whitelist addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V
    .registers 10
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/role/OnRoleHoldersChangedListener;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 716
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 717
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 718
    const-string v0, "user cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 719
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 720
    .local v0, "userId":I
    iget-object v1, p0, Landroid/app/role/RoleManager;->mListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_16
    iget-object v2, p0, Landroid/app/role/RoleManager;->mListeners:Landroid/util/SparseArray;

    .line 722
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 723
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/role/OnRoleHoldersChangedListener;Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;>;"
    if-nez v2, :cond_2c

    .line 724
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 725
    iget-object v3, p0, Landroid/app/role/RoleManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_34

    .line 727
    :cond_2c
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 728
    monitor-exit v1

    return-void

    .line 731
    :cond_34
    :goto_34
    new-instance v3, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;)V
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_4b

    .line 734
    .local v3, "listenerDelegate":Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
    :try_start_39
    iget-object v4, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v4, v3, v0}, Landroid/app/role/IRoleManager;->addOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_45
    .catchall {:try_start_39 .. :try_end_3e} :catchall_4b

    .line 737
    nop

    .line 738
    :try_start_3f
    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    nop

    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/role/OnRoleHoldersChangedListener;Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;>;"
    .end local v3    # "listenerDelegate":Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
    monitor-exit v1

    .line 740
    return-void

    .line 735
    .restart local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/role/OnRoleHoldersChangedListener;Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;>;"
    .restart local v3    # "listenerDelegate":Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
    :catch_45
    move-exception v4

    .line 736
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local p0    # "this":Landroid/app/role/RoleManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/app/role/OnRoleHoldersChangedListener;
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v5

    .line 739
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/role/OnRoleHoldersChangedListener;Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;>;"
    .end local v3    # "listenerDelegate":Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local p0    # "this":Landroid/app/role/RoleManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/app/role/OnRoleHoldersChangedListener;
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public whitelist addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 449
    .local p6, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 450
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 451
    const-string v0, "user cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    const-string v0, "executor cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 453
    const-string v0, "callback cannot be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    :try_start_19
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 456
    invoke-static {p5, p6}, Landroid/app/role/RoleManager;->createRemoteCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v6
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_2e

    .line 455
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "roleName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .local v2, "roleName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "flags":I
    :try_start_26
    invoke-interface/range {v1 .. v6}, Landroid/app/role/IRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2b

    .line 459
    nop

    .line 460
    return-void

    .line 457
    :catch_2b
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .end local v2    # "roleName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "flags":I
    .restart local p1    # "roleName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catch_2e
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object p1, v0

    .line 458
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v2    # "roleName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist addRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 935
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 936
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 937
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    .line 939
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_e
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    .line 940
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 939
    invoke-interface {v1, p1, p2, v2}, Landroid/app/role/IRoleManager;->addRoleHolderFromControllerAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    return v1

    .line 941
    :catch_19
    move-exception v1

    .line 942
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist clearRoleHoldersAsUser(Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 525
    const-string v0, "user cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 526
    const-string v0, "executor cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 527
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 529
    :try_start_14
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 530
    invoke-static {p4, p5}, Landroid/app/role/RoleManager;->createRemoteCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v2

    .line 529
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/role/IRoleManager;->clearRoleHoldersAsUser(Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_23

    .line 533
    nop

    .line 534
    return-void

    .line 531
    :catch_23
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;

    .line 326
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.role.action.REQUEST_ROLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "android.intent.extra.ROLE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    return-object v0
.end method

.method public whitelist getActiveUserForRole(Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 630
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 632
    :try_start_5
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 633
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 632
    invoke-interface {v0, p1, v1}, Landroid/app/role/IRoleManager;->getActiveUserForRoleAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 634
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1b
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_20

    :goto_1f
    return-object v1

    .line 635
    .end local v0    # "userId":I
    :catch_20
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBrowserRoleHolder(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1031
    :try_start_0
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v0, p1}, Landroid/app/role/IRoleManager;->getBrowserRoleHolder(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1032
    :catch_7
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultApplication(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 556
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 558
    :try_start_5
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 559
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 558
    invoke-interface {v0, p1, v1}, Landroid/app/role/IRoleManager;->getDefaultApplicationAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    return-object v0

    .line 560
    :catch_16
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultHoldersForTest(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1203
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1205
    :try_start_5
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 1206
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1205
    invoke-interface {v0, p1, v1}, Landroid/app/role/IRoleManager;->getDefaultHoldersForTestAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    return-object v0

    .line 1207
    :catch_16
    move-exception v0

    .line 1208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getEmergencyRoleHolder(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1098
    :try_start_0
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v0, p1}, Landroid/app/role/IRoleManager;->getEmergencyRoleHolder(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1099
    :catch_7
    move-exception v0

    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getHeldRolesFromController(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1002
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1003
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    .line 1005
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_9
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/role/IRoleManager;->getHeldRolesFromControllerAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return-object v1

    .line 1006
    :catch_14
    move-exception v1

    .line 1007
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getRoleHolders(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 415
    const-string v0, "user cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    :try_start_a
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/role/IRoleManager;->getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return-object v0

    .line 418
    :catch_15
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSmsRoleHolder(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1076
    :try_start_0
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v0, p1}, Landroid/app/role/IRoleManager;->getSmsRoleHolder(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1077
    :catch_7
    move-exception v0

    .line 1078
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

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

    .line 1160
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroid/permission/jarjar/android/permission/flags/Flags;->systemServerRoleControllerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1161
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1164
    .local v0, "userId":I
    :try_start_14
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/role/IRoleManager;->isApplicationVisibleForRoleAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_24

    .line 1167
    .local v1, "visible":Z
    nop

    .line 1168
    new-instance v2, Landroid/app/role/RoleManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p4, v1}, Landroid/app/role/RoleManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1176
    .end local v0    # "userId":I
    .end local v1    # "visible":Z
    goto :goto_31

    .line 1165
    .restart local v0    # "userId":I
    :catch_24
    move-exception v1

    .line 1166
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1177
    .end local v0    # "userId":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2a
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getRoleControllerManager()Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerManager;->isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1180
    :goto_31
    return-void
.end method

.method public whitelist isBypassingRoleQualification()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 804
    :try_start_0
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v0}, Landroid/app/role/IRoleManager;->isBypassingRoleQualification()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 805
    :catch_7
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRoleAvailable(Ljava/lang/String;)Z
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;

    .line 342
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 343
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    .line 345
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_9
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/role/IRoleManager;->isRoleAvailableAsUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return v1

    .line 346
    :catch_14
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isRoleFallbackEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 850
    :try_start_0
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 851
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 850
    invoke-interface {v0, p1, v1}, Landroid/app/role/IRoleManager;->isRoleFallbackEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 852
    :catch_11
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRoleHeld(Ljava/lang/String;)Z
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;

    .line 360
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 361
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    .line 363
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_9
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v2, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 363
    invoke-interface {v1, p1, v2, v3}, Landroid/app/role/IRoleManager;->isRoleHeldAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    return v1

    .line 365
    :catch_1a
    move-exception v1

    .line 366
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isRoleVisible(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

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

    .line 1119
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroid/permission/jarjar/android/permission/flags/Flags;->systemServerRoleControllerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1120
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1123
    .local v0, "userId":I
    :try_start_14
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v1, p1, v0}, Landroid/app/role/IRoleManager;->isRoleVisibleAsUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_24

    .line 1126
    .local v1, "visible":Z
    nop

    .line 1127
    new-instance v2, Landroid/app/role/RoleManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p3, v1}, Landroid/app/role/RoleManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1135
    .end local v0    # "userId":I
    .end local v1    # "visible":Z
    goto :goto_31

    .line 1124
    .restart local v0    # "userId":I
    :catch_24
    move-exception v1

    .line 1125
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1136
    .end local v0    # "userId":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2a
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getRoleControllerManager()Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/role/RoleControllerManager;->isRoleVisible(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1138
    :goto_31
    return-void
.end method

.method public whitelist isRoleVisibleForTest(Ljava/lang/String;)Z
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1263
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1265
    :try_start_5
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 1266
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1265
    invoke-interface {v0, p1, v1}, Landroid/app/role/IRoleManager;->isRoleVisibleForTestAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    return v0

    .line 1267
    :catch_16
    move-exception v0

    .line 1268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "listener"    # Landroid/app/role/OnRoleHoldersChangedListener;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 762
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 763
    const-string v0, "user cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 764
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 765
    .local v0, "userId":I
    iget-object v1, p0, Landroid/app/role/RoleManager;->mListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 766
    :try_start_11
    iget-object v2, p0, Landroid/app/role/RoleManager;->mListeners:Landroid/util/SparseArray;

    .line 767
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 768
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/role/OnRoleHoldersChangedListener;Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;>;"
    if-nez v2, :cond_1d

    .line 769
    monitor-exit v1

    return-void

    .line 771
    :cond_1d
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;

    .line 772
    .local v3, "listenerDelegate":Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
    if-nez v3, :cond_27

    .line 773
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_47

    return-void

    .line 776
    :cond_27
    :try_start_27
    iget-object v4, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    .line 777
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 776
    invoke-interface {v4, v3, v5}, Landroid/app/role/IRoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_41
    .catchall {:try_start_27 .. :try_end_30} :catchall_47

    .line 780
    nop

    .line 781
    :try_start_31
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 783
    iget-object v4, p0, Landroid/app/role/RoleManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 785
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/role/OnRoleHoldersChangedListener;Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;>;"
    .end local v3    # "listenerDelegate":Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
    :cond_3f
    monitor-exit v1

    .line 786
    return-void

    .line 778
    .restart local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/role/OnRoleHoldersChangedListener;Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;>;"
    .restart local v3    # "listenerDelegate":Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
    :catch_41
    move-exception v4

    .line 779
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local p0    # "this":Landroid/app/role/RoleManager;
    .end local p1    # "listener":Landroid/app/role/OnRoleHoldersChangedListener;
    .end local p2    # "user":Landroid/os/UserHandle;
    throw v5

    .line 785
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/role/OnRoleHoldersChangedListener;Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;>;"
    .end local v3    # "listenerDelegate":Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local p0    # "this":Landroid/app/role/RoleManager;
    .restart local p1    # "listener":Landroid/app/role/OnRoleHoldersChangedListener;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public whitelist removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 487
    .local p6, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 488
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 489
    const-string v0, "user cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 490
    const-string v0, "executor cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    const-string v0, "callback cannot be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 493
    :try_start_19
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 494
    invoke-static {p5, p6}, Landroid/app/role/RoleManager;->createRemoteCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v6
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_2e

    .line 493
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "roleName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .local v2, "roleName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "flags":I
    :try_start_26
    invoke-interface/range {v1 .. v6}, Landroid/app/role/IRoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2b

    .line 497
    nop

    .line 498
    return-void

    .line 495
    :catch_2b
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .end local v2    # "roleName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "flags":I
    .restart local p1    # "roleName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catch_2e
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object p1, v0

    .line 496
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v2    # "roleName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist removeRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 974
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 975
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 976
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    .line 978
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_e
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    .line 979
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 978
    invoke-interface {v1, p1, p2, v2}, Landroid/app/role/IRoleManager;->removeRoleHolderFromControllerAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    return v1

    .line 980
    :catch_19
    move-exception v1

    .line 981
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setActiveUserForRole(Ljava/lang/String;Landroid/os/UserHandle;I)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 672
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 673
    const-string v0, "user cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 675
    :try_start_a
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 676
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 675
    invoke-interface {v0, p1, v1, p3, v2}, Landroid/app/role/IRoleManager;->setActiveUserForRoleAsUser(Ljava/lang/String;III)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_1f

    .line 679
    nop

    .line 680
    return-void

    .line 677
    :catch_1f
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBrowserRoleHolder(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1055
    :try_start_0
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v0, p1, p2}, Landroid/app/role/IRoleManager;->setBrowserRoleHolder(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1056
    :catch_7
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setBypassingRoleQualification(Z)V
    .registers 4
    .param p1, "bypassRoleQualification"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 826
    :try_start_0
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-interface {v0, p1}, Landroid/app/role/IRoleManager;->setBypassingRoleQualification(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 829
    nop

    .line 830
    return-void

    .line 827
    :catch_7
    move-exception v0

    .line 828
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDefaultApplication(Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 590
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 591
    const-string v0, "executor cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 594
    :try_start_f
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v0, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 595
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {p4, p5}, Landroid/app/role/RoleManager;->createRemoteCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v6
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_2a

    .line 594
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "roleName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .local v2, "roleName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "flags":I
    :try_start_22
    invoke-interface/range {v1 .. v6}, Landroid/app/role/IRoleManager;->setDefaultApplicationAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_27

    .line 598
    nop

    .line 599
    return-void

    .line 596
    :catch_27
    move-exception v0

    move-object p1, v0

    goto :goto_2f

    .end local v2    # "roleName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "flags":I
    .restart local p1    # "roleName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catch_2a
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object p1, v0

    .line 597
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .restart local v2    # "roleName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist setDefaultHoldersForTest(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1234
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1235
    const-string v0, "packageNames cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1237
    :try_start_a
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 1238
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1237
    invoke-interface {v0, p1, p2, v1}, Landroid/app/role/IRoleManager;->setDefaultHoldersForTestAsUser(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    .line 1241
    nop

    .line 1242
    return-void

    .line 1239
    :catch_1b
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRoleFallbackEnabled(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "fallbackEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 872
    :try_start_0
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 873
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 872
    invoke-interface {v0, p1, p2, v1}, Landroid/app/role/IRoleManager;->setRoleFallbackEnabledAsUser(Ljava/lang/String;ZI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 876
    nop

    .line 877
    return-void

    .line 874
    :catch_11
    move-exception v0

    .line 875
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRoleNamesFromController(Ljava/util/List;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 898
    .local p1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "roleNames cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 899
    invoke-direct {p0}, Landroid/app/role/RoleManager;->getContextUserIfAppropriate()Landroid/os/UserHandle;

    move-result-object v0

    .line 901
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_9
    iget-object v1, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/role/IRoleManager;->setRoleNamesFromControllerAsUser(Ljava/util/List;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14

    .line 904
    nop

    .line 905
    return-void

    .line 902
    :catch_14
    move-exception v1

    .line 903
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setRoleVisibleForTest(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1291
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1293
    :try_start_5
    iget-object v0, p0, Landroid/app/role/RoleManager;->mService:Landroid/app/role/IRoleManager;

    iget-object v1, p0, Landroid/app/role/RoleManager;->mContext:Landroid/content/Context;

    .line 1294
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1293
    invoke-interface {v0, p1, p2, v1}, Landroid/app/role/IRoleManager;->setRoleVisibleForTestAsUser(Ljava/lang/String;ZI)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_16

    .line 1297
    nop

    .line 1298
    return-void

    .line 1295
    :catch_16
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
