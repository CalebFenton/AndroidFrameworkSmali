.class public final synthetic Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

.field public final synthetic blacklist f$1:Landroid/hardware/face/FaceEnrollFrame;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iput-object p2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/face/FaceEnrollFrame;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/face/FaceManager$FaceServiceReceiver;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/face/FaceEnrollFrame;

    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->$r8$lambda$veoW_45VDEkaMcHO7b-7juodSaw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method
