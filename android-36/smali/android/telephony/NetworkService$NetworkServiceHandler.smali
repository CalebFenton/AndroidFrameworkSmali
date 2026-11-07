.class Landroid/telephony/NetworkService$NetworkServiceHandler;
.super Landroid/os/Handler;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/NetworkService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/NetworkService;Landroid/os/Looper;)V
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

    .line 162
    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 168
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 169
    .local v0, "slotIndex":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/INetworkServiceCallback;

    .line 171
    .local v1, "callback":Landroid/telephony/INetworkServiceCallback;
    iget-object v2, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v2}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkService$NetworkServiceProvider;

    .line 173
    .local v2, "serviceProvider":Landroid/telephony/NetworkService$NetworkServiceProvider;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_8c

    goto/16 :goto_8a

    .line 212
    :pswitch_19
    if-nez v2, :cond_1d

    goto/16 :goto_8a

    .line 213
    :cond_1d
    invoke-static {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->-$$Nest$mnotifyInfoChangedToCallbacks(Landroid/telephony/NetworkService$NetworkServiceProvider;)V

    .line 214
    goto/16 :goto_8a

    .line 208
    :pswitch_22
    if-nez v2, :cond_25

    goto :goto_8a

    .line 209
    :cond_25
    invoke-static {v2, v1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->-$$Nest$munregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V

    .line 210
    goto :goto_8a

    .line 204
    :pswitch_29
    if-nez v2, :cond_2c

    goto :goto_8a

    .line 205
    :cond_2c
    invoke-static {v2, v1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->-$$Nest$mregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V

    .line 206
    goto :goto_8a

    .line 197
    :pswitch_30
    if-nez v2, :cond_33

    goto :goto_8a

    .line 198
    :cond_33
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 199
    .local v3, "domainId":I
    new-instance v4, Landroid/telephony/NetworkServiceCallback;

    invoke-direct {v4, v1}, Landroid/telephony/NetworkServiceCallback;-><init>(Landroid/telephony/INetworkServiceCallback;)V

    invoke-virtual {v2, v3, v4}, Landroid/telephony/NetworkService$NetworkServiceProvider;->requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V

    .line 202
    goto :goto_8a

    .line 188
    .end local v3    # "domainId":I
    :pswitch_3e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v4}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_60

    .line 189
    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v4}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/telephony/NetworkService$NetworkServiceProvider;

    .line 190
    if-eqz v2, :cond_5d

    .line 191
    invoke-virtual {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->close()V

    .line 188
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 194
    .end local v3    # "i":I
    :cond_60
    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 195
    goto :goto_8a

    .line 182
    :pswitch_6a
    if-eqz v2, :cond_8a

    .line 183
    invoke-virtual {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->close()V

    .line 184
    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8a

    .line 176
    :pswitch_79
    if-nez v2, :cond_8a

    .line 177
    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-virtual {v4, v0}, Landroid/telephony/NetworkService;->onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    :cond_8a
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_79
        :pswitch_6a
        :pswitch_3e
        :pswitch_30
        :pswitch_29
        :pswitch_22
        :pswitch_19
    .end packed-switch
.end method
