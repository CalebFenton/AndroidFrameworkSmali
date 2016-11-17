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
.field final synthetic this$0:Landroid/speech/tts/AudioPlaybackQueueItem;


# direct methods
.method constructor <init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/AudioPlaybackQueueItem;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$1;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "TTS.AudioQueueItem"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Audio playback error: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, ", "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 71
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem$1;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    #@27
    invoke-static {v0}, Landroid/speech/tts/AudioPlaybackQueueItem;->-get0(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@2e
    .line 72
    const/4 v0, 0x1

    #@2f
    return v0
.end method
