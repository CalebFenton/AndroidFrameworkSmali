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
.field final synthetic blacklist this$0:Landroid/app/VoiceInteractor;


# direct methods
.method constructor blacklist <init>(Landroid/app/VoiceInteractor;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/VoiceInteractor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist executeMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 94
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_c2

    goto/16 :goto_c1

    .line 156
    :pswitch_d
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v2, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 159
    .local v1, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_c1

    .line 160
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->onCancel()V

    .line 161
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto/16 :goto_c1

    .line 142
    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_21
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    .line 143
    .local v1, "complete":Z
    :goto_28
    iget-object v4, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v4, v5, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v4

    .line 147
    .local v4, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v4, :cond_c1

    .line 148
    move-object v5, v4

    check-cast v5, Landroid/app/VoiceInteractor$CommandRequest;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_3c

    move v2, v3

    :cond_3c
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v5, v2, v3}, Landroid/app/VoiceInteractor$CommandRequest;->onCommandResult(ZLandroid/os/Bundle;)V

    .line 150
    if-eqz v1, :cond_c1

    .line 151
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto/16 :goto_c1

    .line 132
    .end local v1    # "complete":Z
    .end local v4    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_4a
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v2, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 136
    .local v1, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_c1

    .line 137
    move-object v2, v1

    check-cast v2, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor$AbortVoiceRequest;->onAbortResult(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_c1

    .line 122
    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_64
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v2, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 126
    .restart local v1    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_c1

    .line 127
    move-object v2, v1

    check-cast v2, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->onCompleteResult(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_c1

    .line 107
    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_7e
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_83

    move v2, v3

    .line 108
    .local v2, "complete":Z
    :cond_83
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v3, v2}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 113
    .restart local v1    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_c1

    .line 114
    move-object v3, v1

    check-cast v3, Landroid/app/VoiceInteractor$PickOptionRequest;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 116
    if-eqz v2, :cond_c1

    .line 117
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_c1

    .line 96
    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    .end local v2    # "complete":Z
    :pswitch_a3
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v4, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 100
    .restart local v1    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_c1

    .line 101
    move-object v4, v1

    check-cast v4, Landroid/app/VoiceInteractor$ConfirmationRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_b7

    move v2, v3

    :cond_b7
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Landroid/app/VoiceInteractor$ConfirmationRequest;->onConfirmationResult(ZLandroid/os/Bundle;)V

    .line 103
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 165
    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    :cond_c1
    :goto_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_7e
        :pswitch_64
        :pswitch_4a
        :pswitch_21
        :pswitch_d
    .end packed-switch
.end method
