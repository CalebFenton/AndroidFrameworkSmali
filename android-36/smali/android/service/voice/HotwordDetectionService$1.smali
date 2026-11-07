.class Landroid/service/voice/HotwordDetectionService$1;
.super Landroid/service/voice/ISandboxedDetectionService$Stub;
.source "HotwordDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/HotwordDetectionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/HotwordDetectionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/voice/HotwordDetectionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-direct {p0}, Landroid/service/voice/ISandboxedDetectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "timeoutMillis"    # J
    .param p5, "callback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {v1, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 166
    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object v1

    new-instance v2, Landroid/service/voice/HotwordDetectionService$Callback;

    const/4 v3, 0x0

    invoke-direct {v2, p5, v3}, Landroid/service/voice/HotwordDetectionService$Callback;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/HotwordDetectionService-IA;)V

    .line 165
    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/service/voice/HotwordDetectionService;->onDetect(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;JLandroid/service/voice/HotwordDetectionService$Callback;)V

    .line 169
    return-void
.end method

.method public blacklist detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 9
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

    .line 192
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_34

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported audio source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 198
    :pswitch_1d
    iget-object v1, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    new-instance v2, Landroid/service/voice/HotwordDetectionService$Callback;

    invoke-direct {v2, p5, v0}, Landroid/service/voice/HotwordDetectionService$Callback;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/HotwordDetectionService-IA;)V

    invoke-virtual {v1, p1, p3, p4, v2}, Landroid/service/voice/HotwordDetectionService;->onDetect(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/HotwordDetectionService$Callback;)V

    .line 203
    goto :goto_33

    .line 194
    :pswitch_28
    iget-object v1, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    new-instance v2, Landroid/service/voice/HotwordDetectionService$Callback;

    invoke-direct {v2, p5, v0}, Landroid/service/voice/HotwordDetectionService$Callback;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/HotwordDetectionService-IA;)V

    invoke-virtual {v1, v2}, Landroid/service/voice/HotwordDetectionService;->onDetect(Landroid/service/voice/HotwordDetectionService$Callback;)V

    .line 196
    nop

    .line 207
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_28
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist detectWithVisualSignals(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by HotwordDetectionService"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist ping(Landroid/service/voice/ISandboxedDetectionService$IPingMe;)V
    .registers 2
    .param p1, "callback"    # Landroid/service/voice/ISandboxedDetectionService$IPingMe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-interface {p1}, Landroid/service/voice/ISandboxedDetectionService$IPingMe;->onPing()V

    .line 235
    return-void
.end method

.method public blacklist registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V
    .registers 4
    .param p1, "detectorSessionStorageService"    # Landroid/service/voice/IDetectorSessionStorageService;

    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hotword cannot access files from the disk."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stopDetection()V
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-virtual {v0}, Landroid/service/voice/HotwordDetectionService;->onStopDetection()V

    .line 240
    return-void
.end method

.method public blacklist updateAudioFlinger(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "audioFlinger"    # Landroid/os/IBinder;

    .line 217
    invoke-static {p1}, Landroid/media/AudioSystem;->setAudioFlingerBinder(Landroid/os/IBinder;)V

    .line 218
    return-void
.end method

.method public blacklist updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .registers 6
    .param p1, "manager"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p2, "options"    # Landroid/content/ContentCaptureOptions;

    .line 223
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v2, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-direct {v1, v2, p1, p2}, Landroid/view/contentcapture/ContentCaptureManager;-><init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    invoke-static {v0, v1}, Landroid/service/voice/HotwordDetectionService;->-$$Nest$fputmContentCaptureManager(Landroid/service/voice/HotwordDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V

    .line 225
    return-void
.end method

.method public blacklist updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V
    .registers 3
    .param p1, "manager"    # Landroid/speech/IRecognitionServiceManager;

    .line 229
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-static {v0, p1}, Landroid/service/voice/HotwordDetectionService;->-$$Nest$fputmIRecognitionServiceManager(Landroid/service/voice/HotwordDetectionService;Landroid/speech/IRecognitionServiceManager;)V

    .line 230
    return-void
.end method

.method public blacklist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#updateState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_10

    const-string v1, " with callback"

    goto :goto_12

    :cond_10
    const-string v1, ""

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/voice/HotwordDetectionService;->-$$Nest$monUpdateStateInternal(Landroid/service/voice/HotwordDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    .line 179
    return-void
.end method
