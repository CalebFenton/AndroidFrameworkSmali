.class public final synthetic Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;

.field public final synthetic blacklist f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;Landroid/os/Bundle;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;->f$0:Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;

    iput-object p2, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;->f$0:Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;

    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-static {v0, v1, v2}, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;->$r8$lambda$ybe8_QAe-QvowzAU31AzynFgppA(Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;Landroid/os/Bundle;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method
