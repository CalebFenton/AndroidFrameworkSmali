.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectionErrorCreatingConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 2011
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2016
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v4, :pswitch_data_0

    #@5
    .line 2042
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "DcDisconnectionErrorCreatingConnection not handled msg.what="

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    .line 2043
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15
    iget v7, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 2042
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@26
    .line 2045
    const/4 v2, 0x0

    #@27
    .line 2048
    .local v2, "retVal":Z
    :goto_0
    return v2

    #@28
    .line 2018
    .end local v2    # "retVal":Z
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    check-cast v0, Landroid/os/AsyncResult;

    #@2c
    .line 2019
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@2e
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@30
    .line 2020
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@32
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@34
    iget v5, v5, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@36
    if-ne v4, v5, :cond_1

    #@38
    .line 2021
    const-string/jumbo v3, "DcDisconnectionErrorCreatingConnection msg.what=EVENT_DEACTIVATE_DONE"

    #@3b
    .line 2023
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3d
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@40
    .line 2024
    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@42
    if-eqz v4, :cond_0

    #@44
    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@46
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@49
    .line 2028
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4b
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@4e
    move-result-object v4

    #@4f
    .line 2029
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@51
    .line 2028
    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@54
    .line 2030
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@56
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@58
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@5b
    move-result-object v5

    #@5c
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@5f
    .line 2037
    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    #@60
    .line 2038
    .restart local v2    # "retVal":Z
    goto :goto_0

    #@61
    .line 2033
    .end local v2    # "retVal":Z
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@63
    new-instance v5, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v6, "DcDisconnectionErrorCreatingConnection stale EVENT_DEACTIVATE_DONE dp.tag="

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    .line 2034
    iget v6, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@71
    .line 2033
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 2034
    const-string/jumbo v6, ", mTag="

    #@78
    .line 2033
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 2034
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7e
    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@80
    .line 2033
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@8b
    goto :goto_1

    #@8c
    .line 2016
    :pswitch_data_0
    .packed-switch 0x40003
        :pswitch_0
    .end packed-switch
.end method
