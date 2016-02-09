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
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractor$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "message"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 173
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    #@2
    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v2

    #@6
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@8
    move-object v1, p1

    #@9
    move-object v3, p2

    #@a
    move-object v5, p3

    #@b
    move-object v6, p4

    #@c
    .line 173
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    #@f
    .line 176
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@11
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    #@14
    .line 177
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@16
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@18
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@1a
    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@1c
    const/4 v3, 0x4

    #@1d
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@24
    .line 179
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@26
    return-object v1
.end method

.method public startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 185
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    #@2
    .line 186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v2

    #@6
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@8
    move-object v1, p1

    #@9
    move-object v3, p2

    #@a
    move-object v5, p3

    #@b
    move-object v6, p4

    #@c
    .line 185
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Ljava/lang/String;Landroid/os/Bundle;)V

    #@f
    .line 188
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$CommandRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@11
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    #@14
    .line 189
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@16
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@18
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@1a
    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@1c
    const/4 v3, 0x5

    #@1d
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@24
    .line 191
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@26
    return-object v1
.end method

.method public startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "message"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 161
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    #@2
    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v2

    #@6
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@8
    move-object v1, p1

    #@9
    move-object v3, p2

    #@a
    move-object v5, p3

    #@b
    move-object v6, p4

    #@c
    .line 161
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    #@f
    .line 164
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@11
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    #@14
    .line 165
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@16
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@18
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@1a
    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@1c
    const/4 v3, 0x3

    #@1d
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@24
    .line 167
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@26
    return-object v1
.end method

.method public startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 136
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    #@2
    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v2

    #@6
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@8
    move-object v1, p1

    #@9
    move-object v3, p2

    #@a
    move-object v5, p3

    #@b
    move-object v6, p4

    #@c
    .line 136
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    #@f
    .line 139
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@11
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    #@14
    .line 140
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@16
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@18
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@1a
    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@1c
    const/4 v3, 0x1

    #@1d
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@24
    .line 142
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@26
    return-object v1
.end method

.method public startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p5, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 149
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    #@2
    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v2

    #@6
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@8
    move-object v1, p1

    #@9
    move-object v3, p2

    #@a
    move-object v5, p3

    #@b
    move-object v6, p4

    #@c
    move-object v7, p5

    #@d
    .line 149
    invoke-direct/range {v0 .. v7}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@10
    .line 152
    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@12
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    #@15
    .line 153
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@17
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@19
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@1b
    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@1d
    const/4 v3, 0x2

    #@1e
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@25
    .line 155
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@27
    return-object v1
.end method

.method public supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "commands"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 196
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@3
    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@5
    const/4 v4, 0x6

    #@6
    .line 197
    const/4 v5, 0x0

    #@7
    .line 196
    invoke-virtual {v3, v4, v5, p2, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    .line 198
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@d
    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@f
    invoke-virtual {v3, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessageAndWait(Landroid/os/Message;)Lcom/android/internal/os/SomeArgs;

    #@12
    move-result-object v0

    #@13
    .line 199
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_0

    #@15
    .line 200
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@17
    check-cast v2, [Z

    #@19
    .line 201
    .local v2, "res":[Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1c
    .line 202
    return-object v2

    #@1d
    .line 204
    .end local v2    # "res":[Z
    :cond_0
    array-length v3, p2

    #@1e
    new-array v3, v3, [Z

    #@20
    return-object v3
.end method
