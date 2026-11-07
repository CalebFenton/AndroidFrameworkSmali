.class Landroid/service/voice/VoiceInteractionSession$MyCallbacks;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;
.implements Landroid/service/voice/VoiceInteractionWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallbacks"
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

    .line 916
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o executeMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 919
    const/4 v0, 0x0

    .line 920
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_106

    goto/16 :goto_100

    .line 1020
    :sswitch_8
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    invoke-static {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->-$$Nest$mdoUnregisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V

    goto/16 :goto_100

    .line 1012
    :sswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1013
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    invoke-static {v1, v2, v3}, Landroid/service/voice/VoiceInteractionSession;->-$$Nest$mdoRegisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession;Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V

    .line 1015
    goto/16 :goto_100

    .line 1006
    :sswitch_27
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VisibleActivityInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3}, Landroid/service/voice/VoiceInteractionSession;->-$$Nest$mdoNotifyVisibleActivityInfoChanged(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VisibleActivityInfo;I)V

    .line 1007
    goto/16 :goto_100

    .line 998
    :sswitch_34
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->onLockscreenShown()V

    .line 999
    goto/16 :goto_100

    .line 994
    :sswitch_3b
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doHide()V

    .line 995
    goto/16 :goto_100

    .line 985
    :sswitch_42
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 989
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 991
    goto/16 :goto_100

    .line 982
    :sswitch_58
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onHandleScreenshot(Landroid/graphics/Bitmap;)V

    .line 983
    goto/16 :goto_100

    .line 971
    :sswitch_63
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 976
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/app/assist/AssistStructure;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Landroid/app/assist/AssistContent;

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual/range {v1 .. v9}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V

    .line 979
    goto/16 :goto_100

    .line 968
    :sswitch_89
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    .line 969
    goto/16 :goto_100

    .line 964
    :sswitch_90
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->onCloseSystemDialogs()V

    .line 965
    goto :goto_100

    .line 960
    :sswitch_96
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Landroid/service/voice/VoiceInteractionSession;->onTaskFinished(Landroid/content/Intent;I)V

    .line 961
    goto :goto_100

    .line 955
    :sswitch_a2
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Landroid/service/voice/VoiceInteractionSession;->onTaskStarted(Landroid/content/Intent;I)V

    .line 956
    goto :goto_100

    .line 950
    :sswitch_ae
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 951
    goto :goto_100

    .line 942
    :sswitch_b8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 944
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onGetSupportedCommands([Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 945
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->complete()V

    .line 946
    const/4 v0, 0x0

    .line 947
    goto :goto_100

    .line 939
    :sswitch_ce
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V

    .line 940
    goto :goto_100

    .line 935
    :sswitch_d8
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V

    .line 936
    goto :goto_100

    .line 931
    :sswitch_e2
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V

    .line 932
    goto :goto_100

    .line 927
    :sswitch_ec
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V

    .line 928
    goto :goto_100

    .line 923
    :sswitch_f6
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V

    .line 924
    nop

    .line 1023
    :goto_100
    if-eqz v0, :cond_105

    .line 1024
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1026
    :cond_105
    return-void

    :sswitch_data_106
    .sparse-switch
        0x1 -> :sswitch_f6
        0x2 -> :sswitch_ec
        0x3 -> :sswitch_e2
        0x4 -> :sswitch_d8
        0x5 -> :sswitch_ce
        0x6 -> :sswitch_b8
        0x7 -> :sswitch_ae
        0x64 -> :sswitch_a2
        0x65 -> :sswitch_96
        0x66 -> :sswitch_90
        0x67 -> :sswitch_89
        0x68 -> :sswitch_63
        0x69 -> :sswitch_58
        0x6a -> :sswitch_42
        0x6b -> :sswitch_3b
        0x6c -> :sswitch_34
        0x6d -> :sswitch_27
        0x6e -> :sswitch_13
        0x6f -> :sswitch_8
    .end sparse-switch
.end method

.method public greylist-max-o onBackPressed()V
    .registers 2

    .line 1030
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onBackPressed()V

    .line 1031
    return-void
.end method
