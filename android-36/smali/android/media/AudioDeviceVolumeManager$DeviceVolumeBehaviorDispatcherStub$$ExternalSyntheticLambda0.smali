.class public final synthetic Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioDeviceAttributes;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioDeviceAttributes;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceAttributes;

    iput p2, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioDeviceAttributes;

    iget v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;

    invoke-static {v0, v1, p1}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;->lambda$dispatchDeviceVolumeBehaviorChanged$0(Landroid/media/AudioDeviceAttributes;ILandroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    return-void
.end method
