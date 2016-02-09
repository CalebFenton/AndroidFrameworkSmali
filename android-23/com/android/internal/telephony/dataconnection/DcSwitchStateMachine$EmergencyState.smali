.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@3
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    #@f
    .line 154
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isEmergency()Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "EmergencyState: isEmergency() is false. deferMessage msg.what=0x"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 156
    iget v3, p1, Landroid/os/Message;->what:I

    #@27
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    #@36
    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@38
    invoke-static {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    #@3b
    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@3d
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@3f
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get8(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    #@46
    .line 159
    return v4

    #@47
    .line 162
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    #@49
    packed-switch v1, :pswitch_data_0

    #@4c
    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@4e
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v3, "EmergencyState: deferMessage msg.what=0x"

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    iget v3, p1, Landroid/os/Message;->what:I

    #@5c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@6b
    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@6d
    invoke-static {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    #@70
    .line 180
    :goto_0
    return v4

    #@71
    .line 164
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@73
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@75
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get8(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    #@78
    move-result-object v2

    #@79
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    #@7c
    goto :goto_0

    #@7d
    .line 169
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@7f
    const-string/jumbo v2, "EmergencyState: ignoring EVENT_EMERGENCY_CALL_STARTED"

    #@82
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    #@85
    goto :goto_0

    #@86
    .line 162
    :pswitch_data_0
    .packed-switch 0x44009
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
