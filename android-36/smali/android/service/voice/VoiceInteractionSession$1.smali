.class Landroid/service/voice/VoiceInteractionSession$1;
.super Lcom/android/internal/app/IVoiceInteractor$Stub;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyDirectActionsChanged(ILandroid/os/IBinder;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "assistToken"    # Landroid/os/IBinder;

    .line 315
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionSession$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionSession$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    new-instance v3, Landroid/service/voice/VoiceInteractionSession$ActivityId;

    invoke-direct {v3, p1, p2}, Landroid/service/voice/VoiceInteractionSession$ActivityId;-><init>(ILandroid/os/IBinder;)V

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method

.method public blacklist setKillCallback(Landroid/os/ICancellationSignal;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/ICancellationSignal;

    .line 323
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iput-object p1, v0, Landroid/service/voice/VoiceInteractionSession;->mKillCallback:Landroid/os/ICancellationSignal;

    .line 324
    return-void
.end method

.method public blacklist startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "message"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 279
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    .line 280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local p3    # "message":Landroid/app/VoiceInteractor$Prompt;
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v1, "callingPackage":Ljava/lang/String;
    .local v3, "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .local v5, "message":Landroid/app/VoiceInteractor$Prompt;
    .local v6, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .line 282
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 283
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p2, p2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 p3, 0x4

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 285
    iget-object p1, v0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object p1
.end method

.method public blacklist startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 291
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    .line 292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local p3    # "command":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v1, "callingPackage":Ljava/lang/String;
    .local v3, "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .local v5, "command":Ljava/lang/String;
    .local v6, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 294
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$CommandRequest;
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 295
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p2, p2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 297
    iget-object p1, v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object p1
.end method

.method public blacklist startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "message"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 267
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local p3    # "message":Landroid/app/VoiceInteractor$Prompt;
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v1, "callingPackage":Ljava/lang/String;
    .local v3, "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .local v5, "message":Landroid/app/VoiceInteractor$Prompt;
    .local v6, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .line 270
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 271
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p2, p2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 273
    iget-object p1, v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object p1
.end method

.method public blacklist startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 242
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local p3    # "prompt":Landroid/app/VoiceInteractor$Prompt;
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v1, "callingPackage":Ljava/lang/String;
    .local v3, "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .local v5, "prompt":Landroid/app/VoiceInteractor$Prompt;
    .local v6, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .line 245
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 246
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p2, p2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 248
    iget-object p1, v0, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object p1
.end method

.method public blacklist startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 255
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local p3    # "prompt":Landroid/app/VoiceInteractor$Prompt;
    .end local p4    # "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local p5    # "extras":Landroid/os/Bundle;
    .local v1, "callingPackage":Ljava/lang/String;
    .local v3, "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .local v5, "prompt":Landroid/app/VoiceInteractor$Prompt;
    .local v6, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .local v7, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v7}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 258
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 259
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p2, p2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 261
    iget-object p1, v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object p1
.end method

.method public blacklist supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "commands"    # [Ljava/lang/String;

    .line 302
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1, p2, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 304
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessageAndWait(Landroid/os/Message;)Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 305
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    if-eqz v1, :cond_1d

    .line 306
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [Z

    .line 307
    .local v2, "res":[Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 308
    return-object v2

    .line 310
    .end local v2    # "res":[Z
    :cond_1d
    array-length v2, p2

    new-array v2, v2, [Z

    return-object v2
.end method
