.class public final Landroid/content/rollback/RollbackManager;
.super Ljava/lang/Object;
.source "RollbackManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/RollbackManager$Status;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "android.content.rollback.extra.STATUS"

.field public static final whitelist EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.rollback.extra.STATUS_MESSAGE"

.field public static final blacklist PROPERTY_ROLLBACK_LIFETIME_MILLIS:Ljava/lang/String; = "rollback_lifetime_in_millis"

.field public static final whitelist STATUS_FAILURE:I = 0x1

.field public static final whitelist STATUS_FAILURE_INSTALL:I = 0x3

.field public static final whitelist STATUS_FAILURE_ROLLBACK_UNAVAILABLE:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field private final blacklist mBinder:Landroid/content/rollback/IRollbackManager;

.field private final blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/rollback/IRollbackManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/content/rollback/IRollbackManager;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackManager;->mCallerPackageName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist blockRollbackManager(J)V
    .registers 5
    .param p1, "millis"    # J

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0, p1, p2}, Landroid/content/rollback/IRollbackManager;->blockRollbackManager(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 275
    nop

    .line 276
    return-void

    .line 273
    :catch_7
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V
    .registers 7
    .param p1, "rollbackId"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 205
    .local p2, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Landroid/content/rollback/RollbackManager;->mCallerPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/rollback/IRollbackManager;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 209
    nop

    .line 210
    return-void

    .line 207
    :catch_e
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist expireRollbackForPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0, p1}, Landroid/content/rollback/IRollbackManager;->expireRollbackForPackage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 254
    nop

    .line 255
    return-void

    .line 252
    :catch_7
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailableRollbacks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0}, Landroid/content/rollback/IRollbackManager;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 88
    :catch_b
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRecentlyCommittedRollbacks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0}, Landroid/content/rollback/IRollbackManager;->getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 117
    :catch_b
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reloadPersistedData()V
    .registers 3

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/content/rollback/RollbackManager;->mBinder:Landroid/content/rollback/IRollbackManager;

    invoke-interface {v0}, Landroid/content/rollback/IRollbackManager;->reloadPersistedData()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 233
    nop

    .line 234
    return-void

    .line 231
    :catch_7
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
