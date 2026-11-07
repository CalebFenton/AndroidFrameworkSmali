.class Landroid/service/voice/VoiceInteractionSession$Request$1;
.super Lcom/android/internal/app/IVoiceInteractorRequest$Stub;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VoiceInteractionSession$Request;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession$Request;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 429
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 433
    .local v0, "session":Landroid/service/voice/VoiceInteractionSession;
    if-eqz v0, :cond_1a

    .line 434
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    .line 435
    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 437
    :cond_1a
    return-void
.end method
