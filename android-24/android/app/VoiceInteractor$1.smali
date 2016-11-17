.class Landroid/app/VoiceInteractor$1;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


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
    .line 77
    iput-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@6
    .line 83
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, p1, Landroid/os/Message;->what:I

    #@8
    packed-switch v3, :pswitch_data_0

    #@b
    .line 79
    :cond_0
    :goto_0
    return-void

    #@c
    .line 85
    :pswitch_0
    iget-object v6, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    #@e
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@10
    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    #@12
    invoke-virtual {v6, v3, v4}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    #@15
    move-result-object v2

    #@16
    .line 89
    .local v2, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v2, :cond_0

    #@18
    move-object v3, v2

    #@19
    .line 90
    check-cast v3, Landroid/app/VoiceInteractor$ConfirmationRequest;

    #@1b
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@1d
    if-eqz v6, :cond_1

    #@1f
    move v5, v4

    #@20
    .line 91
    :cond_1
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@22
    check-cast v4, Landroid/os/Bundle;

    #@24
    .line 90
    invoke-virtual {v3, v5, v4}, Landroid/app/VoiceInteractor$ConfirmationRequest;->onConfirmationResult(ZLandroid/os/Bundle;)V

    #@27
    .line 92
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    #@2a
    goto :goto_0

    #@2b
    .line 96
    .end local v2    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@2d
    if-eqz v3, :cond_2

    #@2f
    const/4 v1, 0x1

    #@30
    .line 97
    .local v1, "complete":Z
    :goto_1
    iget-object v4, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    #@32
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@34
    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    #@36
    invoke-virtual {v4, v3, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    #@39
    move-result-object v2

    #@3a
    .line 102
    .restart local v2    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v2, :cond_0

    #@3c
    move-object v3, v2

    #@3d
    .line 103
    check-cast v3, Landroid/app/VoiceInteractor$PickOptionRequest;

    #@3f
    .line 104
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@41
    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@43
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@45
    check-cast v5, Landroid/os/Bundle;

    #@47
    .line 103
    invoke-virtual {v3, v1, v4, v5}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@4a
    .line 105
    if-eqz v1, :cond_0

    #@4c
    .line 106
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    #@4f
    goto :goto_0

    #@50
    .line 96
    .end local v1    # "complete":Z
    .end local v2    # "request":Landroid/app/VoiceInteractor$Request;
    :cond_2
    const/4 v1, 0x0

    #@51
    .restart local v1    # "complete":Z
    goto :goto_1

    #@52
    .line 111
    .end local v1    # "complete":Z
    :pswitch_2
    iget-object v5, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    #@54
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@56
    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    #@58
    invoke-virtual {v5, v3, v4}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    #@5b
    move-result-object v2

    #@5c
    .line 115
    .restart local v2    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v2, :cond_0

    #@5e
    move-object v3, v2

    #@5f
    .line 116
    check-cast v3, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    #@61
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@63
    check-cast v4, Landroid/os/Bundle;

    #@65
    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->onCompleteResult(Landroid/os/Bundle;)V

    #@68
    .line 117
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    #@6b
    goto :goto_0

    #@6c
    .line 121
    .end local v2    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_3
    iget-object v5, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    #@6e
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@70
    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    #@72
    invoke-virtual {v5, v3, v4}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    #@75
    move-result-object v2

    #@76
    .line 125
    .restart local v2    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v2, :cond_0

    #@78
    move-object v3, v2

    #@79
    .line 126
    check-cast v3, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    #@7b
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@7d
    check-cast v4, Landroid/os/Bundle;

    #@7f
    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor$AbortVoiceRequest;->onAbortResult(Landroid/os/Bundle;)V

    #@82
    .line 127
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    #@85
    goto :goto_0

    #@86
    .line 131
    .end local v2    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@88
    if-eqz v3, :cond_4

    #@8a
    const/4 v1, 0x1

    #@8b
    .line 132
    .restart local v1    # "complete":Z
    :goto_2
    iget-object v6, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    #@8d
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@8f
    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    #@91
    invoke-virtual {v6, v3, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    #@94
    move-result-object v2

    #@95
    .line 136
    .restart local v2    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v2, :cond_0

    #@97
    move-object v3, v2

    #@98
    .line 137
    check-cast v3, Landroid/app/VoiceInteractor$CommandRequest;

    #@9a
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@9c
    if-eqz v6, :cond_3

    #@9e
    move v5, v4

    #@9f
    .line 138
    :cond_3
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@a1
    check-cast v4, Landroid/os/Bundle;

    #@a3
    .line 137
    invoke-virtual {v3, v5, v4}, Landroid/app/VoiceInteractor$CommandRequest;->onCommandResult(ZLandroid/os/Bundle;)V

    #@a6
    .line 139
    if-eqz v1, :cond_0

    #@a8
    .line 140
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 131
    .end local v1    # "complete":Z
    .end local v2    # "request":Landroid/app/VoiceInteractor$Request;
    :cond_4
    const/4 v1, 0x0

    #@ae
    .restart local v1    # "complete":Z
    goto :goto_2

    #@af
    .line 145
    .end local v1    # "complete":Z
    :pswitch_5
    iget-object v5, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    #@b1
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b3
    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    #@b5
    invoke-virtual {v5, v3, v4}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    #@b8
    move-result-object v2

    #@b9
    .line 148
    .restart local v2    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v2, :cond_0

    #@bb
    .line 149
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->onCancel()V

    #@be
    .line 150
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    #@c1
    goto/16 :goto_0

    #@c3
    .line 83
    nop

    #@c4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
