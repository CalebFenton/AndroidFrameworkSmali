.class public final synthetic Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    iput p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    iget v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/camera2/CaptureFailure;

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->$r8$lambda$ve6Sbm4B-Z8IeVXKj3y3OPTxCwg(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method
