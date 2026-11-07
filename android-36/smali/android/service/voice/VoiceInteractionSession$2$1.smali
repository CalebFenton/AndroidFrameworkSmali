.class Landroid/service/voice/VoiceInteractionSession$2$1;
.super Ljava/lang/Thread;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession$2;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/voice/VoiceInteractionSession$2;

.field final synthetic blacklist val$assistToken:Landroid/os/IBinder;

.field final synthetic blacklist val$content:Landroid/app/assist/AssistContent;

.field final synthetic blacklist val$count:I

.field final synthetic blacklist val$data:Landroid/os/Bundle;

.field final synthetic blacklist val$index:I

.field final synthetic blacklist val$structure:Landroid/app/assist/AssistStructure;

.field final synthetic blacklist val$taskId:I


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession$2;Ljava/lang/String;Landroid/app/assist/AssistStructure;ILandroid/os/Bundle;Landroid/app/assist/AssistContent;Landroid/os/IBinder;II)V
    .registers 10
    .param p1, "this$1"    # Landroid/service/voice/VoiceInteractionSession$2;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 351
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    iput p4, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$taskId:I

    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    iput-object p7, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$assistToken:Landroid/os/IBinder;

    iput p8, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$index:I

    iput p9, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$count:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "failure":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    if-eqz v1, :cond_14

    .line 357
    :try_start_5
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure;->ensureData()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    .line 361
    goto :goto_14

    .line 358
    :catchall_b
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "VoiceInteractionSession"

    const-string v3, "Failure retrieving AssistStructure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    move-object v0, v1

    .line 364
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_14
    :goto_14
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 365
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$taskId:I

    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 366
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 367
    if-nez v0, :cond_25

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 368
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 369
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 370
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$assistToken:Landroid/os/IBinder;

    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 371
    iget v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$index:I

    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 372
    iget v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$count:I

    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 374
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x68

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 376
    return-void
.end method
