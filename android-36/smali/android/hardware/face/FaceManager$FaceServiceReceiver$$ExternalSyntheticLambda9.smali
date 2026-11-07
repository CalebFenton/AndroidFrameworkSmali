.class public final synthetic Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;ZI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iput-boolean p2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;->f$1:Z

    iput p3, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iget-boolean v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;->f$1:Z

    iget v2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->$r8$lambda$fSFISv16PZSxcy_5x41wYAaddC4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;ZI)V

    return-void
.end method
