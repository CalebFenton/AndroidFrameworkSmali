.class public final synthetic Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    invoke-interface {v0}, Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;->onAudioStreamClosed()V

    return-void
.end method
