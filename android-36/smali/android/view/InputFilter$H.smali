.class final Landroid/view/InputFilter$H;
.super Landroid/os/Handler;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InputFilter;


# direct methods
.method public constructor blacklist <init>(Landroid/view/InputFilter;Landroid/os/Looper;)V
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

    .line 218
    iput-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 219
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    goto :goto_72

    .line 245
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 247
    .local v0, "event":Landroid/view/InputEvent;
    :try_start_a
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 248
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 250
    :cond_1c
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_28

    .line 252
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    .line 253
    nop

    .line 254
    goto :goto_72

    .line 252
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    .line 253
    throw v1

    .line 238
    .end local v0    # "event":Landroid/view/InputEvent;
    :pswitch_2d
    const/4 v0, 0x0

    :try_start_2e
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v1}, Landroid/view/InputFilter;->onUninstalled()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3a

    .line 240
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1, v0}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    .line 241
    nop

    .line 242
    goto :goto_72

    .line 240
    :catchall_3a
    move-exception v1

    iget-object v2, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v2, v0}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    .line 241
    throw v1

    .line 226
    :pswitch_41
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IInputFilterHost;

    invoke-static {v0, v1}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    .line 227
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 228
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 230
    :cond_5b
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0}, Landroid/view/InputFilter;->-$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 231
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0}, Landroid/view/InputFilter;->-$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 233
    :cond_6c
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v0}, Landroid/view/InputFilter;->onInstalled()V

    .line 234
    nop

    .line 257
    :goto_72
    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_41
        :pswitch_2d
        :pswitch_6
    .end packed-switch
.end method
