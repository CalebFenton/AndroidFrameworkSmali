.class Landroid/service/voice/VoiceInteractionSession$MyCallbacks;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;
.implements Landroid/inputmethodservice/SoftInputWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession;

    #@0
    .prologue
    .line 788
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 791
    const/4 v7, 0x0

    #@1
    .line 792
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v0, :sswitch_data_0

    #@6
    .line 877
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_0
    if-eqz v7, :cond_0

    #@8
    .line 878
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@b
    .line 790
    :cond_0
    return-void

    #@c
    .line 795
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    check-cast v0, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    #@12
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V

    #@15
    goto :goto_0

    #@16
    .line 799
    :sswitch_1
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a
    check-cast v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    #@1c
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V

    #@1f
    goto :goto_0

    #@20
    .line 803
    :sswitch_2
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24
    check-cast v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    #@26
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V

    #@29
    goto :goto_0

    #@2a
    .line 807
    :sswitch_3
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    #@30
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V

    #@33
    goto :goto_0

    #@34
    .line 811
    :sswitch_4
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38
    check-cast v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    #@3a
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V

    #@3d
    goto :goto_0

    #@3e
    .line 814
    :sswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@42
    .line 816
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@44
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@46
    check-cast v0, [Ljava/lang/String;

    #@48
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onGetSupportedCommands([Ljava/lang/String;)[Z

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4e
    .line 817
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->complete()V

    #@51
    .line 818
    const/4 v7, 0x0

    #@52
    .line 819
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_0

    #@53
    .line 822
    :sswitch_6
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@57
    check-cast v0, Landroid/service/voice/VoiceInteractionSession$Request;

    #@59
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    #@5c
    goto :goto_0

    #@5d
    .line 827
    :sswitch_7
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@5f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v0, Landroid/content/Intent;

    #@63
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@65
    invoke-virtual {v1, v0, v2}, Landroid/service/voice/VoiceInteractionSession;->onTaskStarted(Landroid/content/Intent;I)V

    #@68
    goto :goto_0

    #@69
    .line 832
    :sswitch_8
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6d
    check-cast v0, Landroid/content/Intent;

    #@6f
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@71
    invoke-virtual {v1, v0, v2}, Landroid/service/voice/VoiceInteractionSession;->onTaskFinished(Landroid/content/Intent;I)V

    #@74
    goto :goto_0

    #@75
    .line 836
    :sswitch_9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@77
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onCloseSystemDialogs()V

    #@7a
    goto :goto_0

    #@7b
    .line 840
    :sswitch_a
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@7d
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    #@80
    goto :goto_0

    #@81
    .line 843
    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@83
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@85
    .line 847
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget v0, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    #@87
    if-nez v0, :cond_1

    #@89
    .line 848
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@8b
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@8d
    check-cast v0, Landroid/os/Bundle;

    #@8f
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@91
    check-cast v1, Landroid/app/assist/AssistStructure;

    #@93
    .line 849
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@95
    check-cast v2, Ljava/lang/Throwable;

    #@97
    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@99
    check-cast v3, Landroid/app/assist/AssistContent;

    #@9b
    .line 848
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V

    #@9e
    goto/16 :goto_0

    #@a0
    .line 851
    :cond_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@a2
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a4
    check-cast v1, Landroid/os/Bundle;

    #@a6
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@a8
    check-cast v2, Landroid/app/assist/AssistStructure;

    #@aa
    .line 852
    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@ac
    check-cast v3, Ljava/lang/Throwable;

    #@ae
    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@b0
    check-cast v4, Landroid/app/assist/AssistContent;

    #@b2
    .line 853
    iget v5, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    #@b4
    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi6:I

    #@b6
    .line 851
    invoke-virtual/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 858
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_c
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@bd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bf
    check-cast v0, Landroid/graphics/Bitmap;

    #@c1
    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->onHandleScreenshot(Landroid/graphics/Bitmap;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 861
    :sswitch_d
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c8
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@ca
    .line 865
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@cc
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@ce
    check-cast v0, Landroid/os/Bundle;

    #@d0
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@d2
    .line 866
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@d4
    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@d6
    .line 865
    invoke-virtual {v2, v0, v3, v1}, Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 870
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@dd
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->doHide()V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 874
    :sswitch_f
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@e4
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onLockscreenShown()V

    #@e7
    goto/16 :goto_0

    #@e9
    .line 792
    nop

    #@ea
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    #@0
    .prologue
    .line 884
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onBackPressed()V

    #@5
    .line 883
    return-void
.end method
