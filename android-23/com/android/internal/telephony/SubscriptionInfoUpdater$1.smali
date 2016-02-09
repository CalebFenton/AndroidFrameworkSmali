.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@0
    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 170
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@3
    const-string/jumbo v5, "[Receiver]+"

    #@6
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@9
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 172
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "Action: "

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@26
    .line 174
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    #@29
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-nez v4, :cond_0

    #@2f
    .line 175
    const-string/jumbo v4, "android.intent.action.internal_sim_state_changed"

    #@32
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 179
    :cond_0
    const-string/jumbo v4, "phone"

    #@3b
    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@3e
    move-result v3

    #@3f
    .line 181
    .local v3, "slotId":I
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "slotId: "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@58
    .line 182
    if-ne v3, v7, :cond_2

    #@5a
    .line 183
    return-void

    #@5b
    .line 176
    .end local v3    # "slotId":I
    :cond_1
    return-void

    #@5c
    .line 186
    .restart local v3    # "slotId":I
    :cond_2
    const-string/jumbo v4, "ss"

    #@5f
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    .line 187
    .local v2, "simStatus":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@65
    new-instance v5, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v6, "simStatus: "

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@7c
    .line 189
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    #@7f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_7

    #@85
    .line 190
    const-string/jumbo v4, "ABSENT"

    #@88
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_4

    #@8e
    .line 191
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@90
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@92
    const/4 v6, 0x4

    #@93
    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@9a
    .line 210
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@9c
    const-string/jumbo v5, "[Receiver]-"

    #@9f
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@a2
    .line 169
    return-void

    #@a3
    .line 192
    :cond_4
    const-string/jumbo v4, "UNKNOWN"

    #@a6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result v4

    #@aa
    if-eqz v4, :cond_5

    #@ac
    .line 193
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@ae
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@b0
    const/4 v6, 0x7

    #@b1
    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@b4
    move-result-object v5

    #@b5
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@b8
    goto :goto_0

    #@b9
    .line 194
    :cond_5
    const-string/jumbo v4, "CARD_IO_ERROR"

    #@bc
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v4

    #@c0
    if-eqz v4, :cond_6

    #@c2
    .line 195
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@c4
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@c6
    const/4 v6, 0x6

    #@c7
    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@ce
    goto :goto_0

    #@cf
    .line 197
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@d1
    new-instance v5, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v6, "Ignoring simStatus: "

    #@d9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v5

    #@dd
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v5

    #@e1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v5

    #@e5
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@e8
    goto :goto_0

    #@e9
    .line 199
    :cond_7
    const-string/jumbo v4, "android.intent.action.internal_sim_state_changed"

    #@ec
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v4

    #@f0
    if-eqz v4, :cond_3

    #@f2
    .line 200
    const-string/jumbo v4, "LOCKED"

    #@f5
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v4

    #@f9
    if-eqz v4, :cond_8

    #@fb
    .line 202
    const-string/jumbo v4, "reason"

    #@fe
    .line 201
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@101
    move-result-object v1

    #@102
    .line 203
    .local v1, "reason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@104
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@106
    const/4 v6, 0x5

    #@107
    invoke-virtual {v5, v6, v3, v7, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@10a
    move-result-object v5

    #@10b
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@10e
    goto :goto_0

    #@10f
    .line 204
    .end local v1    # "reason":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "LOADED"

    #@112
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@115
    move-result v4

    #@116
    if-eqz v4, :cond_9

    #@118
    .line 205
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@11a
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@11c
    const/4 v6, 0x3

    #@11d
    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@120
    move-result-object v5

    #@121
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@124
    goto/16 :goto_0

    #@126
    .line 207
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@128
    new-instance v5, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v6, "Ignoring simStatus: "

    #@130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v5

    #@134
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v5

    #@138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v5

    #@13c
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@13f
    goto/16 :goto_0
.end method
