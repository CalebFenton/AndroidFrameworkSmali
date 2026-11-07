.class public final synthetic Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/media/MediaMetadata;

.field public final synthetic blacklist f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

    iput-object p2, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaMetadata;

    iput-object p3, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaMetadata;

    iget-object v2, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->$r8$lambda$ErC9Gha2AeAkacSC13C7kw57Zw8(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V

    return-void
.end method
