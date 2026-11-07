.class Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;
.super Landroid/app/role/IOnRoleHoldersChangedListener$Stub;
.source "RoleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/role/RoleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnRoleHoldersChangedListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/app/role/OnRoleHoldersChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$VC0DqMWP-IazZBmjmM2sKIyKLF8(Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->lambda$onRoleHoldersChanged$0(Ljava/lang/String;I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/role/OnRoleHoldersChangedListener;

    .line 1319
    invoke-direct {p0}, Landroid/app/role/IOnRoleHoldersChangedListener$Stub;-><init>()V

    .line 1320
    iput-object p1, p0, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1321
    iput-object p2, p0, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->mListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 1322
    return-void
.end method

.method private synthetic blacklist lambda$onRoleHoldersChanged$0(Ljava/lang/String;I)V
    .registers 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1329
    iget-object v0, p0, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->mListener:Landroid/app/role/OnRoleHoldersChangedListener;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/role/OnRoleHoldersChangedListener;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public blacklist onRoleHoldersChanged(Ljava/lang/String;I)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1328
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/app/role/RoleManager$OnRoleHoldersChangedListenerDelegate;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1332
    nop

    .line 1333
    return-void

    .line 1331
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1332
    throw v2
.end method
