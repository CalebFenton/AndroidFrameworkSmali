.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CreateIkeLocalIkeAuthBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;",
        ">",
        "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;"
    }
.end annotation


# instance fields
.field protected blacklist mEapInfo:Landroid/net/eap/EapInfo;

.field protected blacklist mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3840
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<TT;>;"
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    .line 3842
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->mEapInfo:Landroid/net/eap/EapInfo;

    return-void
.end method


# virtual methods
.method protected blacklist buildIkeAuthReqMessage(Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)",
            "Lcom/android/internal/net/ipsec/ike/message/IkeMessage;"
        }
    .end annotation

    .line 3893
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<TT;>;"
    .local p1, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3895
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInitiatorSpi()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3896
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getResponderSpi()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3901
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalRequestMessageId()I

    move-result v9

    const/16 v5, 0x2e

    const/16 v6, 0x23

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    .line 3903
    .local v0, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    return-object v1
.end method

.method public blacklist enterState()V
    .registers 4

    .line 3846
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<TT;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    if-nez v0, :cond_15

    .line 3847
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mSetupData is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3848
    invoke-static {v1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    .line 3847
    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 3849
    return-void

    .line 3851
    :cond_15
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 3868
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    .line 3870
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    if-eqz v0, :cond_c

    .line 3871
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 3873
    :cond_c
    return-void
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 6
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 3881
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<TT;>;"
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->getIkeSaRecordForPacket(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v0

    .line 3885
    .local v0, "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->updateLastReceivedReqFirstPacket([B)V

    .line 3888
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v1, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 3889
    return-void
.end method

.method protected blacklist setEapInfo(Landroid/net/eap/EapInfo;)V
    .registers 2
    .param p1, "eapInfo"    # Landroid/net/eap/EapInfo;

    .line 3858
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<TT;>;"
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->mEapInfo:Landroid/net/eap/EapInfo;

    .line 3859
    return-void
.end method

.method public blacklist setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3854
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<TT;>;"
    .local p1, "setupData":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;, "TT;"
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->mSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    .line 3855
    return-void
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 3863
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;, "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase<TT;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 3864
    return-void
.end method
