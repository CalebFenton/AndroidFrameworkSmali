.class Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;
.super Landroid/os/Handler;
.source "DeviceCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceCapabilityHandler"
.end annotation


# static fields
.field private static final blacklist EVENT_IMS_UNREGISTERED:I = 0x4

.field private static final blacklist EVENT_REGISTER_IMS_CONTENT_CHANGE:I = 0x1

.field private static final blacklist EVENT_REQUEST_PUBLISH:I = 0x3

.field private static final blacklist EVENT_UNREGISTER_IMS_CHANGE:I = 0x2

.field private static final blacklist TRIGGER_PUBLISH_REQUEST_DELAY_MS:J = 0x1f4L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 118
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmIsDestroyed(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    .line 120
    :cond_23
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    goto :goto_4b

    .line 132
    :pswitch_29
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->updateImsUnregistered()V

    goto :goto_4b

    .line 128
    :pswitch_33
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 129
    .local v0, "triggerType":I
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->requestPublishFromInternal(I)V

    .line 130
    goto :goto_4b

    .line 125
    .end local v0    # "triggerType":I
    :pswitch_3f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$munregisterImsProvisionCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    .line 126
    goto :goto_4b

    .line 122
    :pswitch_45
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mregisterImsProvisionCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    .line 123
    nop

    .line 135
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3f
        :pswitch_33
        :pswitch_29
    .end packed-switch
.end method

.method public blacklist removeRegisterImsContentChangedMessage()V
    .registers 2

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeMessages(I)V

    .line 146
    return-void
.end method

.method public blacklist sendImsUnregisteredMessage()V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    const-string v1, "sendImsUnregisteredMessage"

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeMessages(I)V

    .line 168
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeMessages(I)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    return-void
.end method

.method public blacklist sendRegisterImsContentChangedMessage(J)V
    .registers 4
    .param p1, "delay"    # J

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeMessages(I)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 142
    return-void
.end method

.method public blacklist sendTriggeringPublishMessage(I)V
    .registers 6
    .param p1, "type"    # I

    .line 154
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTriggeringPublishMessage: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeMessages(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 158
    .local v1, "message":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 159
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 160
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 161
    return-void
.end method

.method public blacklist sendUnregisterImsCallbackMessage()V
    .registers 2

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeMessages(I)V

    .line 150
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendEmptyMessage(I)Z

    .line 151
    return-void
.end method
