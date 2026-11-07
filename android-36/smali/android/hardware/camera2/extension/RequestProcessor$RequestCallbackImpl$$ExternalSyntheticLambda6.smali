.class public final synthetic Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    iput p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    iget v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;->f$1:I

    invoke-static {v0, v1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->$r8$lambda$ezGATn_0lweB2BFu0DRZBG7mAjE(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;I)V

    return-void
.end method
