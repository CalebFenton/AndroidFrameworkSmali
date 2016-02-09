.class Landroid/app/VoiceInteractor$2;
.super Lcom/android/internal/app/IVoiceInteractorCallback$Stub;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/VoiceInteractor;


# direct methods
.method constructor <init>(Landroid/app/VoiceInteractor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/VoiceInteractor;

    #@0
    .prologue
    .line 157
    iput-object p1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@2
    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@6
    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    .line 181
    const/4 v2, 0x4

    #@9
    .line 180
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@10
    .line 179
    return-void
.end method

.method public deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@2
    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@6
    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    .line 194
    const/4 v2, 0x6

    #@9
    const/4 v3, 0x0

    #@a
    .line 193
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 192
    return-void
.end method

.method public deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "complete"    # Z
    .param p3, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@2
    iget-object v1, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@6
    iget-object v2, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    .line 188
    if-eqz p2, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    const/4 v3, 0x5

    #@c
    .line 187
    invoke-virtual {v2, v3, v0, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@13
    .line 186
    return-void

    #@14
    .line 188
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@2
    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@6
    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    .line 175
    const/4 v2, 0x3

    #@9
    .line 174
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@10
    .line 173
    return-void
.end method

.method public deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 161
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@3
    iget-object v2, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@5
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@7
    iget-object v3, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    .line 162
    if-eqz p2, :cond_0

    #@b
    move v0, v1

    #@c
    .line 161
    :goto_0
    invoke-virtual {v3, v1, v0, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@13
    .line 160
    return-void

    #@14
    .line 162
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p4, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@2
    iget-object v6, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    #@6
    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    .line 169
    if-eqz p2, :cond_0

    #@a
    const/4 v2, 0x1

    #@b
    :goto_0
    const/4 v1, 0x2

    #@c
    move-object v3, p1

    #@d
    move-object v4, p3

    #@e
    move-object v5, p4

    #@f
    .line 168
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@16
    .line 167
    return-void

    #@17
    .line 169
    :cond_0
    const/4 v2, 0x0

    #@18
    goto :goto_0
.end method
