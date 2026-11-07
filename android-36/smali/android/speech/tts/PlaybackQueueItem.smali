.class abstract Landroid/speech/tts/PlaybackQueueItem;
.super Ljava/lang/Object;
.source "PlaybackQueueItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final greylist-max-o mCallerIdentity:Ljava/lang/Object;

.field private final greylist-max-o mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# direct methods
.method constructor greylist-max-o <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p2, "callerIdentity"    # Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroid/speech/tts/PlaybackQueueItem;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 14
    iput-object p2, p0, Landroid/speech/tts/PlaybackQueueItem;->mCallerIdentity:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method greylist-max-o getCallerIdentity()Ljava/lang/Object;
    .registers 2

    .line 18
    iget-object v0, p0, Landroid/speech/tts/PlaybackQueueItem;->mCallerIdentity:Ljava/lang/Object;

    return-object v0
.end method

.method protected greylist-max-o getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .registers 2

    .line 22
    iget-object v0, p0, Landroid/speech/tts/PlaybackQueueItem;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    return-object v0
.end method

.method public abstract whitelist test-api run()V
.end method

.method abstract greylist-max-o stop(I)V
.end method
