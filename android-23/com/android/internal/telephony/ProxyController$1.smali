.class Lcom/android/internal/telephony/ProxyController$1;
.super Landroid/os/Handler;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ProxyController;

    #@0
    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "handleMessage msg.what="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget v2, p1, Landroid/os/Message;->what:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ProxyController;->-wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    #@1b
    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    #@1d
    packed-switch v0, :pswitch_data_0

    #@20
    .line 313
    :goto_0
    return-void

    #@21
    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    #@23
    invoke-static {v0, p1}, Lcom/android/internal/telephony/ProxyController;->-wrap3(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    #@26
    goto :goto_0

    #@27
    .line 321
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    #@29
    invoke-static {v0, p1}, Lcom/android/internal/telephony/ProxyController;->-wrap1(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    #@2c
    goto :goto_0

    #@2d
    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    #@2f
    invoke-static {v0, p1}, Lcom/android/internal/telephony/ProxyController;->-wrap2(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    #@32
    goto :goto_0

    #@33
    .line 329
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    #@35
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ProxyController;->onFinishRadioCapabilityResponse(Landroid/os/Message;)V

    #@38
    goto :goto_0

    #@39
    .line 333
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    #@3b
    invoke-static {v0, p1}, Lcom/android/internal/telephony/ProxyController;->-wrap4(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    #@3e
    goto :goto_0

    #@3f
    .line 315
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
