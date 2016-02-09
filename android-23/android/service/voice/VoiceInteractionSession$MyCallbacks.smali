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
    .line 768
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 771
    const/4 v0, 0x0

    #@1
    .line 772
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v1, :sswitch_data_0

    #@6
    .line 850
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 851
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@b
    .line 770
    :cond_0
    return-void

    #@c
    .line 775
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_0
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    check-cast v1, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    #@12
    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V

    #@15
    goto :goto_0

    #@16
    .line 779
    :sswitch_1
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a
    check-cast v1, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    #@1c
    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V

    #@1f
    goto :goto_0

    #@20
    .line 783
    :sswitch_2
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24
    check-cast v1, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    #@26
    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V

    #@29
    goto :goto_0

    #@2a
    .line 787
    :sswitch_3
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v1, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    #@30
    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V

    #@33
    goto :goto_0

    #@34
    .line 791
    :sswitch_4
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@36
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38
    check-cast v1, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    #@3a
    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V

    #@3d
    goto :goto_0

    #@3e
    .line 794
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@42
    .line 796
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@44
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@46
    check-cast v1, [Ljava/lang/String;

    #@48
    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onGetSupportedCommands([Ljava/lang/String;)[Z

    #@4b
    move-result-object v1

    #@4c
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4e
    .line 797
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->complete()V

    #@51
    .line 798
    const/4 v0, 0x0

    #@52
    .line 799
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_0

    #@53
    .line 802
    :sswitch_6
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@55
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@57
    check-cast v1, Landroid/service/voice/VoiceInteractionSession$Request;

    #@59
    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    #@5c
    goto :goto_0

    #@5d
    .line 807
    :sswitch_7
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@5f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v1, Landroid/content/Intent;

    #@63
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@65
    invoke-virtual {v2, v1, v3}, Landroid/service/voice/VoiceInteractionSession;->onTaskStarted(Landroid/content/Intent;I)V

    #@68
    goto :goto_0

    #@69
    .line 812
    :sswitch_8
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@6b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6d
    check-cast v1, Landroid/content/Intent;

    #@6f
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@71
    invoke-virtual {v2, v1, v3}, Landroid/service/voice/VoiceInteractionSession;->onTaskFinished(Landroid/content/Intent;I)V

    #@74
    goto :goto_0

    #@75
    .line 816
    :sswitch_9
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@77
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->onCloseSystemDialogs()V

    #@7a
    goto :goto_0

    #@7b
    .line 820
    :sswitch_a
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@7d
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    #@80
    goto :goto_0

    #@81
    .line 823
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@83
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@85
    .line 826
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@87
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@89
    check-cast v1, Landroid/os/Bundle;

    #@8b
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8d
    check-cast v2, Landroid/app/assist/AssistStructure;

    #@8f
    .line 827
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@91
    check-cast v3, Ljava/lang/Throwable;

    #@93
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@95
    check-cast v4, Landroid/app/assist/AssistContent;

    #@97
    .line 826
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V

    #@9a
    goto/16 :goto_0

    #@9c
    .line 831
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_c
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@9e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a0
    check-cast v1, Landroid/graphics/Bitmap;

    #@a2
    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onHandleScreenshot(Landroid/graphics/Bitmap;)V

    #@a5
    goto/16 :goto_0

    #@a7
    .line 834
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a9
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@ab
    .line 838
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@ad
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@af
    check-cast v1, Landroid/os/Bundle;

    #@b1
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@b3
    .line 839
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@b5
    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@b7
    .line 838
    invoke-virtual {v3, v1, v4, v2}, Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@ba
    goto/16 :goto_0

    #@bc
    .line 843
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@be
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doHide()V

    #@c1
    goto/16 :goto_0

    #@c3
    .line 847
    :sswitch_f
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@c5
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->onLockscreenShown()V

    #@c8
    goto/16 :goto_0

    #@ca
    .line 772
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
    .line 857
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onBackPressed()V

    #@5
    .line 856
    return-void
.end method
