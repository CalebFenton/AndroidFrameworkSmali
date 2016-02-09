.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    const-string/jumbo v6, "com.android.ims.IMS_INCOMING_CALL"

    #@7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_6

    #@d
    .line 90
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@f
    const-string/jumbo v6, "onReceive : incoming call intent"

    #@12
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@15
    .line 92
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@17
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    #@1a
    move-result-object v5

    #@1b
    if-nez v5, :cond_0

    #@1d
    return-void

    #@1e
    .line 94
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@20
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    #@23
    move-result v5

    #@24
    if-gez v5, :cond_1

    #@26
    return-void

    #@27
    .line 98
    :cond_1
    :try_start_0
    const-string/jumbo v5, "android:ussd"

    #@2a
    const/4 v6, 0x0

    #@2b
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@2e
    move-result v4

    #@2f
    .line 99
    .local v4, "isUssd":Z
    if-eqz v4, :cond_3

    #@31
    .line 100
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@33
    const-string/jumbo v6, "onReceive : USSD"

    #@36
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@39
    .line 101
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3b
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3d
    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    #@40
    move-result-object v6

    #@41
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@43
    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    #@46
    move-result v7

    #@47
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@49
    invoke-static {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v6, v7, p2, v8}, Lcom/android/ims/ImsManager;->takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    #@50
    move-result-object v6

    #@51
    invoke-static {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@54
    .line 102
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@59
    move-result-object v5

    #@5a
    if-eqz v5, :cond_2

    #@5c
    .line 103
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5e
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@61
    move-result-object v5

    #@62
    const/4 v6, 0x2

    #@63
    invoke-virtual {v5, v6}, Lcom/android/ims/ImsCall;->accept(I)V

    #@66
    .line 105
    :cond_2
    return-void

    #@67
    .line 109
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@69
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    #@6c
    move-result-object v5

    #@6d
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6f
    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    #@72
    move-result v6

    #@73
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@75
    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v5, v6, p2, v7}, Lcom/android/ims/ImsManager;->takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    #@7c
    move-result-object v3

    #@7d
    .line 110
    .local v3, "imsCall":Lcom/android/ims/ImsCall;
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@7f
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@81
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@83
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    #@86
    move-result-object v5

    #@87
    .line 111
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@89
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@8b
    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8d
    .line 110
    invoke-direct {v0, v5, v3, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@90
    .line 112
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@92
    invoke-static {v5, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@95
    .line 114
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@97
    invoke-static {v5, v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    #@9a
    .line 116
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@9c
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@9e
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@a1
    move-result-object v5

    #@a2
    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@a4
    if-ne v5, v6, :cond_4

    #@a6
    .line 117
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a8
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@aa
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@ad
    move-result-object v5

    #@ae
    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@b0
    if-eq v5, v6, :cond_5

    #@b2
    .line 118
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@b4
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    #@b7
    .line 121
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@b9
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@bb
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    #@be
    .line 122
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@c0
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@c2
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyIncomingRing()V

    #@c5
    .line 124
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@c7
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@ca
    .line 125
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@cc
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@ce
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@d1
    .line 88
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v4    # "isUssd":Z
    :cond_6
    :goto_0
    return-void

    #@d2
    .line 126
    :catch_0
    move-exception v2

    #@d3
    .line 127
    .local v2, "e":Lcom/android/ims/ImsException;
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@d5
    new-instance v6, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v7, "onReceive : exception "

    #@dd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v6

    #@e1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v6

    #@e5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v6

    #@e9
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@ec
    goto :goto_0

    #@ed
    .line 128
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :catch_1
    move-exception v1

    #@ee
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
