.class public final synthetic Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

.field public final synthetic blacklist f$1:Landroid/media/AudioDeviceAttributes;

.field public final synthetic blacklist f$2:Landroid/media/VolumeInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    iput-object p2, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;->f$1:Landroid/media/AudioDeviceAttributes;

    iput-object p3, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;->f$2:Landroid/media/VolumeInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;->f$1:Landroid/media/AudioDeviceAttributes;

    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;->f$2:Landroid/media/VolumeInfo;

    invoke-static {v0, v1, v2}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->lambda$dispatchDeviceVolumeChanged$0(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V

    return-void
.end method
