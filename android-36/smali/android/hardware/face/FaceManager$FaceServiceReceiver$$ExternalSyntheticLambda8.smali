.class public final synthetic Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

.field public final synthetic blacklist f$1:Landroid/hardware/face/Face;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iput-object p2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/face/Face;

    iput p3, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/face/Face;

    iget v2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->$r8$lambda$NikGuFvxPGSJpH9YDB7slq_vksw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;I)V

    return-void
.end method
