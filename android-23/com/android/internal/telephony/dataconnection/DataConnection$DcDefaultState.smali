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
    .line 1061
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
    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3
    const-string/jumbo v1, "DcDefaultState: enter"

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@9
    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@15
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@18
    move-result-object v1

    #@19
    .line 1068
    const v2, 0x4000b

    #@1c
    .line 1067
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1f
    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@21
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@2e
    move-result-object v1

    #@2f
    .line 1071
    const v2, 0x4000c

    #@32
    .line 1070
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@35
    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@37
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3e
    move-result-object v0

    #@3f
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@41
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@44
    move-result-object v1

    #@45
    .line 1073
    const v2, 0x4000d

    #@48
    .line 1072
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4b
    .line 1076
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
    .line 1063
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3
    const-string/jumbo v1, "DcDefaultState: exit"

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@9
    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

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
    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1e
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

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
    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

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
    .line 1089
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
    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4f
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@52
    move-result-object v0

    #@53
    if-eqz v0, :cond_0

    #@55
    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@57
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnected()V

    #@5e
    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@60
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set0(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@63
    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@65
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->dispose()V

    #@6c
    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@6e
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set6(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@71
    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@73
    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@75
    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@77
    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    #@79
    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7b
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set8(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@7e
    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@80
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@83
    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@85
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneBase;

    #@88
    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8a
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    #@8d
    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8f
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set10(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@92
    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@94
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set15(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@99
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set4(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@9c
    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9e
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set7(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@a1
    .line 1079
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1111
    const/16 v16, 0x1

    #@2
    .line 1114
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
    .line 1115
    const-string/jumbo v3, " RefCount="

    #@25
    .line 1114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 1115
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2d
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@32
    move-result v3

    #@33
    .line 1114
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
    .line 1117
    move-object/from16 v0, p1

    #@40
    iget v1, v0, Landroid/os/Message;->what:I

    #@42
    sparse-switch v1, :sswitch_data_0

    #@45
    .line 1260
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
    .line 1261
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
    .line 1260
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
    .line 1266
    :cond_0
    :goto_0
    return v16

    #@6d
    .line 1119
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
    .line 1120
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
    .line 1121
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
    .line 1122
    const/4 v3, 0x3

    #@a6
    .line 1121
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@ab
    goto :goto_0

    #@ac
    .line 1124
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
    .line 1125
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
    .line 1126
    move-object/from16 v0, p0

    #@d2
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@d4
    const-string/jumbo v2, "DcDefaultState: FULL_CONNECTION reply connected"

    #@d7
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@da
    .line 1127
    move-object/from16 v0, p0

    #@dc
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@de
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@e1
    move-result-object v1

    #@e2
    .line 1128
    move-object/from16 v0, p0

    #@e4
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e6
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@e9
    move-result v5

    #@ea
    const-string/jumbo v6, "hi"

    #@ed
    .line 1127
    const v3, 0x11002

    #@f0
    .line 1128
    const/4 v4, 0x0

    #@f1
    move-object/from16 v2, p1

    #@f3
    .line 1127
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 1134
    :sswitch_1
    move-object/from16 v0, p0

    #@fa
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@fc
    const-string/jumbo v2, "DcDefault: CMD_CHANNEL_DISCONNECTED before quiting call dump"

    #@ff
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@102
    .line 1135
    move-object/from16 v0, p0

    #@104
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@106
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap7(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@109
    .line 1138
    move-object/from16 v0, p0

    #@10b
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@10d
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@110
    goto/16 :goto_0

    #@112
    .line 1142
    :sswitch_2
    move-object/from16 v0, p0

    #@114
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@116
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getIsInactive()Z

    #@119
    move-result v19

    #@11a
    .line 1143
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
    .line 1144
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
    .line 1148
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
    .line 1149
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
    .line 1150
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
    .line 1154
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
    .line 1155
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
    .line 1156
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
    .line 1160
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
    .line 1161
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
    .line 1162
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
    .line 1166
    .end local v12    # "lp":Landroid/net/LinkProperties;
    :sswitch_6
    move-object/from16 v0, p1

    #@1ef
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f1
    check-cast v15, Landroid/net/ProxyInfo;

    #@1f3
    .line 1167
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
    .line 1168
    move-object/from16 v0, p0

    #@210
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@212
    invoke-virtual {v1, v15}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V

    #@215
    .line 1169
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
    goto/16 :goto_0

    #@227
    .line 1173
    .end local v15    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_7
    move-object/from16 v0, p0

    #@229
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@22b
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@22e
    move-result-object v13

    #@22f
    .line 1174
    .local v13, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    #@231
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@233
    new-instance v2, Ljava/lang/StringBuilder;

    #@235
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@238
    const-string/jumbo v3, "REQ_GET_NETWORK_CAPABILITIES networkCapabilities"

    #@23b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v2

    #@23f
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v2

    #@243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@246
    move-result-object v2

    #@247
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@24a
    .line 1175
    move-object/from16 v0, p0

    #@24c
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@24e
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    #@251
    move-result-object v1

    #@252
    const v2, 0x4100b

    #@255
    move-object/from16 v0, p1

    #@257
    invoke-virtual {v1, v0, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    #@25a
    goto/16 :goto_0

    #@25c
    .line 1179
    .end local v13    # "nc":Landroid/net/NetworkCapabilities;
    :sswitch_8
    move-object/from16 v0, p0

    #@25e
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@260
    const-string/jumbo v2, "DcDefaultState: msg.what=REQ_RESET"

    #@263
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@266
    .line 1180
    move-object/from16 v0, p0

    #@268
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@26a
    move-object/from16 v0, p0

    #@26c
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@26e
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@271
    move-result-object v2

    #@272
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@275
    goto/16 :goto_0

    #@277
    .line 1183
    :sswitch_9
    move-object/from16 v0, p0

    #@279
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@27b
    const-string/jumbo v2, "DcDefaultState: msg.what=EVENT_CONNECT, fail not expected"

    #@27e
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@281
    .line 1184
    move-object/from16 v0, p1

    #@283
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@285
    check-cast v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@287
    .line 1185
    .local v10, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    #@289
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@28b
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@28d
    const/4 v3, 0x0

    #@28e
    invoke-static {v1, v10, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    #@291
    goto/16 :goto_0

    #@293
    .line 1190
    .end local v10    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_a
    move-object/from16 v0, p0

    #@295
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@297
    new-instance v2, Ljava/lang/StringBuilder;

    #@299
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29c
    const-string/jumbo v3, "DcDefaultState deferring msg.what=EVENT_DISCONNECT RefCount="

    #@29f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v2

    #@2a3
    .line 1191
    move-object/from16 v0, p0

    #@2a5
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2a7
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@2a9
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@2ac
    move-result v3

    #@2ad
    .line 1190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b0
    move-result-object v2

    #@2b1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b4
    move-result-object v2

    #@2b5
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@2b8
    .line 1193
    move-object/from16 v0, p0

    #@2ba
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2bc
    move-object/from16 v0, p1

    #@2be
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap6(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    #@2c1
    goto/16 :goto_0

    #@2c3
    .line 1198
    :sswitch_b
    move-object/from16 v0, p0

    #@2c5
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2c7
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2cc
    const-string/jumbo v3, "DcDefaultState deferring msg.what=EVENT_DISCONNECT_ALL RefCount="

    #@2cf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d2
    move-result-object v2

    #@2d3
    .line 1199
    move-object/from16 v0, p0

    #@2d5
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2d7
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@2d9
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@2dc
    move-result v3

    #@2dd
    .line 1198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v2

    #@2e1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e4
    move-result-object v2

    #@2e5
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@2e8
    .line 1201
    move-object/from16 v0, p0

    #@2ea
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2ec
    move-object/from16 v0, p1

    #@2ee
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap6(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    #@2f1
    goto/16 :goto_0

    #@2f3
    .line 1205
    :sswitch_c
    move-object/from16 v0, p0

    #@2f5
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2f7
    const-string/jumbo v2, "DcDefaultState EVENT_TEAR_DOWN_NOW"

    #@2fa
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@2fd
    .line 1206
    move-object/from16 v0, p0

    #@2ff
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@301
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@304
    move-result-object v1

    #@305
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@307
    move-object/from16 v0, p0

    #@309
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@30b
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@30d
    const/4 v3, 0x0

    #@30e
    const/4 v4, 0x0

    #@30f
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    #@312
    goto/16 :goto_0

    #@314
    .line 1211
    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    #@316
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@319
    const-string/jumbo v2, "DcDefaultState ignore EVENT_LOST_CONNECTION tag="

    #@31c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31f
    move-result-object v1

    #@320
    .line 1212
    move-object/from16 v0, p1

    #@322
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@324
    .line 1211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@327
    move-result-object v1

    #@328
    .line 1212
    const-string/jumbo v2, ":mTag="

    #@32b
    .line 1211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32e
    move-result-object v1

    #@32f
    .line 1212
    move-object/from16 v0, p0

    #@331
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@333
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@335
    .line 1211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@338
    move-result-object v1

    #@339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33c
    move-result-object v17

    #@33d
    .line 1213
    .local v17, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    #@33f
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@341
    move-object/from16 v0, v17

    #@343
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@346
    goto/16 :goto_0

    #@348
    .line 1219
    .end local v17    # "s":Ljava/lang/String;
    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    #@34a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34d
    const-string/jumbo v2, "DcDefaultState ignore EVENT_RETRY_CONNECTION tag="

    #@350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@353
    move-result-object v1

    #@354
    .line 1220
    move-object/from16 v0, p1

    #@356
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@358
    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35b
    move-result-object v1

    #@35c
    .line 1220
    const-string/jumbo v2, ":mTag="

    #@35f
    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@362
    move-result-object v1

    #@363
    .line 1220
    move-object/from16 v0, p0

    #@365
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@367
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@369
    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36c
    move-result-object v1

    #@36d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@370
    move-result-object v17

    #@371
    .line 1221
    .restart local v17    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    #@373
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@375
    move-object/from16 v0, v17

    #@377
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@37a
    goto/16 :goto_0

    #@37c
    .line 1226
    .end local v17    # "s":Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p1

    #@37e
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@380
    check-cast v8, Landroid/os/AsyncResult;

    #@382
    .line 1227
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v11, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@384
    check-cast v11, Landroid/util/Pair;

    #@386
    .line 1228
    .local v11, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@388
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@38a
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@38c
    check-cast v1, Ljava/lang/Integer;

    #@38e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@391
    move-result v1

    #@392
    invoke-static {v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set3(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    #@395
    .line 1229
    move-object/from16 v0, p0

    #@397
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@399
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@39c
    move-result v2

    #@39d
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@39f
    check-cast v1, Ljava/lang/Integer;

    #@3a1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3a4
    move-result v1

    #@3a5
    if-eq v2, v1, :cond_3

    #@3a7
    .line 1230
    move-object/from16 v0, p0

    #@3a9
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3ab
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3ad
    check-cast v1, Ljava/lang/Integer;

    #@3af
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3b2
    move-result v1

    #@3b3
    invoke-static {v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap18(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    #@3b6
    .line 1232
    :cond_3
    move-object/from16 v0, p0

    #@3b8
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3ba
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3bc
    check-cast v1, Ljava/lang/Integer;

    #@3be
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3c1
    move-result v1

    #@3c2
    invoke-static {v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set14(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    #@3c5
    .line 1234
    move-object/from16 v0, p0

    #@3c7
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3c9
    new-instance v2, Ljava/lang/StringBuilder;

    #@3cb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3ce
    const-string/jumbo v3, "DcDefaultState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED drs="

    #@3d1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v2

    #@3d5
    .line 1235
    move-object/from16 v0, p0

    #@3d7
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3d9
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@3dc
    move-result v3

    #@3dd
    .line 1234
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e0
    move-result-object v2

    #@3e1
    .line 1236
    const-string/jumbo v3, " mRilRat="

    #@3e4
    .line 1234
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e7
    move-result-object v2

    #@3e8
    .line 1236
    move-object/from16 v0, p0

    #@3ea
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3ec
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@3ef
    move-result v3

    #@3f0
    .line 1234
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f3
    move-result-object v2

    #@3f4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f7
    move-result-object v2

    #@3f8
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@3fb
    .line 1238
    move-object/from16 v0, p0

    #@3fd
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3ff
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@402
    move-result-object v1

    #@403
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@406
    move-result-object v18

    #@407
    .line 1239
    .local v18, "ss":Landroid/telephony/ServiceState;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    #@40a
    move-result v14

    #@40b
    .line 1240
    .local v14, "networkType":I
    move-object/from16 v0, p0

    #@40d
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@40f
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@412
    move-result-object v1

    #@413
    .line 1241
    invoke-static {v14}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@416
    move-result-object v2

    #@417
    .line 1240
    invoke-virtual {v1, v14, v2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    #@41a
    .line 1242
    move-object/from16 v0, p0

    #@41c
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@41e
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@421
    move-result-object v1

    #@422
    if-eqz v1, :cond_0

    #@424
    .line 1243
    move-object/from16 v0, p0

    #@426
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@428
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    #@42b
    .line 1244
    move-object/from16 v0, p0

    #@42d
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@42f
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@432
    move-result-object v1

    #@433
    move-object/from16 v0, p0

    #@435
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@437
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    #@43a
    move-result-object v2

    #@43b
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    #@43e
    .line 1245
    move-object/from16 v0, p0

    #@440
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@442
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@445
    move-result-object v1

    #@446
    move-object/from16 v0, p0

    #@448
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@44a
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@44d
    move-result-object v2

    #@44e
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@451
    .line 1246
    move-object/from16 v0, p0

    #@453
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@455
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@458
    move-result-object v1

    #@459
    move-object/from16 v0, p0

    #@45b
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@45d
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    #@460
    move-result-object v2

    #@461
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    #@464
    goto/16 :goto_0

    #@466
    .line 1251
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "networkType":I
    .end local v18    # "ss":Landroid/telephony/ServiceState;
    :sswitch_10
    move-object/from16 v0, p0

    #@468
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@46a
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@46d
    move-result-object v1

    #@46e
    const/4 v2, 0x1

    #@46f
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@472
    goto/16 :goto_0

    #@474
    .line 1255
    :sswitch_11
    move-object/from16 v0, p0

    #@476
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@478
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@47b
    move-result-object v1

    #@47c
    const/4 v2, 0x0

    #@47d
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@480
    goto/16 :goto_0

    #@482
    .line 1117
    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x40000 -> :sswitch_9
        0x40004 -> :sswitch_a
        0x40006 -> :sswitch_b
        0x40008 -> :sswitch_c
        0x40009 -> :sswitch_d
        0x4000a -> :sswitch_e
        0x4000b -> :sswitch_f
        0x4000c -> :sswitch_10
        0x4000d -> :sswitch_11
        0x41000 -> :sswitch_2
        0x41002 -> :sswitch_3
        0x41004 -> :sswitch_4
        0x41006 -> :sswitch_5
        0x41008 -> :sswitch_6
        0x4100a -> :sswitch_7
        0x4100c -> :sswitch_8
    .end sparse-switch
.end method
