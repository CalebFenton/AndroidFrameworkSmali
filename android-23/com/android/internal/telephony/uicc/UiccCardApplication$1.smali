.class Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@0
    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 372
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-get0(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 373
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Received message "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, "["

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    iget v5, p1, Landroid/os/Message;->what:I

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 374
    const-string/jumbo v5, "] while being destroyed. Ignoring."

    #@2a
    .line 373
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    #@35
    .line 375
    return-void

    #@36
    .line 378
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    #@38
    packed-switch v3, :pswitch_data_0

    #@3b
    .line 416
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3d
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "Unknown Event "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    iget v5, p1, Landroid/os/Message;->what:I

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    #@56
    .line 369
    :goto_0
    return-void

    #@57
    .line 385
    :pswitch_0
    const/4 v1, -0x1

    #@58
    .line 386
    .local v1, "attemptsRemaining":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5a
    check-cast v0, Landroid/os/AsyncResult;

    #@5c
    .line 387
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5e
    if-eqz v3, :cond_1

    #@60
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@62
    if-eqz v3, :cond_1

    #@64
    .line 388
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@66
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    #@69
    move-result v1

    #@6a
    .line 390
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@6c
    check-cast v2, Landroid/os/Message;

    #@6e
    .line 391
    .local v2, "response":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@71
    move-result-object v3

    #@72
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@74
    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@76
    .line 392
    iput v1, v2, Landroid/os/Message;->arg1:I

    #@78
    .line 393
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@7b
    goto :goto_0

    #@7c
    .line 396
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "attemptsRemaining":I
    .end local v2    # "response":Landroid/os/Message;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7e
    check-cast v0, Landroid/os/AsyncResult;

    #@80
    .line 397
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@82
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap6(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    #@85
    goto :goto_0

    #@86
    .line 400
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v0, Landroid/os/AsyncResult;

    #@8a
    .line 401
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8c
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap4(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    #@8f
    goto :goto_0

    #@90
    .line 404
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@92
    check-cast v0, Landroid/os/AsyncResult;

    #@94
    .line 405
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@96
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap5(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    #@99
    goto :goto_0

    #@9a
    .line 408
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c
    check-cast v0, Landroid/os/AsyncResult;

    #@9e
    .line 409
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@a0
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap3(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    #@a3
    goto :goto_0

    #@a4
    .line 412
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@a6
    const-string/jumbo v4, "handleMessage (EVENT_RADIO_UNAVAILABLE)"

    #@a9
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    #@ac
    .line 413
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@ae
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@b0
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-set0(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@b3
    goto :goto_0

    #@b4
    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
