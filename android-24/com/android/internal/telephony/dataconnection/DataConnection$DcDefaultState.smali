.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3
    const-string/jumbo v1, "DcDefaultState: enter"

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@9
    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@18
    move-result-object v1

    #@19
    .line 993
    const v2, 0x4000b

    #@1c
    .line 992
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1f
    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@21
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@2e
    move-result-object v1

    #@2f
    .line 996
    const v2, 0x4000c

    #@32
    .line 995
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@35
    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@37
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3e
    move-result-object v0

    #@3f
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@41
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@44
    move-result-object v1

    #@45
    .line 998
    const v2, 0x4000d

    #@48
    .line 997
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4b
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4d
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@50
    move-result-object v0

    #@51
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@53
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@56
    .line 988
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3
    const-string/jumbo v1, "DcDefaultState: exit"

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@9
    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    #@1c
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1e
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    #@2f
    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@38
    move-result-object v0

    #@39
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3b
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    #@42
    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@44
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@47
    move-result-object v0

    #@48
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@4d
    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4f
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@52
    move-result-object v0

    #@53
    if-eqz v0, :cond_0

    #@55
    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@57
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnected()V

    #@5e
    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@60
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set0(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@63
    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@65
    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@67
    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@69
    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    #@6b
    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@6d
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set7(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@70
    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@72
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@75
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@77
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    #@7a
    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7c
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set10(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    #@7f
    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@81
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@84
    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@86
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set14(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8b
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set4(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@8e
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@90
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set6(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@93
    .line 1004
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1034
    const/16 v16, 0x1

    #@2
    .line 1037
    .local v16, "retVal":Z
    move-object/from16 v0, p0

    #@4
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "DcDefault msg="

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@16
    move-object/from16 v0, p1

    #@18
    iget v4, v0, Landroid/os/Message;->what:I

    #@1a
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1038
    const-string/jumbo v3, " RefCount="

    #@25
    .line 1037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 1038
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2d
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@32
    move-result v3

    #@33
    .line 1037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@3e
    .line 1040
    move-object/from16 v0, p1

    #@40
    iget v1, v0, Landroid/os/Message;->what:I

    #@42
    sparse-switch v1, :sswitch_data_0

    #@45
    .line 1177
    move-object/from16 v0, p0

    #@47
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@49
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, "DcDefaultState: shouldn\'t happen but ignore msg.what="

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 1178
    move-object/from16 v0, p0

    #@57
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@59
    move-object/from16 v0, p1

    #@5b
    iget v4, v0, Landroid/os/Message;->what:I

    #@5d
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 1177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@6c
    .line 1183
    :cond_0
    :goto_0
    return v16

    #@6d
    .line 1042
    :sswitch_0
    move-object/from16 v0, p0

    #@6f
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@71
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@74
    move-result-object v1

    #@75
    if-eqz v1, :cond_1

    #@77
    .line 1043
    move-object/from16 v0, p0

    #@79
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7b
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "Disconnecting to previous connection mAc="

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8b
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@9a
    .line 1044
    move-object/from16 v0, p0

    #@9c
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9e
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@a1
    move-result-object v1

    #@a2
    const v2, 0x11002

    #@a5
    .line 1045
    const/4 v3, 0x3

    #@a6
    .line 1044
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@ab
    goto :goto_0

    #@ac
    .line 1047
    :cond_1
    move-object/from16 v0, p0

    #@ae
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b0
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    #@b2
    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@b5
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set0(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@b8
    .line 1048
    move-object/from16 v0, p0

    #@ba
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@bc
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@bf
    move-result-object v1

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@c4
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@c7
    move-result-object v2

    #@c8
    move-object/from16 v0, p1

    #@ca
    iget-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@cc
    const/4 v4, 0x0

    #@cd
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@d0
    .line 1049
    move-object/from16 v0, p0

    #@d2
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@d4
    const-string/jumbo v2, "DcDefaultState: FULL_CONNECTION reply connected"

    #@d7
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@da
    .line 1050
    move-object/from16 v0, p0

    #@dc
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@de
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@e1
    move-result-object v1

    #@e2
    .line 1051
    move-object/from16 v0, p0

    #@e4
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e6
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get12(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@e9
    move-result v5

    #@ea
    const-string/jumbo v6, "hi"

    #@ed
    .line 1050
    const v3, 0x11002

    #@f0
    .line 1051
    const/4 v4, 0x0

    #@f1
    move-object/from16 v2, p1

    #@f3
    .line 1050
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 1057
    :sswitch_1
    move-object/from16 v0, p0

    #@fa
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@fc
    const-string/jumbo v2, "DcDefault: CMD_CHANNEL_DISCONNECTED before quiting call dump"

    #@ff
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@102
    .line 1058
    move-object/from16 v0, p0

    #@104
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@106
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap10(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@109
    .line 1061
    move-object/from16 v0, p0

    #@10b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@10d
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@110
    goto/16 :goto_0

    #@112
    .line 1065
    :sswitch_2
    move-object/from16 v0, p0

    #@114
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@116
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getIsInactive()Z

    #@119
    move-result v19

    #@11a
    .line 1066
    .local v19, "val":Z
    move-object/from16 v0, p0

    #@11c
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@11e
    new-instance v2, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v3, "REQ_IS_INACTIVE  isInactive="

    #@126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v2

    #@12a
    move/from16 v0, v19

    #@12c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v2

    #@130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v2

    #@134
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@137
    .line 1067
    move-object/from16 v0, p0

    #@139
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@13b
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@13e
    move-result-object v2

    #@13f
    if-eqz v19, :cond_2

    #@141
    const/4 v1, 0x1

    #@142
    :goto_1
    const v3, 0x41001

    #@145
    move-object/from16 v0, p1

    #@147
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@14a
    goto/16 :goto_0

    #@14c
    :cond_2
    const/4 v1, 0x0

    #@14d
    goto :goto_1

    #@14e
    .line 1071
    .end local v19    # "val":Z
    :sswitch_3
    move-object/from16 v0, p0

    #@150
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@152
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    #@155
    move-result v9

    #@156
    .line 1072
    .local v9, "cid":I
    move-object/from16 v0, p0

    #@158
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15a
    new-instance v2, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v3, "REQ_GET_CID  cid="

    #@162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v2

    #@166
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@169
    move-result-object v2

    #@16a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v2

    #@16e
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@171
    .line 1073
    move-object/from16 v0, p0

    #@173
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@175
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@178
    move-result-object v1

    #@179
    const v2, 0x41003

    #@17c
    move-object/from16 v0, p1

    #@17e
    invoke-virtual {v1, v0, v2, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@181
    goto/16 :goto_0

    #@183
    .line 1077
    .end local v9    # "cid":I
    :sswitch_4
    move-object/from16 v0, p0

    #@185
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@187
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@18a
    move-result-object v7

    #@18b
    .line 1078
    .local v7, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    #@18d
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@18f
    new-instance v2, Ljava/lang/StringBuilder;

    #@191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@194
    const-string/jumbo v3, "REQ_GET_APNSETTING  mApnSetting="

    #@197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v2

    #@19b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v2

    #@19f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v2

    #@1a3
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1a6
    .line 1079
    move-object/from16 v0, p0

    #@1a8
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1aa
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@1ad
    move-result-object v1

    #@1ae
    const v2, 0x41005

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    invoke-virtual {v1, v0, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    #@1b6
    goto/16 :goto_0

    #@1b8
    .line 1083
    .end local v7    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :sswitch_5
    move-object/from16 v0, p0

    #@1ba
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1bc
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkProperties()Landroid/net/LinkProperties;

    #@1bf
    move-result-object v12

    #@1c0
    .line 1084
    .local v12, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    #@1c2
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1c4
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    const-string/jumbo v3, "REQ_GET_LINK_PROPERTIES linkProperties"

    #@1cc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v2

    #@1d0
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v2

    #@1d4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v2

    #@1d8
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1db
    .line 1085
    move-object/from16 v0, p0

    #@1dd
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1df
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@1e2
    move-result-object v1

    #@1e3
    const v2, 0x41007

    #@1e6
    move-object/from16 v0, p1

    #@1e8
    invoke-virtual {v1, v0, v2, v12}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    #@1eb
    goto/16 :goto_0

    #@1ed
    .line 1089
    .end local v12    # "lp":Landroid/net/LinkProperties;
    :sswitch_6
    move-object/from16 v0, p1

    #@1ef
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f1
    check-cast v15, Landroid/net/ProxyInfo;

    #@1f3
    .line 1090
    .local v15, "proxy":Landroid/net/ProxyInfo;
    move-object/from16 v0, p0

    #@1f5
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1f7
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1fc
    const-string/jumbo v3, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY proxy="

    #@1ff
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v2

    #@203
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v2

    #@207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20a
    move-result-object v2

    #@20b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@20e
    .line 1091
    move-object/from16 v0, p0

    #@210
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@212
    invoke-virtual {v1, v15}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V

    #@215
    .line 1092
    move-object/from16 v0, p0

    #@217
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@219
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@21c
    move-result-object v1

    #@21d
    const v2, 0x41009

    #@220
    move-object/from16 v0, p1

    #@222
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    #@225
    .line 1093
    move-object/from16 v0, p0

    #@227
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@229
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@22c
    move-result-object v1

    #@22d
    if-eqz v1, :cond_0

    #@22f
    .line 1094
    move-object/from16 v0, p0

    #@231
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@233
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@236
    move-result-object v1

    #@237
    move-object/from16 v0, p0

    #@239
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@23b
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    #@23e
    move-result-object v2

    #@23f
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    #@242
    goto/16 :goto_0

    #@244
    .line 1099
    .end local v15    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_7
    move-object/from16 v0, p0

    #@246
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@248
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@24b
    move-result-object v13

    #@24c
    .line 1100
    .local v13, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    #@24e
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@250
    new-instance v2, Ljava/lang/StringBuilder;

    #@252
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@255
    const-string/jumbo v3, "REQ_GET_NETWORK_CAPABILITIES networkCapabilities"

    #@258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v2

    #@25c
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v2

    #@260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@263
    move-result-object v2

    #@264
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@267
    .line 1101
    move-object/from16 v0, p0

    #@269
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@26b
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@26e
    move-result-object v1

    #@26f
    const v2, 0x4100b

    #@272
    move-object/from16 v0, p1

    #@274
    invoke-virtual {v1, v0, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    #@277
    goto/16 :goto_0

    #@279
    .line 1105
    .end local v13    # "nc":Landroid/net/NetworkCapabilities;
    :sswitch_8
    move-object/from16 v0, p0

    #@27b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@27d
    const-string/jumbo v2, "DcDefaultState: msg.what=REQ_RESET"

    #@280
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@283
    .line 1106
    move-object/from16 v0, p0

    #@285
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@287
    move-object/from16 v0, p0

    #@289
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@28b
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@28e
    move-result-object v2

    #@28f
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@292
    goto/16 :goto_0

    #@294
    .line 1109
    :sswitch_9
    move-object/from16 v0, p0

    #@296
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@298
    const-string/jumbo v2, "DcDefaultState: msg.what=EVENT_CONNECT, fail not expected"

    #@29b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@29e
    .line 1110
    move-object/from16 v0, p1

    #@2a0
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a2
    check-cast v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2a4
    .line 1111
    .local v10, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    #@2a6
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2a8
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2aa
    const/4 v3, 0x0

    #@2ab
    invoke-static {v1, v10, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    #@2ae
    goto/16 :goto_0

    #@2b0
    .line 1116
    .end local v10    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_a
    move-object/from16 v0, p0

    #@2b2
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2b4
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b9
    const-string/jumbo v3, "DcDefaultState deferring msg.what=EVENT_DISCONNECT RefCount="

    #@2bc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v2

    #@2c0
    .line 1117
    move-object/from16 v0, p0

    #@2c2
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2c4
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@2c6
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@2c9
    move-result v3

    #@2ca
    .line 1116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2cd
    move-result-object v2

    #@2ce
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d1
    move-result-object v2

    #@2d2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@2d5
    .line 1119
    move-object/from16 v0, p0

    #@2d7
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2d9
    move-object/from16 v0, p1

    #@2db
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap9(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    #@2de
    goto/16 :goto_0

    #@2e0
    .line 1124
    :sswitch_b
    move-object/from16 v0, p0

    #@2e2
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2e4
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e9
    const-string/jumbo v3, "DcDefaultState deferring msg.what=EVENT_DISCONNECT_ALL RefCount="

    #@2ec
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v2

    #@2f0
    .line 1125
    move-object/from16 v0, p0

    #@2f2
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2f4
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@2f6
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@2f9
    move-result v3

    #@2fa
    .line 1124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2fd
    move-result-object v2

    #@2fe
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@301
    move-result-object v2

    #@302
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@305
    .line 1127
    move-object/from16 v0, p0

    #@307
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@309
    move-object/from16 v0, p1

    #@30b
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap9(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    #@30e
    goto/16 :goto_0

    #@310
    .line 1131
    :sswitch_c
    move-object/from16 v0, p0

    #@312
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@314
    const-string/jumbo v2, "DcDefaultState EVENT_TEAR_DOWN_NOW"

    #@317
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@31a
    .line 1132
    move-object/from16 v0, p0

    #@31c
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31e
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@321
    move-result-object v1

    #@322
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@324
    move-object/from16 v0, p0

    #@326
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@328
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@32a
    const/4 v3, 0x0

    #@32b
    const/4 v4, 0x0

    #@32c
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    #@32f
    goto/16 :goto_0

    #@331
    .line 1137
    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    #@333
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@336
    const-string/jumbo v2, "DcDefaultState ignore EVENT_LOST_CONNECTION tag="

    #@339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33c
    move-result-object v1

    #@33d
    .line 1138
    move-object/from16 v0, p1

    #@33f
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@341
    .line 1137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@344
    move-result-object v1

    #@345
    .line 1138
    const-string/jumbo v2, ":mTag="

    #@348
    .line 1137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v1

    #@34c
    .line 1138
    move-object/from16 v0, p0

    #@34e
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@350
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@352
    .line 1137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@355
    move-result-object v1

    #@356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@359
    move-result-object v17

    #@35a
    .line 1139
    .local v17, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    #@35c
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@35e
    move-object/from16 v0, v17

    #@360
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@363
    goto/16 :goto_0

    #@365
    .line 1143
    .end local v17    # "s":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p1

    #@367
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@369
    check-cast v8, Landroid/os/AsyncResult;

    #@36b
    .line 1144
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v11, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@36d
    check-cast v11, Landroid/util/Pair;

    #@36f
    .line 1145
    .local v11, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@371
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@373
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@375
    check-cast v1, Ljava/lang/Integer;

    #@377
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@37a
    move-result v1

    #@37b
    invoke-static {v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set3(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    #@37e
    .line 1146
    move-object/from16 v0, p0

    #@380
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@382
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@385
    move-result v2

    #@386
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@388
    check-cast v1, Ljava/lang/Integer;

    #@38a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@38d
    move-result v1

    #@38e
    if-eq v2, v1, :cond_3

    #@390
    .line 1147
    move-object/from16 v0, p0

    #@392
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@394
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@396
    check-cast v1, Ljava/lang/Integer;

    #@398
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@39b
    move-result v1

    #@39c
    invoke-static {v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap20(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    #@39f
    .line 1149
    :cond_3
    move-object/from16 v0, p0

    #@3a1
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3a3
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3a5
    check-cast v1, Ljava/lang/Integer;

    #@3a7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3aa
    move-result v1

    #@3ab
    invoke-static {v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set13(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    #@3ae
    .line 1151
    move-object/from16 v0, p0

    #@3b0
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3b2
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b7
    const-string/jumbo v3, "DcDefaultState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED drs="

    #@3ba
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bd
    move-result-object v2

    #@3be
    .line 1152
    move-object/from16 v0, p0

    #@3c0
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3c2
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@3c5
    move-result v3

    #@3c6
    .line 1151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c9
    move-result-object v2

    #@3ca
    .line 1153
    const-string/jumbo v3, " mRilRat="

    #@3cd
    .line 1151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v2

    #@3d1
    .line 1153
    move-object/from16 v0, p0

    #@3d3
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3d5
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@3d8
    move-result v3

    #@3d9
    .line 1151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3dc
    move-result-object v2

    #@3dd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e0
    move-result-object v2

    #@3e1
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@3e4
    .line 1155
    move-object/from16 v0, p0

    #@3e6
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3e8
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    #@3eb
    move-result-object v1

    #@3ec
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@3ef
    move-result-object v18

    #@3f0
    .line 1156
    .local v18, "ss":Landroid/telephony/ServiceState;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    #@3f3
    move-result v14

    #@3f4
    .line 1157
    .local v14, "networkType":I
    move-object/from16 v0, p0

    #@3f6
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3f8
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@3fb
    move-result-object v1

    #@3fc
    .line 1158
    invoke-static {v14}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@3ff
    move-result-object v2

    #@400
    .line 1157
    invoke-virtual {v1, v14, v2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    #@403
    .line 1159
    move-object/from16 v0, p0

    #@405
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@407
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@40a
    move-result-object v1

    #@40b
    if-eqz v1, :cond_0

    #@40d
    .line 1160
    move-object/from16 v0, p0

    #@40f
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@411
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    #@414
    .line 1161
    move-object/from16 v0, p0

    #@416
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@418
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@41b
    move-result-object v1

    #@41c
    move-object/from16 v0, p0

    #@41e
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@420
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    #@423
    move-result-object v2

    #@424
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    #@427
    .line 1162
    move-object/from16 v0, p0

    #@429
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@42b
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@42e
    move-result-object v1

    #@42f
    move-object/from16 v0, p0

    #@431
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@433
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@436
    move-result-object v2

    #@437
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@43a
    .line 1163
    move-object/from16 v0, p0

    #@43c
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@43e
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@441
    move-result-object v1

    #@442
    move-object/from16 v0, p0

    #@444
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@446
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    #@449
    move-result-object v2

    #@44a
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    #@44d
    goto/16 :goto_0

    #@44f
    .line 1168
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "networkType":I
    .end local v18    # "ss":Landroid/telephony/ServiceState;
    :sswitch_f
    move-object/from16 v0, p0

    #@451
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@453
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@456
    move-result-object v1

    #@457
    const/4 v2, 0x1

    #@458
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@45b
    goto/16 :goto_0

    #@45d
    .line 1172
    :sswitch_10
    move-object/from16 v0, p0

    #@45f
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@461
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@464
    move-result-object v1

    #@465
    const/4 v2, 0x0

    #@466
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@469
    goto/16 :goto_0

    #@46b
    .line 1040
    nop

    #@46c
    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x40000 -> :sswitch_9
        0x40004 -> :sswitch_a
        0x40006 -> :sswitch_b
        0x40008 -> :sswitch_c
        0x40009 -> :sswitch_d
        0x4000b -> :sswitch_e
        0x4000c -> :sswitch_f
        0x4000d -> :sswitch_10
        0x41000 -> :sswitch_2
        0x41002 -> :sswitch_3
        0x41004 -> :sswitch_4
        0x41006 -> :sswitch_5
        0x41008 -> :sswitch_6
        0x4100a -> :sswitch_7
        0x4100c -> :sswitch_8
    .end sparse-switch
.end method
