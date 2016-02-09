.class Landroid/service/voice/VoiceInteractionSession$2;
.super Landroid/service/voice/IVoiceInteractionSession$Stub;
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
    .line 208
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    invoke-direct {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public closeSystemDialogs()V
    .locals 3

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/16 v2, 0x66

    #@a
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 267
    return-void
.end method

.method public destroy()V
    .locals 3

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/16 v2, 0x67

    #@a
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 277
    return-void
.end method

.method public handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "content"    # Landroid/app/assist/AssistContent;

    #@0
    .prologue
    .line 229
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$2$1;

    #@2
    const-string/jumbo v2, "AssistStructure retriever"

    #@5
    move-object v1, p0

    #@6
    move-object v3, p2

    #@7
    move-object v4, p1

    #@8
    move-object v5, p3

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$2$1;-><init>(Landroid/service/voice/VoiceInteractionSession$2;Ljava/lang/String;Landroid/app/assist/AssistStructure;Landroid/os/Bundle;Landroid/app/assist/AssistContent;)V

    #@c
    .line 245
    .local v0, "retriever":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@f
    .line 223
    return-void
.end method

.method public handleScreenshot(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/16 v2, 0x69

    #@a
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 249
    return-void
.end method

.method public hide()V
    .locals 3

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/16 v2, 0x6b

    #@a
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 217
    return-void
.end method

.method public onLockscreenShown()V
    .locals 3

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/16 v2, 0x6c

    #@a
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 272
    return-void
.end method

.method public show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .locals 3
    .param p1, "sessionArgs"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/16 v2, 0x6a

    #@a
    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 211
    return-void
.end method

.method public taskFinished(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/16 v2, 0x65

    #@a
    invoke-virtual {v1, v2, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 261
    return-void
.end method

.method public taskStarted(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    const/16 v2, 0x64

    #@a
    invoke-virtual {v1, v2, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@11
    .line 255
    return-void
.end method
