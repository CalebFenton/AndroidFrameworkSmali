.class Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
.super Ljava/lang/Object;
.source "AudioDeviceVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerInfo"
.end annotation


# instance fields
.field final blacklist mDevice:Landroid/media/AudioDeviceAttributes;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mHandlesVolumeAdjustment:Z

.field final blacklist mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceAttributes;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .param p2, "exe"    # Ljava/util/concurrent/Executor;
    .param p3, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p4, "handlesVolumeAdjustment"    # Z

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    .line 255
    iput-object p2, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    .line 256
    iput-object p3, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 257
    iput-boolean p4, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mHandlesVolumeAdjustment:Z

    .line 258
    return-void
.end method
