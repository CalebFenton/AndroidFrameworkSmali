.class Landroid/speech/tts/AudioPlaybackQueueItem$2;
.super Ljava/lang/Object;
.source "AudioPlaybackQueueItem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 75
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Landroid/speech/tts/AudioPlaybackQueueItem;->-set0(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z

    #@6
    .line 79
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    #@8
    invoke-static {v0}, Landroid/speech/tts/AudioPlaybackQueueItem;->-get0(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@f
    .line 77
    return-void
.end method
