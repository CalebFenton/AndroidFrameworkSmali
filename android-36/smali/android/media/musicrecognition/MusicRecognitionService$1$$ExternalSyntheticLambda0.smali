.class public final synthetic Landroid/media/musicrecognition/MusicRecognitionService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/musicrecognition/MusicRecognitionService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/musicrecognition/MusicRecognitionService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$$ExternalSyntheticLambda0;->f$0:Landroid/media/musicrecognition/MusicRecognitionService;

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$$ExternalSyntheticLambda0;->f$0:Landroid/media/musicrecognition/MusicRecognitionService;

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    check-cast p2, Landroid/media/AudioFormat;

    check-cast p3, Landroid/media/musicrecognition/MusicRecognitionService$1$1;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/musicrecognition/MusicRecognitionService;->onRecognize(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/MusicRecognitionService$Callback;)V

    return-void
.end method
