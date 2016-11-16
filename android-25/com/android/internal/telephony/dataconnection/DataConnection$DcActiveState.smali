.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 17

    #@0
    .prologue
    .line 1557
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "DcActiveState: enter dc="

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1f
    .line 1562
    move-object/from16 v0, p0

    #@21
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@23
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@2a
    move-result-object v15

    #@2b
    .line 1563
    .local v15, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    #@2e
    move-result v13

    #@2f
    .line 1564
    .local v13, "networkType":I
    move-object/from16 v0, p0

    #@31
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@33
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    #@3a
    move-result v1

    #@3b
    if-eq v1, v13, :cond_0

    #@3d
    .line 1565
    move-object/from16 v0, p0

    #@3f
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v3, "DcActiveState with incorrect subtype ("

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@51
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    #@58
    move-result v3

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    .line 1566
    const-string/jumbo v3, ", "

    #@60
    .line 1565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 1566
    const-string/jumbo v3, "), updating."

    #@6b
    .line 1565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@76
    .line 1568
    :cond_0
    move-object/from16 v0, p0

    #@78
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7a
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@7d
    move-result-object v1

    #@7e
    invoke-static {v13}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v1, v13, v2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    #@85
    .line 1569
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@88
    move-result v14

    #@89
    .line 1570
    .local v14, "roaming":Z
    move-object/from16 v0, p0

    #@8b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8d
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@94
    move-result v1

    #@95
    if-eq v14, v1, :cond_1

    #@97
    .line 1571
    move-object/from16 v0, p0

    #@99
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9b
    new-instance v2, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v3, "DcActiveState with incorrect roaming ("

    #@a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@ab
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@b2
    move-result v3

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v2

    #@b7
    .line 1572
    const-string/jumbo v3, ", "

    #@ba
    .line 1571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    .line 1572
    const-string/jumbo v3, "), updating."

    #@c5
    .line 1571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v2

    #@c9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v2

    #@cd
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@d0
    .line 1574
    :cond_1
    move-object/from16 v0, p0

    #@d2
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@d4
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v1, v14}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@db
    .line 1577
    const/4 v12, 0x1

    #@dc
    .line 1579
    .local v12, "createNetworkAgent":Z
    move-object/from16 v0, p0

    #@de
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e0
    const v2, 0x40004

    #@e3
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z

    #@e6
    move-result v1

    #@e7
    if-nez v1, :cond_2

    #@e9
    .line 1580
    move-object/from16 v0, p0

    #@eb
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@ed
    const v2, 0x40006

    #@f0
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z

    #@f3
    move-result v1

    #@f4
    .line 1579
    if-nez v1, :cond_2

    #@f6
    .line 1581
    move-object/from16 v0, p0

    #@f8
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@fa
    const v2, 0x40004

    #@fd
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z

    #@100
    move-result v1

    #@101
    .line 1579
    if-nez v1, :cond_2

    #@103
    .line 1582
    move-object/from16 v0, p0

    #@105
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@107
    const v2, 0x40006

    #@10a
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z

    #@10d
    move-result v1

    #@10e
    .line 1579
    if-eqz v1, :cond_5

    #@110
    .line 1583
    :cond_2
    move-object/from16 v0, p0

    #@112
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@114
    const-string/jumbo v2, "DcActiveState: skipping notifyAllOfConnected()"

    #@117
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@11a
    .line 1584
    const/4 v12, 0x0

    #@11b
    .line 1590
    :goto_0
    move-object/from16 v0, p0

    #@11d
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@11f
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@126
    move-result-object v1

    #@127
    move-object/from16 v0, p0

    #@129
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@12b
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@12e
    move-result-object v2

    #@12f
    .line 1591
    const v3, 0x4000f

    #@132
    const/4 v4, 0x0

    #@133
    .line 1590
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    #@136
    .line 1592
    move-object/from16 v0, p0

    #@138
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@13a
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@13d
    move-result-object v1

    #@13e
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@141
    move-result-object v1

    #@142
    move-object/from16 v0, p0

    #@144
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@146
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@149
    move-result-object v2

    #@14a
    .line 1593
    const v3, 0x40010

    #@14d
    const/4 v4, 0x0

    #@14e
    .line 1592
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@151
    .line 1597
    move-object/from16 v0, p0

    #@153
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@155
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@158
    move-result-object v1

    #@159
    move-object/from16 v0, p0

    #@15b
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15d
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@160
    .line 1599
    move-object/from16 v0, p0

    #@162
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@164
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@167
    move-result-object v1

    #@168
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@16a
    .line 1600
    move-object/from16 v0, p0

    #@16c
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@16e
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@171
    move-result-object v3

    #@172
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@175
    move-result-object v3

    #@176
    const/4 v4, 0x0

    #@177
    .line 1599
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@17a
    .line 1601
    move-object/from16 v0, p0

    #@17c
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@17e
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@181
    move-result-object v1

    #@182
    move-object/from16 v0, p0

    #@184
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@186
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@189
    move-result-object v2

    #@18a
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@18c
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    #@18f
    .line 1602
    move-object/from16 v0, p0

    #@191
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@193
    move-object/from16 v0, p0

    #@195
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@197
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@19a
    move-result v2

    #@19b
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap21(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    #@19e
    .line 1604
    new-instance v10, Landroid/net/NetworkMisc;

    #@1a0
    invoke-direct {v10}, Landroid/net/NetworkMisc;-><init>()V

    #@1a3
    .line 1605
    .local v10, "misc":Landroid/net/NetworkMisc;
    move-object/from16 v0, p0

    #@1a5
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1a7
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@1aa
    move-result-object v1

    #@1ab
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    #@1ae
    move-result-object v11

    #@1af
    .line 1606
    .local v11, "carrierSignalAgent":Lcom/android/internal/telephony/CarrierSignalAgent;
    invoke-virtual {v11}, Lcom/android/internal/telephony/CarrierSignalAgent;->hasRegisteredCarrierSignalReceivers()Z

    #@1b2
    move-result v1

    #@1b3
    if-eqz v1, :cond_3

    #@1b5
    .line 1608
    const/4 v1, 0x1

    #@1b6
    iput-boolean v1, v10, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    #@1b8
    .line 1610
    :cond_3
    move-object/from16 v0, p0

    #@1ba
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1bc
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@1bf
    move-result-object v1

    #@1c0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    #@1c3
    move-result-object v1

    #@1c4
    iput-object v1, v10, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@1c6
    .line 1612
    if-eqz v12, :cond_4

    #@1c8
    .line 1613
    move-object/from16 v0, p0

    #@1ca
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1cc
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap18(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@1cf
    .line 1614
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1d3
    move-object/from16 v16, v0

    #@1d5
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1db
    move-object/from16 v0, p0

    #@1dd
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1df
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@1e2
    move-result-object v3

    #@1e3
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@1e6
    move-result-object v3

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1eb
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@1ee
    move-result-object v4

    #@1ef
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@1f2
    move-result-object v4

    #@1f3
    .line 1615
    const-string/jumbo v5, "DcNetworkAgent"

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1fa
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@1fd
    move-result-object v6

    #@1fe
    move-object/from16 v0, p0

    #@200
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@202
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    #@205
    move-result-object v7

    #@206
    move-object/from16 v0, p0

    #@208
    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@20a
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    #@20d
    move-result-object v8

    #@20e
    .line 1616
    const/16 v9, 0x32

    #@210
    .line 1614
    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@213
    move-object/from16 v0, v16

    #@215
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    #@218
    .line 1556
    :cond_4
    return-void

    #@219
    .line 1587
    .end local v10    # "misc":Landroid/net/NetworkMisc;
    .end local v11    # "carrierSignalAgent":Lcom/android/internal/telephony/CarrierSignalAgent;
    :cond_5
    move-object/from16 v0, p0

    #@21b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@21d
    const-string/jumbo v2, "connected"

    #@220
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@223
    goto/16 :goto_0
.end method

.method public exit()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1622
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "DcActiveState: exit dc="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1a
    .line 1623
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1c
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1624
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@26
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->isExecutingCarrierChange()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 1625
    const-string/jumbo v0, "carrierChange"

    #@33
    .line 1631
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@35
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@3c
    move-result-object v1

    #@3d
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3f
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    #@46
    .line 1632
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@48
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@4f
    move-result-object v1

    #@50
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@52
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    #@59
    .line 1634
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@5b
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@5e
    move-result-object v1

    #@5f
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@61
    .line 1635
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@63
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 1634
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@6e
    .line 1636
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@70
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@73
    move-result-object v1

    #@74
    if-eqz v1, :cond_1

    #@76
    .line 1637
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@78
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@7b
    move-result-object v1

    #@7c
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7e
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@85
    .line 1638
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@87
    invoke-static {v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    #@8a
    .line 1621
    :cond_1
    return-void

    #@8b
    .line 1626
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8d
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@90
    move-result-object v1

    #@91
    if-eqz v1, :cond_3

    #@93
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@95
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@98
    move-result-object v1

    #@99
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    #@9b
    if-eqz v1, :cond_3

    #@9d
    .line 1627
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9f
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@a2
    move-result-object v1

    #@a3
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    #@a5
    goto :goto_0

    #@a6
    .line 1628
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a8
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@ab
    move-result-object v1

    #@ac
    if-eqz v1, :cond_0

    #@ae
    .line 1629
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b0
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@b7
    move-result-object v0

    #@b8
    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 1646
    iget v7, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v7, :pswitch_data_0

    #@8
    .line 1759
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a
    new-instance v8, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v9, "DcActiveState not handled msg.what="

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v8

    #@16
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@18
    iget v10, p1, Landroid/os/Message;->what:I

    #@1a
    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@29
    .line 1761
    const/4 v6, 0x0

    #@2a
    .line 1764
    .local v6, "retVal":Z
    :goto_0
    return v6

    #@2b
    .line 1648
    .end local v6    # "retVal":Z
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2f
    .line 1651
    .local v2, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31
    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@33
    iget-object v8, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@35
    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 1653
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3a
    new-instance v8, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v9, "DcActiveState: EVENT_CONNECT cp="

    #@42
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v8

    #@4a
    const-string/jumbo v9, " dc="

    #@4d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@5e
    .line 1655
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@60
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@62
    invoke-static {v7, v2, v8, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    #@65
    .line 1656
    const/4 v6, 0x1

    #@66
    .line 1657
    .restart local v6    # "retVal":Z
    goto :goto_0

    #@67
    .line 1660
    .end local v2    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v6    # "retVal":Z
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@69
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@6b
    .line 1662
    .local v3, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@6d
    new-instance v8, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v9, "DcActiveState: EVENT_DISCONNECT dp="

    #@75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v8

    #@7d
    .line 1663
    const-string/jumbo v9, " dc="

    #@80
    .line 1662
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    .line 1663
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@86
    .line 1662
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@91
    .line 1665
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@93
    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@95
    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@97
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9a
    move-result v7

    #@9b
    if-eqz v7, :cond_1

    #@9d
    .line 1667
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9f
    new-instance v8, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v9, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    #@a7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v8

    #@ab
    .line 1668
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@ad
    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@af
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    #@b2
    move-result v9

    #@b3
    .line 1667
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v8

    #@b7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v8

    #@bb
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@be
    .line 1671
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@c0
    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@c2
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    #@c5
    move-result v7

    #@c6
    if-ne v7, v12, :cond_0

    #@c8
    .line 1672
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@ca
    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@cc
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    #@cf
    .line 1673
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@d1
    invoke-static {v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set8(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@d4
    .line 1674
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@d6
    invoke-static {v7, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@d9
    .line 1675
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@db
    iget v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@dd
    iput v7, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    #@df
    .line 1676
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e1
    invoke-static {v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    #@e4
    .line 1677
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e6
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e8
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@eb
    move-result-object v8

    #@ec
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap20(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@ef
    .line 1687
    :goto_1
    const/4 v6, 0x1

    #@f0
    .line 1688
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    #@f2
    .line 1679
    .end local v6    # "retVal":Z
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@f4
    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@f6
    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@f8
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    .line 1680
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@fd
    invoke-static {v7, v3, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    #@100
    goto :goto_1

    #@101
    .line 1683
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@103
    new-instance v8, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v9, "DcActiveState ERROR no such apnContext="

    #@10b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v8

    #@10f
    iget-object v9, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v8

    #@115
    .line 1684
    const-string/jumbo v9, " in this dc="

    #@118
    .line 1683
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v8

    #@11c
    .line 1684
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@11e
    .line 1683
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v8

    #@122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v8

    #@126
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@129
    .line 1685
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@12b
    invoke-static {v7, v3, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    #@12e
    goto :goto_1

    #@12f
    .line 1692
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :pswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@131
    new-instance v8, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v9, "DcActiveState EVENT_DISCONNECT clearing apn contexts, dc="

    #@139
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v8

    #@13d
    .line 1693
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@13f
    .line 1692
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v8

    #@143
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v8

    #@147
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@14a
    .line 1695
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14c
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@14e
    .line 1696
    .restart local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@150
    invoke-static {v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set8(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@153
    .line 1697
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@155
    invoke-static {v7, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@158
    .line 1698
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15a
    iget v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@15c
    iput v7, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    #@15e
    .line 1699
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@160
    invoke-static {v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    #@163
    .line 1700
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@165
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@167
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@16a
    move-result-object v8

    #@16b
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap20(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@16e
    .line 1701
    const/4 v6, 0x1

    #@16f
    .line 1702
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    #@171
    .line 1706
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v6    # "retVal":Z
    :pswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@173
    new-instance v8, Ljava/lang/StringBuilder;

    #@175
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    const-string/jumbo v9, "DcActiveState EVENT_LOST_CONNECTION dc="

    #@17b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v8

    #@17f
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@181
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v8

    #@185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v8

    #@189
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@18c
    .line 1709
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@18e
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@191
    move-result-object v7

    #@192
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@194
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@197
    .line 1710
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@199
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@19b
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@19e
    move-result-object v8

    #@19f
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap20(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@1a2
    .line 1711
    const/4 v6, 0x1

    #@1a3
    .line 1712
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    #@1a5
    .line 1715
    .end local v6    # "retVal":Z
    :pswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1a7
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@1aa
    move-result-object v7

    #@1ab
    invoke-virtual {v7, v12}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@1ae
    .line 1716
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1b0
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@1b3
    move-result-object v7

    #@1b4
    if-eqz v7, :cond_2

    #@1b6
    .line 1717
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1b8
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@1bb
    move-result-object v7

    #@1bc
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1be
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@1c1
    move-result-object v8

    #@1c2
    invoke-virtual {v7, v8}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@1c5
    .line 1719
    :cond_2
    const/4 v6, 0x1

    #@1c6
    .line 1720
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    #@1c8
    .line 1723
    .end local v6    # "retVal":Z
    :pswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1ca
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@1cd
    move-result-object v7

    #@1ce
    invoke-virtual {v7, v11}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@1d1
    .line 1724
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1d3
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@1d6
    move-result-object v7

    #@1d7
    if-eqz v7, :cond_3

    #@1d9
    .line 1725
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1db
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@1de
    move-result-object v7

    #@1df
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1e1
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@1e4
    move-result-object v8

    #@1e5
    invoke-virtual {v7, v8}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@1e8
    .line 1727
    :cond_3
    const/4 v6, 0x1

    #@1e9
    .line 1728
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    #@1eb
    .line 1731
    .end local v6    # "retVal":Z
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ed
    check-cast v0, Landroid/os/AsyncResult;

    #@1ef
    .line 1732
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1f1
    if-eqz v7, :cond_5

    #@1f3
    .line 1733
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1f5
    new-instance v8, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    const-string/jumbo v9, "EVENT_BW_REFRESH_RESPONSE: error ignoring, e="

    #@1fd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v8

    #@201
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@203
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v8

    #@207
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20a
    move-result-object v8

    #@20b
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@20e
    .line 1745
    :cond_4
    :goto_2
    const/4 v6, 0x1

    #@20f
    .line 1746
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    #@211
    .line 1735
    .end local v6    # "retVal":Z
    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@213
    check-cast v1, Ljava/util/ArrayList;

    #@215
    .line 1736
    .local v1, "capInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@218
    move-result-object v7

    #@219
    check-cast v7, Ljava/lang/Integer;

    #@21b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@21e
    move-result v4

    #@21f
    .line 1737
    .local v4, "lceBwDownKbps":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@221
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    #@224
    move-result-object v5

    #@225
    .line 1738
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@227
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@22a
    move-result-object v7

    #@22b
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getLceStatus()I

    #@22e
    move-result v7

    #@22f
    if-ne v7, v12, :cond_4

    #@231
    .line 1739
    invoke-virtual {v5, v4}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    #@234
    .line 1740
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@236
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@239
    move-result-object v7

    #@23a
    if-eqz v7, :cond_4

    #@23c
    .line 1741
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@23e
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@241
    move-result-object v7

    #@242
    invoke-virtual {v7, v5}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    #@245
    goto :goto_2

    #@246
    .line 1750
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "capInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "lceBwDownKbps":I
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    :pswitch_8
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@248
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    #@24b
    move-result v7

    #@24c
    if-eqz v7, :cond_6

    #@24e
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@250
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@253
    move-result-object v7

    #@254
    if-eqz v7, :cond_6

    #@256
    .line 1752
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@258
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@25b
    move-result-object v7

    #@25c
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@25e
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@261
    move-result-object v8

    #@262
    invoke-virtual {v7, v8}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@265
    .line 1754
    :cond_6
    const/4 v6, 0x1

    #@266
    .line 1755
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    #@268
    .line 1646
    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
