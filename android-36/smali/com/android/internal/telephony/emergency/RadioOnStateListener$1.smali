.class Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;
.super Landroid/os/Handler;
.source "RadioOnStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/RadioOnStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 137
    const-string v0, "handleMessage: unexpected message: %d."

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadioOnStateListener"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :pswitch_1f
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$monSatelliteEnabledChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    return-void

    .line 131
    :pswitch_25
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$monTimeoutCallbackTimeout(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    return-void

    .line 128
    :pswitch_2b
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$monImsCapabilityChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    return-void

    .line 122
    :pswitch_31
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$mregisterForRadioOn(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    return-void

    .line 119
    :pswitch_37
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$monRadioOn(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    return-void

    .line 125
    :pswitch_3d
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$monRetryTimeout(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    return-void

    .line 116
    :pswitch_43
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Landroid/telephony/ServiceState;)V

    return-void

    .line 101
    :pswitch_51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 103
    :try_start_55
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 104
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    .line 106
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 107
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 108
    iget v6, p1, Lcom/android/internal/telephony/SomeArgs;->argi1:I

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;->this$0:Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->-$$Nest$mstartSequenceInternal(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V
    :try_end_76
    .catchall {:try_start_55 .. :try_end_76} :catchall_7a

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_7a
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 113
    throw p0

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_51
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method
