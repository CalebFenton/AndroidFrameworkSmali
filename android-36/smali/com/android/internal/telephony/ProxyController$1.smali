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
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ProxyController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ProxyController;->-$$Nest$mlogd(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    return-void

    .line 314
    :pswitch_1e
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {p0}, Lcom/android/internal/telephony/ProxyController;->-$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/ProxyController;)V

    return-void

    .line 310
    :pswitch_24
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ProxyController;->-$$Nest$monTimeoutRadioCapability(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    return-void

    .line 306
    :pswitch_2a
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onFinishRadioCapabilityResponse(Landroid/os/Message;)V

    return-void

    .line 298
    :pswitch_30
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ProxyController;->-$$Nest$monApplyRadioCapabilityResponse(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    return-void

    .line 294
    :pswitch_36
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ProxyController;->-$$Nest$monStartRadioCapabilityResponse(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    return-void

    .line 302
    :pswitch_3c
    iget-object p0, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ProxyController;->-$$Nest$monNotificationRadioCapabilityChanged(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V

    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
    .end packed-switch
.end method
