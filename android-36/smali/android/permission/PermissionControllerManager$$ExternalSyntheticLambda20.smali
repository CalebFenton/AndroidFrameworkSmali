.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;->f$0:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;->f$0:Landroid/os/UserHandle;

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, p1}, Landroid/permission/PermissionControllerManager;->lambda$getRuntimePermissionBackup$5(Landroid/os/UserHandle;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
