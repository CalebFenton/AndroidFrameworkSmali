.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingState"
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$internal$telephony$dataconnection$DataCallResponse$SetupResult:[I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->values()[Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 1584
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const v13, 0x4000a

    #@3
    const/4 v12, 0x0

    #@4
    .line 1591
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@6
    new-instance v10, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v11, "DcActivatingState: msg="

    #@e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v10

    #@12
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap4(Landroid/os/Message;)Ljava/lang/String;

    #@15
    move-result-object v11

    #@16
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v10

    #@1a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v10

    #@1e
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@21
    .line 1592
    iget v9, p1, Landroid/os/Message;->what:I

    #@23
    sparse-switch v9, :sswitch_data_0

    #@26
    .line 1751
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@28
    new-instance v10, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v11, "DcActivatingState not handled msg.what="

    #@30
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v10

    #@34
    .line 1752
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@36
    iget v12, p1, Landroid/os/Message;->what:I

    #@38
    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@3b
    move-result-object v11

    #@3c
    .line 1751
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v10

    #@40
    .line 1752
    const-string/jumbo v11, " RefCount="

    #@43
    .line 1751
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v10

    #@47
    .line 1752
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@49
    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@4b
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@4e
    move-result v11

    #@4f
    .line 1751
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@5a
    .line 1754
    const/4 v5, 0x0

    #@5b
    .line 1757
    .local v5, "retVal":Z
    :goto_0
    return v5

    #@5c
    .line 1596
    .end local v5    # "retVal":Z
    :sswitch_0
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@5e
    invoke-static {v9, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap6(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    #@61
    .line 1597
    const/4 v5, 0x1

    #@62
    .line 1598
    .restart local v5    # "retVal":Z
    goto :goto_0

    #@63
    .line 1601
    .end local v5    # "retVal":Z
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@65
    check-cast v0, Landroid/os/AsyncResult;

    #@67
    .line 1602
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@69
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@6b
    .line 1604
    .local v2, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@6d
    invoke-static {v9, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap3(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@70
    move-result-object v4

    #@71
    .line 1605
    .local v4, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@73
    if-eq v4, v9, :cond_0

    #@75
    .line 1606
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@77
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@7a
    move-result-object v9

    #@7b
    if-eq v9, v2, :cond_0

    #@7d
    .line 1607
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7f
    new-instance v10, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v11, "DcActivatingState: WEIRD mConnectionsParams:"

    #@87
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v10

    #@8b
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8d
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@90
    move-result-object v11

    #@91
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v10

    #@95
    .line 1608
    const-string/jumbo v11, " != cp:"

    #@98
    .line 1607
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v10

    #@9c
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v10

    #@a0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v10

    #@a4
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    #@a7
    .line 1612
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a9
    new-instance v10, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v11, "DcActivatingState onSetupConnectionCompleted result="

    #@b1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v10

    #@b5
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v10

    #@b9
    .line 1613
    const-string/jumbo v11, " dc="

    #@bc
    .line 1612
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v10

    #@c0
    .line 1613
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@c2
    .line 1612
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v10

    #@ca
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@cd
    .line 1615
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@cf
    if-eqz v9, :cond_1

    #@d1
    .line 1616
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@d3
    new-instance v10, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v11, "onSetupConnectionCompleted result="

    #@db
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v10

    #@df
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v10

    #@e3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v10

    #@e7
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@ea
    .line 1618
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-getcom_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues()[I

    #@ed
    move-result-object v9

    #@ee
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    #@f1
    move-result v10

    #@f2
    aget v9, v9, v10

    #@f4
    packed-switch v9, :pswitch_data_0

    #@f7
    .line 1682
    new-instance v9, Ljava/lang/RuntimeException;

    #@f9
    const-string/jumbo v10, "Unknown SetupResult, should not happen"

    #@fc
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@ff
    throw v9

    #@100
    .line 1621
    :pswitch_0
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@102
    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@104
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@107
    .line 1622
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@109
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@10b
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@10e
    move-result-object v10

    #@10f
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@112
    .line 1684
    :goto_1
    const/4 v5, 0x1

    #@113
    .line 1685
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    #@115
    .line 1628
    .end local v5    # "retVal":Z
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@117
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@11a
    move-result-object v9

    #@11b
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@11d
    invoke-virtual {v9, v2, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@120
    .line 1629
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@122
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@124
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@127
    move-result-object v10

    #@128
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@12b
    goto :goto_1

    #@12c
    .line 1633
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@12e
    invoke-static {v9, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    #@131
    .line 1634
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@133
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@135
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@138
    move-result-object v10

    #@139
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@13c
    goto :goto_1

    #@13d
    .line 1638
    :pswitch_3
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@13f
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@142
    move-result-object v9

    #@143
    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@145
    .line 1639
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@147
    const v11, 0x40002

    #@14a
    invoke-virtual {v10, v11, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14d
    move-result-object v10

    #@14e
    .line 1638
    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    #@151
    goto :goto_1

    #@152
    .line 1642
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@154
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@157
    move-result-object v9

    #@158
    .line 1643
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15a
    .line 1642
    invoke-virtual {v9, v10, v0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->getSuggestedRetryTime(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)I

    #@15d
    move-result v3

    #@15e
    .line 1644
    .local v3, "delay":I
    new-instance v9, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v10, "DcActivatingState: ERR_RilError  delay="

    #@166
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v9

    #@16a
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v9

    #@16e
    .line 1646
    const-string/jumbo v10, " isRetryNeeded="

    #@171
    .line 1644
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v9

    #@175
    .line 1646
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@177
    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@179
    invoke-virtual {v10}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    #@17c
    move-result v10

    #@17d
    .line 1644
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@180
    move-result-object v9

    #@181
    .line 1647
    const-string/jumbo v10, " result="

    #@184
    .line 1644
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v9

    #@188
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v9

    #@18c
    .line 1648
    const-string/jumbo v10, " result.isRestartRadioFail="

    #@18f
    .line 1644
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v9

    #@193
    .line 1649
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@195
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    #@198
    move-result v10

    #@199
    .line 1644
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v9

    #@19d
    .line 1650
    const-string/jumbo v10, " result.isPermanentFail="

    #@1a0
    .line 1644
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v9

    #@1a4
    .line 1651
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1a6
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@1a9
    move-result-object v10

    #@1aa
    iget-object v11, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1ac
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@1af
    move-result v10

    #@1b0
    .line 1644
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v9

    #@1b4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b7
    move-result-object v8

    #@1b8
    .line 1652
    .local v8, "str":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1ba
    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1bd
    .line 1653
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1bf
    if-eqz v9, :cond_2

    #@1c1
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1c3
    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@1c6
    .line 1654
    :cond_2
    iget-object v9, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1c8
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    #@1cb
    move-result v9

    #@1cc
    if-nez v9, :cond_3

    #@1ce
    .line 1655
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1d0
    if-eqz v9, :cond_4

    #@1d2
    .line 1656
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1d4
    .line 1657
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1d6
    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@1d9
    move-result v10

    #@1da
    .line 1656
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->restartOnError(I)Z

    #@1dd
    move-result v9

    #@1de
    .line 1654
    if-eqz v9, :cond_4

    #@1e0
    .line 1658
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1e2
    const-string/jumbo v10, "DcActivatingState: ERR_RilError restart radio"

    #@1e5
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1e8
    .line 1659
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1ea
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@1ed
    move-result-object v9

    #@1ee
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    #@1f1
    .line 1660
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1f3
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@1f6
    move-result-object v9

    #@1f7
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1f9
    invoke-virtual {v9, v2, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@1fc
    .line 1661
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1fe
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@200
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@203
    move-result-object v10

    #@204
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@207
    goto/16 :goto_1

    #@209
    .line 1662
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@20b
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@20e
    move-result-object v9

    #@20f
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@211
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@214
    move-result v9

    #@215
    if-eqz v9, :cond_5

    #@217
    .line 1663
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@219
    const-string/jumbo v10, "DcActivatingState: ERR_RilError perm error"

    #@21c
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@21f
    .line 1664
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@221
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@224
    move-result-object v9

    #@225
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@227
    invoke-virtual {v9, v2, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@22a
    .line 1665
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@22c
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@22e
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@231
    move-result-object v10

    #@232
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@235
    goto/16 :goto_1

    #@237
    .line 1666
    :cond_5
    if-ltz v3, :cond_6

    #@239
    .line 1667
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@23b
    const-string/jumbo v10, "DcActivatingState: ERR_RilError retry"

    #@23e
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@241
    .line 1668
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@243
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@246
    move-result-object v9

    #@247
    .line 1669
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@249
    iget v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@24b
    .line 1668
    invoke-virtual {v9, v13, v10, v3}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    #@24e
    .line 1670
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@250
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@252
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get19(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    #@255
    move-result-object v10

    #@256
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@259
    goto/16 :goto_1

    #@25b
    .line 1672
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@25d
    const-string/jumbo v10, "DcActivatingState: ERR_RilError no retry"

    #@260
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@263
    .line 1673
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@265
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@268
    move-result-object v9

    #@269
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@26b
    invoke-virtual {v9, v2, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@26e
    .line 1674
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@270
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@272
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@275
    move-result-object v10

    #@276
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@279
    goto/16 :goto_1

    #@27b
    .line 1678
    .end local v3    # "delay":I
    .end local v8    # "str":Ljava/lang/String;
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@27d
    new-instance v10, Ljava/lang/StringBuilder;

    #@27f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@282
    const-string/jumbo v11, "DcActivatingState: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    #@285
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v10

    #@289
    .line 1679
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@28b
    .line 1678
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v10

    #@28f
    .line 1679
    const-string/jumbo v11, " != mTag:"

    #@292
    .line 1678
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@295
    move-result-object v10

    #@296
    .line 1679
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@298
    iget v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@29a
    .line 1678
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v10

    #@29e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a1
    move-result-object v10

    #@2a2
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    #@2a5
    goto/16 :goto_1

    #@2a7
    .line 1688
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v4    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a9
    check-cast v0, Landroid/os/AsyncResult;

    #@2ab
    .line 1689
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@2ad
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2af
    .line 1690
    .restart local v2    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@2b1
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2b3
    iget v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@2b5
    if-ne v9, v10, :cond_c

    #@2b7
    .line 1691
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2b9
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2bc
    move-result-object v9

    #@2bd
    if-eq v9, v2, :cond_7

    #@2bf
    .line 1692
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2c1
    new-instance v10, Ljava/lang/StringBuilder;

    #@2c3
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2c6
    const-string/jumbo v11, "DcActivatingState: WEIRD mConnectionsParams:"

    #@2c9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cc
    move-result-object v10

    #@2cd
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2cf
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2d2
    move-result-object v11

    #@2d3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v10

    #@2d7
    .line 1693
    const-string/jumbo v11, " != cp:"

    #@2da
    .line 1692
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v10

    #@2de
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v10

    #@2e2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e5
    move-result-object v10

    #@2e6
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    #@2e9
    .line 1696
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2eb
    .line 1698
    .local v1, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2ed
    if-nez v9, :cond_8

    #@2ef
    .line 1699
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2f1
    check-cast v9, [I

    #@2f3
    aget v7, v9, v12

    #@2f5
    .line 1700
    .local v7, "rilFailCause":I
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2f8
    move-result-object v1

    #@2f9
    .line 1701
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2fb
    if-ne v1, v9, :cond_8

    #@2fd
    .line 1703
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2ff
    const-string/jumbo v10, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE BAD: error was NONE, change to UNKNOWN"

    #@302
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@305
    .line 1706
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@307
    .line 1709
    .end local v7    # "rilFailCause":I
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@309
    invoke-static {v9, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@30c
    .line 1711
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@30e
    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@310
    invoke-virtual {v9}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    #@313
    move-result v6

    #@314
    .line 1713
    .local v6, "retryDelay":I
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@316
    new-instance v10, Ljava/lang/StringBuilder;

    #@318
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@31b
    const-string/jumbo v11, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE cause="

    #@31e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v10

    #@322
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@325
    move-result-object v10

    #@326
    .line 1715
    const-string/jumbo v11, " retryDelay="

    #@329
    .line 1713
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v10

    #@32d
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@330
    move-result-object v10

    #@331
    .line 1716
    const-string/jumbo v11, " isRetryNeeded="

    #@334
    .line 1713
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@337
    move-result-object v10

    #@338
    .line 1716
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@33a
    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@33c
    invoke-virtual {v11}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    #@33f
    move-result v11

    #@340
    .line 1713
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@343
    move-result-object v10

    #@344
    .line 1717
    const-string/jumbo v11, " dc="

    #@347
    .line 1713
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v10

    #@34b
    .line 1717
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@34d
    .line 1713
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@350
    move-result-object v10

    #@351
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@354
    move-result-object v10

    #@355
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@358
    .line 1719
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    #@35b
    move-result v9

    #@35c
    if-eqz v9, :cond_9

    #@35e
    .line 1721
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@360
    const-string/jumbo v10, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE restart radio"

    #@363
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@366
    .line 1724
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@368
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@36b
    move-result-object v9

    #@36c
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    #@36f
    .line 1725
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@371
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@374
    move-result-object v9

    #@375
    invoke-virtual {v9, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@378
    .line 1726
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@37a
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@37c
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@37f
    move-result-object v10

    #@380
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@383
    .line 1746
    .end local v1    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v6    # "retryDelay":I
    :goto_2
    const/4 v5, 0x1

    #@384
    .line 1747
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    #@386
    .line 1727
    .end local v5    # "retVal":Z
    .restart local v1    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .restart local v6    # "retryDelay":I
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@388
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@38b
    move-result-object v9

    #@38c
    invoke-virtual {v9, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@38f
    move-result v9

    #@390
    if-eqz v9, :cond_a

    #@392
    .line 1728
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@394
    const-string/jumbo v10, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE perm er"

    #@397
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@39a
    .line 1729
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@39c
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@39f
    move-result-object v9

    #@3a0
    invoke-virtual {v9, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@3a3
    .line 1730
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3a5
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3a7
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@3aa
    move-result-object v10

    #@3ab
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@3ae
    goto :goto_2

    #@3af
    .line 1731
    :cond_a
    if-ltz v6, :cond_b

    #@3b1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3b3
    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@3b5
    invoke-virtual {v9}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    #@3b8
    move-result v9

    #@3b9
    if-eqz v9, :cond_b

    #@3bb
    .line 1732
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3bd
    const-string/jumbo v10, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE retry"

    #@3c0
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@3c3
    .line 1733
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3c5
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@3c8
    move-result-object v9

    #@3c9
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3cb
    iget v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@3cd
    invoke-virtual {v9, v13, v10, v6}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    #@3d0
    .line 1735
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3d2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3d4
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get19(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    #@3d7
    move-result-object v10

    #@3d8
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@3db
    goto :goto_2

    #@3dc
    .line 1737
    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3de
    const-string/jumbo v10, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE no retry"

    #@3e1
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@3e4
    .line 1738
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3e6
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@3e9
    move-result-object v9

    #@3ea
    invoke-virtual {v9, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@3ed
    .line 1739
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3ef
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3f1
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@3f4
    move-result-object v10

    #@3f5
    invoke-static {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@3f8
    goto :goto_2

    #@3f9
    .line 1742
    .end local v1    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v6    # "retryDelay":I
    :cond_c
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3fb
    new-instance v10, Ljava/lang/StringBuilder;

    #@3fd
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@400
    const-string/jumbo v11, "DcActivatingState: stale EVENT_GET_LAST_FAIL_DONE tag:"

    #@403
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@406
    move-result-object v10

    #@407
    .line 1743
    iget v11, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@409
    .line 1742
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40c
    move-result-object v10

    #@40d
    .line 1743
    const-string/jumbo v11, " != mTag:"

    #@410
    .line 1742
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@413
    move-result-object v10

    #@414
    .line 1743
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@416
    iget v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@418
    .line 1742
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41b
    move-result-object v10

    #@41c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41f
    move-result-object v10

    #@420
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    #@423
    goto/16 :goto_2

    #@425
    .line 1592
    nop

    #@426
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x40001 -> :sswitch_1
        0x40002 -> :sswitch_2
        0x4000b -> :sswitch_0
    .end sparse-switch

    #@438
    .line 1618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
