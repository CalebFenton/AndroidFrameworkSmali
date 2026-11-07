.class abstract Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "RekeyChildDeleteBase"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2016
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    return-void
.end method

.method private blacklist isOnNewSa(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;)Z
    .registers 5
    .param p1, "req"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 2039
    iget v0, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    packed-switch v0, :pswitch_data_36

    .line 2046
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid exchange subtype for Child Session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2043
    :pswitch_20
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->requestPayloads:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->hasRemoteChildSpiForRekey(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z

    move-result v0

    return v0

    .line 2041
    :pswitch_2b
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->requestPayloads:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->hasRemoteChildSpiForDelete(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z

    move-result v0

    return v0

    :pswitch_data_36
    .packed-switch 0x5
        :pswitch_2b
        :pswitch_5
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method protected blacklist finishRekey()V
    .registers 4

    .line 2053
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)V

    .line 2055
    .local v0, "delRunnable":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 2057
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getRemoteSpi()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSaDeleted(I)V

    .line 2058
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->close()V

    .line 2060
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    iput-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 2062
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 2063
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iput-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 2064
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iput-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 2065
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 2019
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2a

    .line 2034
    return v1

    .line 2022
    :pswitch_7
    const/4 v0, 0x1

    :try_start_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->isOnNewSa(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2023
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->finishRekey()V

    .line 2024
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 2025
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdleWithDeferredRequest:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_23} :catch_25

    .line 2026
    return v0

    .line 2028
    :cond_24
    return v1

    .line 2029
    :catch_25
    move-exception v1

    .line 2030
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 2031
    return v0

    :pswitch_data_2a
    .packed-switch 0x12e
        :pswitch_7
    .end packed-switch
.end method
