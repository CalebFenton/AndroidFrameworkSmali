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
    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 180
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@3
    const-string/jumbo v8, "[Receiver]+"

    #@6
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@9
    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 182
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@f
    new-instance v8, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v9, "Action: "

    #@17
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@26
    .line 184
    const-string/jumbo v7, "android.intent.action.USER_UNLOCKED"

    #@29
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_1

    #@2f
    .line 186
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@31
    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/Map;

    #@34
    move-result-object v7

    #@35
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@38
    move-result-object v7

    #@39
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v2

    #@3d
    .line 187
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_0

    #@43
    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Ljava/util/Map$Entry;

    #@49
    .line 189
    .local v3, "pair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Landroid/content/Intent;

    #@4f
    .line 190
    .local v1, "i":Landroid/content/Intent;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@52
    .line 191
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@54
    new-instance v8, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v9, "Broadcasting intent ACTION_SIM_STATE_CHANGED for mCardIndex: "

    #@5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    .line 192
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@63
    move-result-object v9

    #@64
    .line 191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@6f
    .line 193
    const-string/jumbo v7, "android.permission.READ_PHONE_STATE"

    #@72
    invoke-static {v1, v7, v10}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@75
    goto :goto_0

    #@76
    .line 196
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "pair":Ljava/util/Map$Entry;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@78
    const/4 v8, 0x0

    #@79
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/util/Map;)Ljava/util/Map;

    #@7c
    .line 197
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@7e
    const-string/jumbo v8, "[Receiver]-"

    #@81
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@84
    .line 198
    return-void

    #@85
    .line 201
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    #@88
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v7

    #@8c
    if-nez v7, :cond_2

    #@8e
    .line 202
    const-string/jumbo v7, "android.intent.action.internal_sim_state_changed"

    #@91
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v7

    #@95
    if-eqz v7, :cond_3

    #@97
    .line 206
    :cond_2
    const-string/jumbo v7, "phone"

    #@9a
    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9d
    move-result v6

    #@9e
    .line 208
    .local v6, "slotId":I
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@a0
    new-instance v8, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v9, "slotId: "

    #@a8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v8

    #@b0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v8

    #@b4
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@b7
    .line 209
    if-ne v6, v10, :cond_4

    #@b9
    .line 210
    return-void

    #@ba
    .line 203
    .end local v6    # "slotId":I
    :cond_3
    return-void

    #@bb
    .line 213
    .restart local v6    # "slotId":I
    :cond_4
    const-string/jumbo v7, "ss"

    #@be
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    .line 214
    .local v5, "simStatus":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@c4
    new-instance v8, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v9, "simStatus: "

    #@cc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v8

    #@d0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v8

    #@d4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v8

    #@d8
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@db
    .line 216
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    #@de
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e1
    move-result v7

    #@e2
    if-eqz v7, :cond_9

    #@e4
    .line 217
    const-string/jumbo v7, "ABSENT"

    #@e7
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v7

    #@eb
    if-eqz v7, :cond_6

    #@ed
    .line 218
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@ef
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@f1
    const/4 v9, 0x4

    #@f2
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@f5
    move-result-object v8

    #@f6
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@f9
    .line 237
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@fb
    const-string/jumbo v8, "[Receiver]-"

    #@fe
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@101
    .line 179
    return-void

    #@102
    .line 219
    :cond_6
    const-string/jumbo v7, "UNKNOWN"

    #@105
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v7

    #@109
    if-eqz v7, :cond_7

    #@10b
    .line 220
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@10d
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@10f
    const/4 v9, 0x7

    #@110
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@113
    move-result-object v8

    #@114
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@117
    goto :goto_1

    #@118
    .line 221
    :cond_7
    const-string/jumbo v7, "CARD_IO_ERROR"

    #@11b
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11e
    move-result v7

    #@11f
    if-eqz v7, :cond_8

    #@121
    .line 222
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@123
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@125
    const/4 v9, 0x6

    #@126
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@129
    move-result-object v8

    #@12a
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@12d
    goto :goto_1

    #@12e
    .line 224
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@130
    new-instance v8, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v9, "Ignoring simStatus: "

    #@138
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v8

    #@13c
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v8

    #@140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v8

    #@144
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@147
    goto :goto_1

    #@148
    .line 226
    :cond_9
    const-string/jumbo v7, "android.intent.action.internal_sim_state_changed"

    #@14b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14e
    move-result v7

    #@14f
    if-eqz v7, :cond_5

    #@151
    .line 227
    const-string/jumbo v7, "LOCKED"

    #@154
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@157
    move-result v7

    #@158
    if-eqz v7, :cond_a

    #@15a
    .line 229
    const-string/jumbo v7, "reason"

    #@15d
    .line 228
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@160
    move-result-object v4

    #@161
    .line 230
    .local v4, "reason":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@163
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@165
    const/4 v9, 0x5

    #@166
    invoke-virtual {v8, v9, v6, v10, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@169
    move-result-object v8

    #@16a
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@16d
    goto :goto_1

    #@16e
    .line 231
    .end local v4    # "reason":Ljava/lang/String;
    :cond_a
    const-string/jumbo v7, "LOADED"

    #@171
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@174
    move-result v7

    #@175
    if-eqz v7, :cond_b

    #@177
    .line 232
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@179
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@17b
    const/4 v9, 0x3

    #@17c
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@17f
    move-result-object v8

    #@180
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@183
    goto/16 :goto_1

    #@185
    .line 234
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@187
    new-instance v8, Ljava/lang/StringBuilder;

    #@189
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18c
    const-string/jumbo v9, "Ignoring simStatus: "

    #@18f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v8

    #@193
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v8

    #@197
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object v8

    #@19b
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@19e
    goto/16 :goto_1
.end method
