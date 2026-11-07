.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;->f$0:Ljava/lang/String;

    iput p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist runNoResult(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;->f$0:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;->f$1:I

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionControllerManager;->lambda$notifyOneTimePermissionSessionTimeout$29(Ljava/lang/String;ILandroid/permission/IPermissionController;)V

    return-void
.end method
