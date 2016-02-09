.class final Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundTriggerListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 614
    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    #@3
    .line 615
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    #@5
    .line 614
    return-void
.end method


# virtual methods
.method public onDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@0
    .prologue
    .line 623
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    #@3
    const-string/jumbo v1, "onDetected"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 625
    iget-object v7, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    #@b
    .line 626
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    #@d
    iget-boolean v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    #@f
    iget-boolean v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureAvailable:Z

    #@11
    .line 627
    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@13
    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureSession:I

    #@15
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    #@17
    .line 626
    const/4 v6, 0x0

    #@18
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;-><init>(ZZLandroid/media/AudioFormat;I[BLandroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    #@1b
    .line 625
    const/4 v1, 0x2

    #@1c
    invoke-static {v7, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@23
    .line 619
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "status"    # I

    #@0
    .prologue
    .line 633
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onError: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 634
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@20
    .line 632
    return-void
.end method

.method public onRecognitionPaused()V
    .locals 2

    #@0
    .prologue
    .line 639
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    #@3
    const-string/jumbo v1, "onRecognitionPaused"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 640
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@f
    .line 638
    return-void
.end method

.method public onRecognitionResumed()V
    .locals 2

    #@0
    .prologue
    .line 645
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    #@3
    const-string/jumbo v1, "onRecognitionResumed"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 646
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    #@b
    const/4 v1, 0x5

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@f
    .line 644
    return-void
.end method
