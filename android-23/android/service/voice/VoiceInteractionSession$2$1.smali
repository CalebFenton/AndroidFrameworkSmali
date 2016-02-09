.class Landroid/service/voice/VoiceInteractionSession$2$1;
.super Ljava/lang/Thread;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession$2;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/voice/VoiceInteractionSession$2;

.field final synthetic val$content:Landroid/app/assist/AssistContent;

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$structure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession$2;Ljava/lang/String;Landroid/app/assist/AssistStructure;Landroid/os/Bundle;Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/voice/VoiceInteractionSession$2;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$structure"    # Landroid/app/assist/AssistStructure;
    .param p4, "val$data"    # Landroid/os/Bundle;
    .param p5, "val$content"    # Landroid/app/assist/AssistContent;

    #@0
    .prologue
    .line 229
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    #@2
    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    #@4
    iput-object p4, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    #@6
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    #@8
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 232
    const/4 v4, 0x0

    #@2
    .line 233
    .local v4, "failure":Ljava/lang/Throwable;
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    #@8
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 241
    .end local v4    # "failure":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    #@d
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@f
    iget-object v7, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@11
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    #@13
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@15
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@17
    .line 242
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    #@19
    if-nez v4, :cond_1

    #@1b
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    #@1d
    :cond_1
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    #@1f
    .line 241
    const/16 v1, 0x68

    #@21
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v7, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@28
    .line 231
    return-void

    #@29
    .line 236
    .restart local v4    # "failure":Ljava/lang/Throwable;
    :catch_0
    move-exception v6

    #@2a
    .line 237
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "VoiceInteractionSession"

    #@2d
    const-string/jumbo v1, "Failure retrieving AssistStructure"

    #@30
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    .line 238
    move-object v4, v6

    #@34
    .local v4, "failure":Ljava/lang/Throwable;
    goto :goto_0
.end method
