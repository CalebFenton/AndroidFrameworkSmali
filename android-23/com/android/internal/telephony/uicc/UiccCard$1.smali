.class Lcom/android/internal/telephony/uicc/UiccCard$1;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    #@0
    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 357
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Unknown Event "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget v3, p1, Landroid/os/Message;->what:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    #@20
    .line 356
    :goto_0
    return-void

    #@21
    .line 359
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@23
    const/4 v2, 0x0

    #@24
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap4(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    #@27
    goto :goto_0

    #@28
    .line 362
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2a
    const/4 v2, 0x1

    #@2b
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap4(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    #@2e
    goto :goto_0

    #@2f
    .line 369
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31
    check-cast v0, Landroid/os/AsyncResult;

    #@33
    .line 370
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Exception: "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    #@52
    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@54
    new-instance v2, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v3, "Error in SIM access with exception"

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    #@6d
    .line 374
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@6f
    check-cast v1, Landroid/os/Message;

    #@71
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@73
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@75
    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@78
    .line 375
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@7a
    check-cast v1, Landroid/os/Message;

    #@7c
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@7f
    goto :goto_0

    #@80
    .line 378
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    #@82
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap3(Lcom/android/internal/telephony/uicc/UiccCard;)V

    #@85
    goto :goto_0

    #@86
    .line 357
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
