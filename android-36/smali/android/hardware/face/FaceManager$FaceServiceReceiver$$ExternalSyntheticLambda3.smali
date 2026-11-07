.class public final synthetic Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iput p2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iget v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->$r8$lambda$D0-1KD0HKCQ4Y56pKIV5gykuuCo(Landroid/hardware/face/FaceManager$FaceServiceReceiver;I)V

    return-void
.end method
