.class public Landroid/service/voice/ISandboxedDetectionService$Default;
.super Ljava/lang/Object;
.source "ISandboxedDetectionService.java"

# interfaces
.implements Landroid/service/voice/ISandboxedDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/ISandboxedDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "timeoutMillis"    # J
    .param p5, "callback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 6
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioSource"    # I
    .param p3, "audioFormat"    # Landroid/media/AudioFormat;
    .param p4, "options"    # Landroid/os/PersistableBundle;
    .param p5, "callback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist detectWithVisualSignals(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist ping(Landroid/service/voice/ISandboxedDetectionService$IPingMe;)V
    .registers 2
    .param p1, "callback"    # Landroid/service/voice/ISandboxedDetectionService$IPingMe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V
    .registers 2
    .param p1, "detectorSessionStorageService"    # Landroid/service/voice/IDetectorSessionStorageService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist stopDetection()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist updateAudioFlinger(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "audioFlinger"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .registers 3
    .param p1, "contentCaptureManager"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p2, "options"    # Landroid/content/ContentCaptureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V
    .registers 2
    .param p1, "recognitionServiceManager"    # Landroid/speech/IRecognitionServiceManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
