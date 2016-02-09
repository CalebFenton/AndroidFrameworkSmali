.class abstract Landroid/speech/tts/TextToSpeechService$SpeechItem;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SpeechItem"
.end annotation


# instance fields
.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mCallerPid:I

.field private final mCallerUid:I

.field private mStarted:Z

.field private mStopped:Z

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 744
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 741
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    #@8
    .line 742
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    #@a
    .line 745
    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerIdentity:Ljava/lang/Object;

    #@c
    .line 746
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerUid:I

    #@e
    .line 747
    iput p4, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerPid:I

    #@10
    .line 744
    return-void
.end method


# virtual methods
.method public getCallerIdentity()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerIdentity:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getCallerPid()I
    .locals 1

    #@0
    .prologue
    .line 759
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerPid:I

    #@2
    return v0
.end method

.method public getCallerUid()I
    .locals 1

    #@0
    .prologue
    .line 755
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerUid:I

    #@2
    return v0
.end method

.method protected declared-synchronized isStarted()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 809
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected declared-synchronized isStopped()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 805
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public abstract isValid()Z
.end method

.method public play()V
    .locals 2

    #@0
    .prologue
    .line 775
    monitor-enter p0

    #@1
    .line 776
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 777
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "play() called twice"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 775
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 779
    :cond_0
    const/4 v0, 0x1

    #@12
    :try_start_1
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 781
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->playImpl()V

    #@18
    .line 774
    return-void
.end method

.method protected abstract playImpl()V
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 793
    monitor-enter p0

    #@1
    .line 794
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 795
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "stop() called twice"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 793
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 797
    :cond_0
    const/4 v0, 0x1

    #@12
    :try_start_1
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 799
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stopImpl()V

    #@18
    .line 792
    return-void
.end method

.method protected abstract stopImpl()V
.end method
