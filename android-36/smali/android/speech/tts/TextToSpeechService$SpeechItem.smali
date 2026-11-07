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
.field private final greylist-max-o mCallerIdentity:Ljava/lang/Object;

.field private final greylist-max-o mCallerPid:I

.field private final greylist-max-o mCallerUid:I

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mStopped:Z


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .registers 5
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    .line 780
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    .line 783
    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerIdentity:Ljava/lang/Object;

    .line 784
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerUid:I

    .line 785
    iput p4, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerPid:I

    .line 786
    return-void
.end method


# virtual methods
.method public greylist-max-o getCallerIdentity()Ljava/lang/Object;
    .registers 2

    .line 789
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerIdentity:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist-max-o getCallerPid()I
    .registers 2

    .line 797
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerPid:I

    return v0
.end method

.method public greylist-max-o getCallerUid()I
    .registers 2

    .line 793
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerUid:I

    return v0
.end method

.method protected declared-synchronized greylist-max-o isStarted()Z
    .registers 2

    monitor-enter p0

    .line 847
    :try_start_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 847
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected declared-synchronized greylist-max-o isStopped()Z
    .registers 2

    monitor-enter p0

    .line 843
    :try_start_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 843
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public abstract greylist-max-o isValid()Z
.end method

.method public greylist-max-o play()V
    .registers 3

    .line 813
    monitor-enter p0

    .line 814
    :try_start_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    if-nez v0, :cond_d

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    .line 818
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    .line 819
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->playImpl()V

    .line 820
    return-void

    .line 815
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    throw v0

    .line 818
    .restart local p0    # "this":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected abstract greylist-max-o playImpl()V
.end method

.method public greylist-max-o stop()V
    .registers 3

    .line 831
    monitor-enter p0

    .line 832
    :try_start_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    if-nez v0, :cond_d

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    .line 836
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    .line 837
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stopImpl()V

    .line 838
    return-void

    .line 833
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    throw v0

    .line 836
    .restart local p0    # "this":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected abstract greylist-max-o stopImpl()V
.end method
