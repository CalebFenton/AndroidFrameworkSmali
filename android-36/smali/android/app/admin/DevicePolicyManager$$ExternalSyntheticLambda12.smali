.class public final synthetic Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$0:Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

    iput p2, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$0:Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

    iget v1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$1:I

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->lambda$executeCallback$11(Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;ILjava/lang/String;)V

    return-void
.end method
