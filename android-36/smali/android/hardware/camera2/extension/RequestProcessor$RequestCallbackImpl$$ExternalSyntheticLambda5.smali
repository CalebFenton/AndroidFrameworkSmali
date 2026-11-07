.class public final synthetic Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    iput p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;->f$2:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    iget v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;->f$2:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->$r8$lambda$D6CUWulxuJuwufM1h9E-TSpjDtQ(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
