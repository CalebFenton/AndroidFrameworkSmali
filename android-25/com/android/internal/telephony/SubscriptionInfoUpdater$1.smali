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
    .line 180
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
    .line 183
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@3
    const-string/jumbo v8, "[Receiver]+"

    #@6
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@9
    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 185
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
    .line 187
    const-string/jumbo v7, "android.intent.action.USER_UNLOCKED"

    #@29
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_1

    #@2f
    .line 189
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
    .line 190
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_0

    #@43
    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Ljava/util/Map$Entry;

    #@49
    .line 192
    .local v3, "pair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Landroid/content/Intent;

    #@4f
    .line 193
    .local v1, "i":Landroid/content/Intent;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@52
    .line 194
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
    .line 195
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@63
    move-result-object v9

    #@64
    .line 194
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
    .line 196
    const-string/jumbo v7, "android.permission.READ_PHONE_STATE"

    #@72
    invoke-static {v1, v7, v10}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@75
    goto :goto_0

    #@76
    .line 199
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "pair":Ljava/util/Map$Entry;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@78
    const-string/jumbo v8, "[Receiver]-"

    #@7b
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@7e
    .line 200
    return-void

    #@7f
    .line 203
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    #@82
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v7

    #@86
    if-nez v7, :cond_2

    #@88
    .line 204
    const-string/jumbo v7, "android.intent.action.internal_sim_state_changed"

    #@8b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v7

    #@8f
    if-eqz v7, :cond_3

    #@91
    .line 208
    :cond_2
    const-string/jumbo v7, "phone"

    #@94
    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@97
    move-result v6

    #@98
    .line 210
    .local v6, "slotId":I
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@9a
    new-instance v8, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v9, "slotId: "

    #@a2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v8

    #@aa
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v8

    #@ae
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@b1
    .line 211
    if-ne v6, v10, :cond_4

    #@b3
    .line 212
    return-void

    #@b4
    .line 205
    .end local v6    # "slotId":I
    :cond_3
    return-void

    #@b5
    .line 215
    .restart local v6    # "slotId":I
    :cond_4
    const-string/jumbo v7, "ss"

    #@b8
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@bb
    move-result-object v5

    #@bc
    .line 216
    .local v5, "simStatus":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@be
    new-instance v8, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v9, "simStatus: "

    #@c6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v8

    #@ca
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v8

    #@d2
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@d5
    .line 218
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    #@d8
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@db
    move-result v7

    #@dc
    if-eqz v7, :cond_a

    #@de
    .line 219
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@e0
    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/Map;

    #@e3
    move-result-object v7

    #@e4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e7
    move-result-object v8

    #@e8
    invoke-interface {v7, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@eb
    .line 220
    const-string/jumbo v7, "ABSENT"

    #@ee
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f1
    move-result v7

    #@f2
    if-eqz v7, :cond_6

    #@f4
    .line 221
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@f6
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@f8
    const/4 v9, 0x4

    #@f9
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@fc
    move-result-object v8

    #@fd
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@100
    .line 242
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@102
    const-string/jumbo v8, "[Receiver]-"

    #@105
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@108
    .line 182
    return-void

    #@109
    .line 222
    :cond_6
    const-string/jumbo v7, "UNKNOWN"

    #@10c
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10f
    move-result v7

    #@110
    if-eqz v7, :cond_7

    #@112
    .line 223
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@114
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@116
    const/4 v9, 0x7

    #@117
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@11a
    move-result-object v8

    #@11b
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@11e
    goto :goto_1

    #@11f
    .line 224
    :cond_7
    const-string/jumbo v7, "CARD_IO_ERROR"

    #@122
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@125
    move-result v7

    #@126
    if-eqz v7, :cond_8

    #@128
    .line 225
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@12a
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@12c
    const/4 v9, 0x6

    #@12d
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@130
    move-result-object v8

    #@131
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@134
    goto :goto_1

    #@135
    .line 226
    :cond_8
    const-string/jumbo v7, "CARD_RESTRICTED"

    #@138
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13b
    move-result v7

    #@13c
    if-eqz v7, :cond_9

    #@13e
    .line 227
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@140
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@142
    const/16 v9, 0x8

    #@144
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@147
    move-result-object v8

    #@148
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@14b
    goto :goto_1

    #@14c
    .line 229
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@14e
    new-instance v8, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v9, "Ignoring simStatus: "

    #@156
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v8

    #@15a
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v8

    #@15e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v8

    #@162
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@165
    goto :goto_1

    #@166
    .line 231
    :cond_a
    const-string/jumbo v7, "android.intent.action.internal_sim_state_changed"

    #@169
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16c
    move-result v7

    #@16d
    if-eqz v7, :cond_5

    #@16f
    .line 232
    const-string/jumbo v7, "LOCKED"

    #@172
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@175
    move-result v7

    #@176
    if-eqz v7, :cond_b

    #@178
    .line 234
    const-string/jumbo v7, "reason"

    #@17b
    .line 233
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@17e
    move-result-object v4

    #@17f
    .line 235
    .local v4, "reason":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@181
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@183
    const/4 v9, 0x5

    #@184
    invoke-virtual {v8, v9, v6, v10, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@187
    move-result-object v8

    #@188
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@18b
    goto/16 :goto_1

    #@18d
    .line 236
    .end local v4    # "reason":Ljava/lang/String;
    :cond_b
    const-string/jumbo v7, "LOADED"

    #@190
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@193
    move-result v7

    #@194
    if-eqz v7, :cond_c

    #@196
    .line 237
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@198
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@19a
    const/4 v9, 0x3

    #@19b
    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    #@19e
    move-result-object v8

    #@19f
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    #@1a2
    goto/16 :goto_1

    #@1a4
    .line 239
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@1a6
    new-instance v8, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v9, "Ignoring simStatus: "

    #@1ae
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v8

    #@1b2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v8

    #@1b6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v8

    #@1ba
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    #@1bd
    goto/16 :goto_1
.end method
