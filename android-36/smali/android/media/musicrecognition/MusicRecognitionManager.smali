.class public Landroid/media/musicrecognition/MusicRecognitionManager;
.super Ljava/lang/Object;
.source "MusicRecognitionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;,
        Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;,
        Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionFailureCode;
    }
.end annotation


# static fields
.field public static final whitelist RECOGNITION_FAILED_AUDIO_UNAVAILABLE:I = 0x7

.field public static final whitelist RECOGNITION_FAILED_NOT_FOUND:I = 0x1

.field public static final whitelist RECOGNITION_FAILED_NO_CONNECTIVITY:I = 0x2

.field public static final whitelist RECOGNITION_FAILED_SERVICE_KILLED:I = 0x5

.field public static final whitelist RECOGNITION_FAILED_SERVICE_UNAVAILABLE:I = 0x3

.field public static final whitelist RECOGNITION_FAILED_TIMEOUT:I = 0x6

.field public static final whitelist RECOGNITION_FAILED_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mService:Landroid/media/musicrecognition/IMusicRecognitionManager;


# direct methods
.method public constructor blacklist <init>(Landroid/media/musicrecognition/IMusicRecognitionManager;)V
    .registers 2
    .param p1, "service"    # Landroid/media/musicrecognition/IMusicRecognitionManager;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionManager;->mService:Landroid/media/musicrecognition/IMusicRecognitionManager;

    .line 120
    return-void
.end method


# virtual methods
.method public whitelist beginStreamingSearch(Landroid/media/musicrecognition/RecognitionRequest;Ljava/util/concurrent/Executor;Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;)V
    .registers 10
    .param p1, "recognitionRequest"    # Landroid/media/musicrecognition/RecognitionRequest;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager;->mService:Landroid/media/musicrecognition/IMusicRecognitionManager;

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/musicrecognition/RecognitionRequest;

    new-instance v2, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

    .line 143
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/musicrecognition/RecognitionRequest;

    .line 144
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    .line 145
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;-><init>(Landroid/media/musicrecognition/MusicRecognitionManager;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;Ljava/util/concurrent/Executor;)V

    .line 140
    invoke-interface {v0, v1, v2}, Landroid/media/musicrecognition/IMusicRecognitionManager;->beginRecognition(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    .line 148
    nop

    .line 149
    return-void

    .line 146
    :catch_24
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
