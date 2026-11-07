.class public final synthetic Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    iput p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;->f$1:I

    iput-wide p3, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    iget v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;->f$1:I

    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->$r8$lambda$mbahspFMcisar8_I5Ve3I9avIbk(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJ)V

    return-void
.end method
