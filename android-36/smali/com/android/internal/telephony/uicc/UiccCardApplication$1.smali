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
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$fgetmDestroyed(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 403
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] while being destroyed. Ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 406
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_52

    .line 407
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    if-eqz p0, :cond_52

    .line 409
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 410
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_52

    .line 412
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 413
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_52
    return-void

    .line 420
    :cond_53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c4

    .line 455
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    return-void

    .line 451
    :pswitch_71
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v0, "handleMessage (EVENT_RADIO_UNAVAILABLE)"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$fputmAppState(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)V

    return-void

    .line 447
    :pswitch_80
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 448
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$monChangeFacilityLock(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    return-void

    .line 443
    :pswitch_8a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$monQueryFacilityLock(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    return-void

    .line 439
    :pswitch_94
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 440
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$monChangeFdnDone(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    return-void

    .line 435
    :pswitch_9e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 436
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$monQueryFdnEnabled(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    return-void

    .line 427
    :pswitch_a8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 428
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mparsePinPukErrorResult(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result p0

    .line 429
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 430
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 431
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 432
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_9e
        :pswitch_94
        :pswitch_8a
        :pswitch_80
        :pswitch_a8
        :pswitch_71
    .end packed-switch
.end method
