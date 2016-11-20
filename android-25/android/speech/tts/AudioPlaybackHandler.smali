.class Landroid/speech/tts/AudioPlaybackHandler;
.super Ljava/lang/Object;
.source "AudioPlaybackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TTS.AudioPlaybackHandler"


# instance fields
.field private volatile mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

.field private final mHandlerThread:Ljava/lang/Thread;

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/speech/tts/PlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/PlaybackQueueItem;)Landroid/speech/tts/PlaybackQueueItem;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    #@2
    return-object p1
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 28
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    #@6
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@9
    .line 27
    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@b
    .line 31
    iput-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    #@d
    .line 34
    new-instance v0, Ljava/lang/Thread;

    #@f
    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;

    #@11
    invoke-direct {v1, p0, v2}, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;-><init>(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;)V

    #@14
    const-string/jumbo v2, "TTS.AudioPlaybackThread"

    #@17
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1a
    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    #@1c
    .line 33
    return-void
.end method

.method private removeAllMessages()V
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    #@5
    .line 95
    return-void
.end method

.method private removeWorkItemsFor(Ljava/lang/Object;)V
    .locals 3
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 103
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 105
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/speech/tts/PlaybackQueueItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/speech/tts/PlaybackQueueItem;

    #@12
    .line 107
    .local v1, "item":Landroid/speech/tts/PlaybackQueueItem;
    invoke-virtual {v1}, Landroid/speech/tts/PlaybackQueueItem;->getCallerIdentity()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    if-ne v2, p1, :cond_0

    #@18
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1b
    goto :goto_0

    #@1c
    .line 102
    .end local v1    # "item":Landroid/speech/tts/PlaybackQueueItem;
    :cond_1
    return-void
.end method

.method private stop(Landroid/speech/tts/PlaybackQueueItem;)V
    .locals 1
    .param p1, "item"    # Landroid/speech/tts/PlaybackQueueItem;

    #@0
    .prologue
    .line 42
    if-nez p1, :cond_0

    #@2
    .line 43
    return-void

    #@3
    .line 46
    :cond_0
    const/4 v0, -0x2

    #@4
    invoke-virtual {p1, v0}, Landroid/speech/tts/PlaybackQueueItem;->stop(I)V

    #@7
    .line 41
    return-void
.end method


# virtual methods
.method public enqueue(Landroid/speech/tts/PlaybackQueueItem;)V
    .locals 2
    .param p1, "item"    # Landroid/speech/tts/PlaybackQueueItem;

    #@0
    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 49
    :goto_0
    return-void

    #@6
    .line 52
    :catch_0
    move-exception v0

    #@7
    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public isSpeaking()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 80
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public quit()V
    .locals 1

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    #@3
    .line 88
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    #@5
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/PlaybackQueueItem;)V

    #@8
    .line 89
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    #@a
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@d
    .line 86
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    #@2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@5
    .line 37
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    #@3
    .line 72
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    #@5
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/PlaybackQueueItem;)V

    #@8
    .line 68
    return-void
.end method

.method public stopForApp(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->removeWorkItemsFor(Ljava/lang/Object;)V

    #@3
    .line 62
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;

    #@5
    .line 63
    .local v0, "current":Landroid/speech/tts/PlaybackQueueItem;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/speech/tts/PlaybackQueueItem;->getCallerIdentity()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    if-ne v1, p1, :cond_0

    #@d
    .line 64
    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/PlaybackQueueItem;)V

    #@10
    .line 58
    :cond_0
    return-void
.end method
