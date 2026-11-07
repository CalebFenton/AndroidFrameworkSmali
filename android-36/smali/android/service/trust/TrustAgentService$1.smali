.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor blacklist <init>(Landroid/service/trust/TrustAgentService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/trust/TrustAgentService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ca

    goto/16 :goto_c9

    .line 230
    :pswitch_9
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onUserMayRequestUnlock()V

    .line 231
    goto/16 :goto_c9

    .line 227
    :pswitch_10
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Landroid/service/trust/TrustAgentService;->onUserRequestedUnlock(Z)V

    .line 228
    goto/16 :goto_c9

    .line 274
    :pswitch_1d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 275
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "token_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 276
    .local v1, "handle":J
    const-string/jumbo v3, "token_removed_result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 277
    .local v3, "success":Z
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/trust/TrustAgentService;->onEscrowTokenRemoved(JZ)V

    .line 278
    goto/16 :goto_c9

    .line 267
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "handle":J
    .end local v3    # "success":Z
    :pswitch_36
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 268
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string/jumbo v1, "token_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 269
    .local v3, "handle":J
    const-string/jumbo v1, "token_state"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 270
    .local v1, "tokenState":I
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v2, v3, v4, v1}, Landroid/service/trust/TrustAgentService;->onEscrowTokenStateReceived(JI)V

    .line 271
    goto/16 :goto_c9

    .line 259
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "tokenState":I
    .end local v3    # "handle":J
    :pswitch_4f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 261
    .local v1, "token":[B
    const-string/jumbo v2, "token_handle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 262
    .local v2, "handle":J
    const-string/jumbo v4, "user_handle"

    const-class v5, Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 263
    .local v4, "user":Landroid/os/UserHandle;
    iget-object v5, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/service/trust/TrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    .line 264
    goto :goto_c9

    .line 233
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "token":[B
    .end local v2    # "handle":J
    .end local v4    # "user":Landroid/os/UserHandle;
    :pswitch_72
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/service/trust/TrustAgentService;->onDeviceUnlockLockout(J)V

    .line 234
    goto :goto_c9

    .line 256
    :pswitch_7b
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    .line 257
    goto :goto_c9

    .line 253
    :pswitch_81
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    .line 254
    goto :goto_c9

    .line 250
    :pswitch_87
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    .line 251
    goto :goto_c9

    .line 236
    :pswitch_8d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/trust/TrustAgentService$ConfigurationData;

    .line 237
    .local v0, "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget-object v2, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    move-result v1

    .line 238
    .local v1, "result":Z
    iget-object v2, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_c9

    .line 240
    :try_start_9d
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v2}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a4} :catch_b4

    .line 241
    :try_start_a4
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v3

    iget-object v4, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v1, v4}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    .line 242
    monitor-exit v2

    goto :goto_bc

    :catchall_b1
    move-exception v3

    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_a4 .. :try_end_b3} :catchall_b1

    .end local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .end local v1    # "result":Z
    .end local p0    # "this":Landroid/service/trust/TrustAgentService$1;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_b3
    throw v3
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_b4} :catch_b4

    .line 243
    .restart local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .restart local v1    # "result":Z
    .restart local p0    # "this":Landroid/service/trust/TrustAgentService$1;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_b4
    move-exception v2

    .line 244
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    const-string v4, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    invoke-static {v3, v4}, Landroid/service/trust/TrustAgentService;->-$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    .line 245
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_bc
    goto :goto_c9

    .line 224
    .end local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .end local v1    # "result":Z
    :pswitch_bd
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_c4

    goto :goto_c5

    :cond_c4
    move v1, v2

    :goto_c5
    invoke-virtual {v0, v1}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    .line 225
    nop

    .line 281
    :cond_c9
    :goto_c9
    return-void

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_8d
        :pswitch_87
        :pswitch_81
        :pswitch_7b
        :pswitch_72
        :pswitch_4f
        :pswitch_36
        :pswitch_1d
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method
