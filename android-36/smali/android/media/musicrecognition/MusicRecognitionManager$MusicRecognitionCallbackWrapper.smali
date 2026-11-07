.class final Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;
.super Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;
.source "MusicRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/MusicRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MusicRecognitionCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

.field private final blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRecognitionRequest:Landroid/media/musicrecognition/RecognitionRequest;


# direct methods
.method public static synthetic blacklist $r8$lambda$ErC9Gha2AeAkacSC13C7kw57Zw8(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->lambda$onRecognitionSucceeded$0(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$y9Hz6e4mMN9_2k50PFdveUJmMOA(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->lambda$onRecognitionFailed$1(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/musicrecognition/MusicRecognitionManager;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p2, "recognitionRequest"    # Landroid/media/musicrecognition/RecognitionRequest;
    .param p3, "callback"    # Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;
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

    .line 164
    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;-><init>()V

    .line 165
    iput-object p2, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mRecognitionRequest:Landroid/media/musicrecognition/RecognitionRequest;

    .line 166
    iput-object p3, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    .line 167
    iput-object p4, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 168
    return-void
.end method

.method private synthetic blacklist lambda$onRecognitionFailed$1(I)V
    .registers 4
    .param p1, "failureCode"    # I

    .line 179
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mRecognitionRequest:Landroid/media/musicrecognition/RecognitionRequest;

    invoke-interface {v0, v1, p1}, Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;->onRecognitionFailed(Landroid/media/musicrecognition/RecognitionRequest;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onRecognitionSucceeded$0(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "result"    # Landroid/media/MediaMetadata;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 173
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mRecognitionRequest:Landroid/media/musicrecognition/RecognitionRequest;

    invoke-interface {v0, v1, p1, p2}, Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;->onRecognitionSucceeded(Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist onAudioStreamClosed()V
    .registers 4

    .line 184
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public blacklist onRecognitionFailed(I)V
    .registers 4
    .param p1, "failureCode"    # I

    .line 178
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public blacklist onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "result"    # Landroid/media/MediaMetadata;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 172
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method
