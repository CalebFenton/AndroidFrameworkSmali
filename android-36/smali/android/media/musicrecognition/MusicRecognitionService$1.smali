.class Landroid/media/musicrecognition/MusicRecognitionService$1;
.super Landroid/media/musicrecognition/IMusicRecognitionService$Stub;
.source "MusicRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/MusicRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/musicrecognition/MusicRecognitionService;


# direct methods
.method constructor blacklist <init>(Landroid/media/musicrecognition/MusicRecognitionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/musicrecognition/MusicRecognitionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionService$1;->this$0:Landroid/media/musicrecognition/MusicRecognitionService;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag(Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1;->this$0:Landroid/media/musicrecognition/MusicRecognitionService;

    invoke-virtual {v0}, Landroid/media/musicrecognition/MusicRecognitionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "tag":Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;->onAttributionTag(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public blacklist onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "callback"    # Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;

    .line 82
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1;->this$0:Landroid/media/musicrecognition/MusicRecognitionService;

    invoke-static {v0}, Landroid/media/musicrecognition/MusicRecognitionService;->-$$Nest$fgetmHandler(Landroid/media/musicrecognition/MusicRecognitionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionService$1;->this$0:Landroid/media/musicrecognition/MusicRecognitionService;

    new-instance v2, Landroid/media/musicrecognition/MusicRecognitionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/media/musicrecognition/MusicRecognitionService$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/musicrecognition/MusicRecognitionService;)V

    new-instance v1, Landroid/media/musicrecognition/MusicRecognitionService$1$1;

    invoke-direct {v1, p0, p3}, Landroid/media/musicrecognition/MusicRecognitionService$1$1;-><init>(Landroid/media/musicrecognition/MusicRecognitionService$1;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V

    .line 83
    invoke-static {v2, p1, p2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method
