.class Landroid/service/voice/VisualQueryDetectionService$1;
.super Landroid/service/voice/ISandboxedDetectionService$Stub;
.source "VisualQueryDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VisualQueryDetectionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VisualQueryDetectionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/voice/VisualQueryDetectionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-direct {p0}, Landroid/service/voice/ISandboxedDetectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "timeoutMillis"    # J
    .param p5, "callback"    # Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by VisualQueryDetectionService"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 8
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioSource"    # I
    .param p3, "audioFormat"    # Landroid/media/AudioFormat;
    .param p4, "options"    # Landroid/os/PersistableBundle;
    .param p5, "callback"    # Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by VisualQueryDetectionService"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist detectWithVisualSignals(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    .line 103
    invoke-static {}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#detectWithVisualSignals"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-static {v0, p1}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$fputmRemoteCallback(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V

    .line 105
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-virtual {v0}, Landroid/service/voice/VisualQueryDetectionService;->onStartDetection()V

    .line 106
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

    .line 126
    invoke-interface {p1}, Landroid/service/voice/ISandboxedDetectionService$IPingMe;->onPing()V

    .line 127
    return-void
.end method

.method public blacklist registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V
    .registers 3
    .param p1, "detectorSessionStorageService"    # Landroid/service/voice/IDetectorSessionStorageService;

    .line 168
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-static {v0, p1}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$fputmDetectorSessionStorageService(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionStorageService;)V

    .line 169
    return-void
.end method

.method public blacklist stopDetection()V
    .registers 3

    .line 110
    invoke-static {}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#stopDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-virtual {v0}, Landroid/service/voice/VisualQueryDetectionService;->onStopDetection()V

    .line 112
    return-void
.end method

.method public blacklist updateAudioFlinger(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "audioFlinger"    # Landroid/os/IBinder;

    .line 150
    invoke-static {p1}, Landroid/media/AudioSystem;->setAudioFlingerBinder(Landroid/os/IBinder;)V

    .line 151
    return-void
.end method

.method public blacklist updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .registers 6
    .param p1, "manager"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p2, "options"    # Landroid/content/ContentCaptureOptions;

    .line 156
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-direct {v1, v2, p1, p2}, Landroid/view/contentcapture/ContentCaptureManager;-><init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    invoke-static {v0, v1}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$fputmContentCaptureManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V

    .line 158
    return-void
.end method

.method public blacklist updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V
    .registers 3
    .param p1, "manager"    # Landroid/speech/IRecognitionServiceManager;

    .line 162
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-static {v0, p1}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$fputmIRecognitionServiceManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/speech/IRecognitionServiceManager;)V

    .line 163
    return-void
.end method

.method public blacklist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#updateState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_14

    const-string v2, " with callback"

    goto :goto_16

    :cond_14
    const-string v2, ""

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService$1;->this$0:Landroid/service/voice/VisualQueryDetectionService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/voice/VisualQueryDetectionService;->-$$Nest$monUpdateStateInternal(Landroid/service/voice/VisualQueryDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    .line 122
    return-void
.end method
