.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimulRekeyIkeLocalCreate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5185
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method public blacklist buildRequest()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 4

    .line 5194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not support sending request in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 5195
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enterState()V
    .registers 4

    .line 5188
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 5191
    return-void
.end method

.method public blacklist exitState()V
    .registers 1

    .line 5201
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5256
    const/16 v0, 0xb

    return v0
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 5
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 5225
    packed-switch p2, :pswitch_data_a

    .line 5232
    return-void

    .line 5227
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 5228
    return-void

    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 5
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 5237
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->validateIkeRekeyResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5241
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 5243
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    .line 5242
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->validateAndBuildIkeSa(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Z)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5244
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalDeleteRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_21
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_0 .. :try_end_21} :catch_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_21} :catch_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_27

    .line 5249
    :catch_22
    move-exception v0

    goto :goto_28

    .line 5247
    :catch_24
    move-exception v0

    goto :goto_27

    .line 5245
    :catch_26
    move-exception v0

    .line 5251
    :goto_27
    nop

    .line 5252
    :goto_28
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 5205
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 5218
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 5207
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;

    .line 5208
    .local v0, "receivedIkePacket":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 5210
    .local v1, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->getIkeSaRecordForPacket(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v3

    if-ne v2, v3, :cond_20

    .line 5211
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_23

    .line 5213
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;->handleReceivedIkePacket(Landroid/os/Message;)V

    .line 5215
    :goto_23
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_26
    .packed-switch 0x12d
        :pswitch_a
    .end packed-switch
.end method
