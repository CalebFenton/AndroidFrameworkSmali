.class public Lcom/android/internal/telephony/CellBroadcastHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CellBroadcastHandler.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 37
    const-string/jumbo v0, "CellBroadcastHandler"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    #@6
    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "debugTag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    #@3
    .line 40
    return-void
.end method

.method public static makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 50
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastHandler;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    #@5
    .line 51
    .local v0, "handler":Lcom/android/internal/telephony/CellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->start()V

    #@8
    .line 52
    return-object v0
.end method


# virtual methods
.method protected handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V
    .locals 10
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 82
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Dispatching emergency SMS CB, SmsCbMessage is: "

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    #@1e
    .line 84
    new-instance v1, Landroid/content/Intent;

    #@20
    const-string/jumbo v0, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    #@23
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@26
    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    #@29
    .line 86
    .local v3, "receiverPermission":Ljava/lang/String;
    const/16 v4, 0x11

    #@2b
    .line 93
    .local v4, "appOp":I
    :goto_0
    const-string/jumbo v0, "message"

    #@2e
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@31
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@33
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@36
    move-result v0

    #@37
    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@3a
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    #@3c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3e
    .line 96
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    #@40
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    #@43
    move-result-object v6

    #@44
    const/4 v7, -0x1

    #@45
    move-object v9, v8

    #@46
    .line 95
    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@49
    .line 77
    return-void

    #@4a
    .line 88
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "receiverPermission":Ljava/lang/String;
    .end local v4    # "appOp":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v2, "Dispatching SMS CB, SmsCbMessage is: "

    #@52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    #@61
    .line 89
    new-instance v1, Landroid/content/Intent;

    #@63
    const-string/jumbo v0, "android.provider.Telephony.SMS_CB_RECEIVED"

    #@66
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@69
    .line 90
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.permission.RECEIVE_SMS"

    #@6c
    .line 91
    .restart local v3    # "receiverPermission":Ljava/lang/String;
    const/16 v4, 0x10

    #@6e
    .restart local v4    # "appOp":I
    goto :goto_0
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Landroid/telephony/SmsCbMessage;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/telephony/SmsCbMessage;

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    #@d
    .line 66
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "handleMessage got object of type: "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    #@30
    .line 69
    const/4 v0, 0x0

    #@31
    return v0
.end method
