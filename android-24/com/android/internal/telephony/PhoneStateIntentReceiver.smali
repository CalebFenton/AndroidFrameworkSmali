.class public final Lcom/android/internal/telephony/PhoneStateIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateIntentReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStatIntentReceiver"

.field private static final NOTIF_PHONE:I = 0x1

.field private static final NOTIF_SERVICE:I = 0x2

.field private static final NOTIF_SIGNAL:I = 0x4


# instance fields
.field private mAsuEventWhat:I

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPhoneStateEventWhat:I

.field mServiceState:Landroid/telephony/ServiceState;

.field private mServiceStateEventWhat:I

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTarget:Landroid/os/Handler;

.field private mWants:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 47
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7
    .line 48
    new-instance v0, Landroid/telephony/ServiceState;

    #@9
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    #@e
    .line 49
    new-instance v0, Landroid/telephony/SignalStrength;

    #@10
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@15
    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    #@17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    #@1c
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>()V

    #@3
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setContext(Landroid/content/Context;)V

    #@6
    .line 67
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setTarget(Landroid/os/Handler;)V

    #@9
    .line 64
    return-void
.end method


# virtual methods
.method public getNotifyPhoneCallState()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    iget v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getNotifyServiceState()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 140
    iget v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getNotifySignalStrength()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 150
    iget v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    #@0
    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    .line 81
    const-string/jumbo v1, "client must call notifyPhoneCallState(int)"

    #@b
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@11
    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    #@0
    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-nez v0, :cond_0

    #@6
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    .line 89
    const-string/jumbo v1, "client must call notifyServiceState(int)"

    #@b
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    #@11
    return-object v0
.end method

.method public getSignalStrengthDbm()I
    .locals 2

    #@0
    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-nez v0, :cond_0

    #@6
    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    .line 118
    const-string/jumbo v1, "client must call notifySignalStrength(int)"

    #@b
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@11
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public getSignalStrengthLevelAsu()I
    .locals 2

    #@0
    .prologue
    .line 101
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-nez v0, :cond_0

    #@6
    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    .line 103
    const-string/jumbo v1, "client must call notifySignalStrength(int)"

    #@b
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@11
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public notifyPhoneCallState(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    #@0
    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@2
    or-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@6
    .line 125
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    #@8
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    #@a
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10
    .line 123
    return-void
.end method

.method public notifyServiceState(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    #@0
    .prologue
    .line 134
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@2
    or-int/lit8 v0, v0, 0x2

    #@4
    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@6
    .line 135
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    #@8
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    #@a
    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10
    .line 133
    return-void
.end method

.method public notifySignalStrength(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    #@0
    .prologue
    .line 144
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@2
    or-int/lit8 v0, v0, 0x4

    #@4
    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    #@6
    .line 145
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    #@8
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    #@a
    const-string/jumbo v1, "android.intent.action.SIG_STR"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10
    .line 143
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.intent.action.SIG_STR"

    #@7
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@10
    move-result-object v4

    #@11
    invoke-static {v4}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    #@14
    move-result-object v4

    #@15
    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@17
    .line 169
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@19
    if-eqz v4, :cond_0

    #@1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifySignalStrength()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 170
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@23
    iget v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    #@25
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@28
    move-result-object v2

    #@29
    .line 171
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@2b
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@2e
    .line 162
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 173
    :cond_1
    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    #@32
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_2

    #@38
    .line 176
    const-string/jumbo v4, "state"

    #@3b
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 178
    .local v3, "phoneState":Ljava/lang/String;
    const-class v4, Lcom/android/internal/telephony/PhoneConstants$State;

    #@41
    .line 177
    invoke-static {v4, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Lcom/android/internal/telephony/PhoneConstants$State;

    #@47
    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@49
    .line 180
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@4b
    if-eqz v4, :cond_0

    #@4d
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyPhoneCallState()Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_0

    #@53
    .line 181
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@55
    .line 182
    iget v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    #@57
    .line 181
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@5a
    move-result-object v2

    #@5b
    .line 183
    .restart local v2    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@5d
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    goto :goto_0

    #@61
    .line 194
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "phoneState":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@62
    .line 195
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "PhoneStatIntentReceiver"

    #@65
    new-instance v5, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v6, "[PhoneStateIntentRecv] caught "

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@7f
    goto :goto_0

    #@80
    .line 185
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "android.intent.action.SERVICE_STATE"

    #@83
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v4

    #@87
    if-eqz v4, :cond_0

    #@89
    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@8c
    move-result-object v4

    #@8d
    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    #@90
    move-result-object v4

    #@91
    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    #@93
    .line 188
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@95
    if-eqz v4, :cond_0

    #@97
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyServiceState()Z

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_0

    #@9d
    .line 189
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@9f
    .line 190
    iget v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    #@a1
    .line 189
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@a4
    move-result-object v2

    #@a5
    .line 191
    .restart local v2    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@a7
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@aa
    goto :goto_0
.end method

.method public registerIntent()V
    .locals 2

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    #@4
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@7
    .line 153
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    #@0
    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    #@2
    .line 70
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    #@2
    .line 74
    return-void
.end method

.method public unregisterIntent()V
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@5
    .line 157
    return-void
.end method
