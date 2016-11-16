.class Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/soundtrigger/SoundTriggerDetector;


# direct methods
.method private constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/soundtrigger/SoundTriggerDetector;

    #@0
    .prologue
    .line 289
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@2
    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/soundtrigger/SoundTriggerDetector;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V

    #@3
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "status"    # I

    #@0
    .prologue
    .line 314
    const-string/jumbo v0, "SoundTriggerDetector"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onError()"

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
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 315
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@1c
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get1(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    #@1f
    move-result-object v0

    #@20
    const/4 v1, 0x3

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@24
    .line 313
    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    #@0
    .prologue
    .line 296
    const-string/jumbo v0, "SoundTriggerDetector"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onGenericSoundTriggerDetected()"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 297
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@1c
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get1(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    #@1f
    move-result-object v7

    #@20
    .line 299
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;

    #@22
    iget-boolean v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    #@24
    iget-boolean v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    #@26
    .line 300
    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@28
    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    #@2a
    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    #@2c
    .line 299
    const/4 v6, 0x0

    #@2d
    invoke-direct/range {v0 .. v6}, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;-><init>(ZZLandroid/media/AudioFormat;I[BLandroid/media/soundtrigger/SoundTriggerDetector$EventPayload;)V

    #@30
    .line 298
    const/4 v1, 0x2

    #@31
    .line 297
    invoke-static {v7, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@38
    .line 295
    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@0
    .prologue
    .line 306
    const-string/jumbo v0, "SoundTriggerDetector"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Ignoring onKeyphraseDetected() called for "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 305
    return-void
.end method

.method public onRecognitionPaused()V
    .locals 2

    #@0
    .prologue
    .line 323
    const-string/jumbo v0, "SoundTriggerDetector"

    #@3
    const-string/jumbo v1, "onRecognitionPaused()"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 324
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@b
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get1(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x4

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@13
    .line 322
    return-void
.end method

.method public onRecognitionResumed()V
    .locals 2

    #@0
    .prologue
    .line 332
    const-string/jumbo v0, "SoundTriggerDetector"

    #@3
    const-string/jumbo v1, "onRecognitionResumed()"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 333
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@b
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get1(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x5

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@13
    .line 331
    return-void
.end method
