.class final Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;
.super Landroid/os/Handler;
.source "GbaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GbaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GbaManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GbaManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GbaManager;Landroid/os/Looper;)V
    .registers 3
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

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogv(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_ba

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mloge(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    return-void

    .line 127
    :pswitch_38
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GbaManager;->isServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 128
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mprocessRequests(Lcom/android/internal/telephony/GbaManager;)V

    return-void

    .line 130
    :cond_46
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/GbaManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_98

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/GbaManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 136
    :pswitch_5c
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fputmRetryTimes(Lcom/android/internal/telephony/GbaManager;I)V

    .line 137
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$misServiceConnetable(Lcom/android/internal/telephony/GbaManager;)Z

    move-result p1

    if-nez p1, :cond_71

    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GbaManager;->isServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 139
    :cond_71
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mrebindService(Lcom/android/internal/telephony/GbaManager;Z)V

    return-void

    .line 123
    :pswitch_77
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fputmRetryTimes(Lcom/android/internal/telephony/GbaManager;I)V

    .line 124
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mprocessRequests(Lcom/android/internal/telephony/GbaManager;)V

    return-void

    .line 116
    :pswitch_82
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmRequestQueue(Lcom/android/internal/telephony/GbaManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 117
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mclearCallbacksAndNotifyFailure(Lcom/android/internal/telephony/GbaManager;)V

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$munbindService(Lcom/android/internal/telephony/GbaManager;)V

    :cond_98
    return-void

    .line 107
    :pswitch_99
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmRetryTimes(Lcom/android/internal/telephony/GbaManager;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fputmRetryTimes(Lcom/android/internal/telephony/GbaManager;I)V

    const/4 p1, 0x5

    if-ge v0, p1, :cond_ad

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mrebindService(Lcom/android/internal/telephony/GbaManager;Z)V

    return-void

    .line 110
    :cond_ad
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;->this$0:Lcom/android/internal/telephony/GbaManager;

    const-string v0, "Too many retries, stop now!"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mloge(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 111
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_99
        :pswitch_82
        :pswitch_77
        :pswitch_77
        :pswitch_5c
        :pswitch_38
    .end packed-switch
.end method
