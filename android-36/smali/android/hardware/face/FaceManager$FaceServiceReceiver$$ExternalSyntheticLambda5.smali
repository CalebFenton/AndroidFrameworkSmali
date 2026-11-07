.class public final synthetic Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

.field public final synthetic blacklist f$1:Landroid/hardware/face/Face;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iput-object p2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/face/Face;

    iput p3, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;->f$2:I

    iput-boolean p4, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;->f$3:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/face/Face;

    iget v2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;->f$2:I

    iget-boolean v3, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->$r8$lambda$m92pSXpcpAaBUgTarV1O-C3h3_k(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZ)V

    return-void
.end method
