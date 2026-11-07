.class public final synthetic Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-static {v0, v1, p1}, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;->lambda$onAudioVolumeGroupChanged$0(IILandroid/media/AudioManager$VolumeGroupCallback;)V

    return-void
.end method
