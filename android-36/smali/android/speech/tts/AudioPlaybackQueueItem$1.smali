.class Landroid/speech/tts/AudioPlaybackQueueItem$1;
.super Ljava/lang/Object;
.source "AudioPlaybackQueueItem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/AudioPlaybackQueueItem;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/tts/AudioPlaybackQueueItem;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V
    .registers 2
    .param p1, "this$0"    # Landroid/speech/tts/AudioPlaybackQueueItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$1;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio playback error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTS.AudioQueueItem"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem$1;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-static {v0}, Landroid/speech/tts/AudioPlaybackQueueItem;->-$$Nest$fgetmDone(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 72
    const/4 v0, 0x1

    return v0
.end method
