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
.field final synthetic this$0:Landroid/view/InputFilter;


# direct methods
.method public constructor <init>(Landroid/view/InputFilter;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/InputFilter;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 220
    iput-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@2
    .line 221
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 220
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 226
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 225
    :goto_0
    return-void

    #@7
    .line 228
    :pswitch_0
    iget-object v2, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    check-cast v1, Landroid/view/IInputFilterHost;

    #@d
    invoke-static {v2, v1}, Landroid/view/InputFilter;->-set0(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    #@10
    .line 229
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@12
    invoke-static {v1}, Landroid/view/InputFilter;->-get0(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 230
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@1a
    invoke-static {v1}, Landroid/view/InputFilter;->-get0(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    #@21
    .line 232
    :cond_0
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@23
    invoke-static {v1}, Landroid/view/InputFilter;->-get1(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    #@26
    move-result-object v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 233
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@2b
    invoke-static {v1}, Landroid/view/InputFilter;->-get1(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    #@32
    .line 235
    :cond_1
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@34
    invoke-virtual {v1}, Landroid/view/InputFilter;->onInstalled()V

    #@37
    goto :goto_0

    #@38
    .line 240
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@3a
    invoke-virtual {v1}, Landroid/view/InputFilter;->onUninstalled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 242
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@3f
    invoke-static {v1, v3}, Landroid/view/InputFilter;->-set0(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    #@42
    goto :goto_0

    #@43
    .line 241
    :catchall_0
    move-exception v1

    #@44
    .line 242
    iget-object v2, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@46
    invoke-static {v2, v3}, Landroid/view/InputFilter;->-set0(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    #@49
    .line 241
    throw v1

    #@4a
    .line 247
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c
    check-cast v0, Landroid/view/InputEvent;

    #@4e
    .line 249
    .local v0, "event":Landroid/view/InputEvent;
    :try_start_1
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@50
    invoke-static {v1}, Landroid/view/InputFilter;->-get0(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    #@53
    move-result-object v1

    #@54
    if-eqz v1, :cond_2

    #@56
    .line 250
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@58
    invoke-static {v1}, Landroid/view/InputFilter;->-get0(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    #@5b
    move-result-object v1

    #@5c
    const/4 v2, 0x0

    #@5d
    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    #@60
    .line 252
    :cond_2
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    #@62
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@64
    invoke-virtual {v1, v0, v2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@67
    .line 254
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    #@6a
    goto :goto_0

    #@6b
    .line 253
    :catchall_1
    move-exception v1

    #@6c
    .line 254
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    #@6f
    .line 253
    throw v1

    #@70
    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
