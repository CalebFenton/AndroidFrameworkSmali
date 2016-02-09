.class Lcom/android/server/trust/TrustAgentWrapper$2;
.super Landroid/os/Handler;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustAgentWrapper;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 109
    :cond_0
    :goto_0
    return-void

    #@6
    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@8
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 113
    const-string/jumbo v0, "TrustAgentWrapper"

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Agent is not connected, cannot grant trust: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 114
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1f
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 115
    return-void

    #@33
    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@35
    const/4 v1, 0x1

    #@36
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set6(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    #@39
    .line 118
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d
    check-cast v0, Ljava/lang/CharSequence;

    #@3f
    invoke-static {v1, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-set2(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@42
    .line 119
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@44
    .line 120
    .local v6, "flags":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@47
    move-result-object v0

    #@48
    const-string/jumbo v1, "duration"

    #@4b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@4e
    move-result-wide v4

    #@4f
    .line 121
    .local v4, "durationMs":J
    const-wide/16 v0, 0x0

    #@51
    cmp-long v0, v4, v0

    #@53
    if-lez v0, :cond_2

    #@55
    .line 123
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@57
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get8(Lcom/android/server/trust/TrustAgentWrapper;)J

    #@5a
    move-result-wide v0

    #@5b
    const-wide/16 v2, 0x0

    #@5d
    cmp-long v0, v0, v2

    #@5f
    if-eqz v0, :cond_3

    #@61
    .line 128
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@63
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get8(Lcom/android/server/trust/TrustAgentWrapper;)J

    #@66
    move-result-wide v0

    #@67
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@6a
    move-result-wide v8

    #@6b
    .line 136
    .local v8, "duration":J
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6e
    move-result-wide v0

    #@6f
    add-long v10, v0, v8

    #@71
    .line 137
    .local v10, "expiration":J
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@73
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@75
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get5(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    #@78
    move-result-object v1

    #@79
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@7b
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-get0(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;

    #@7e
    move-result-object v2

    #@7f
    const/4 v3, 0x0

    #@80
    .line 138
    const/high16 v13, 0x10000000

    #@82
    .line 137
    invoke-static {v1, v3, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@85
    move-result-object v1

    #@86
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set0(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    #@89
    .line 139
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@8b
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get1(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;

    #@8e
    move-result-object v0

    #@8f
    .line 140
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@91
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get2(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;

    #@94
    move-result-object v1

    #@95
    .line 139
    const/4 v2, 0x2

    #@96
    invoke-virtual {v0, v2, v10, v11, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@99
    .line 142
    .end local v8    # "duration":J
    .end local v10    # "expiration":J
    :cond_2
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@9b
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@9e
    move-result-object v0

    #@9f
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@a1
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@a3
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@a6
    move-result v1

    #@a7
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@a9
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    #@ac
    move-result-object v2

    #@ad
    .line 143
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@af
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-get9(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    #@b2
    move-result-object v3

    #@b3
    if-eqz v3, :cond_4

    #@b5
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@b7
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-get9(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    #@ba
    move-result-object v3

    #@bb
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    .line 142
    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/trust/TrustArchive;->logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V

    #@c2
    .line 145
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@c4
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@c7
    move-result-object v0

    #@c8
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@ca
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@cd
    move-result v1

    #@ce
    invoke-virtual {v0, v1, v6}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 134
    :cond_3
    move-wide v8, v4

    #@d4
    .restart local v8    # "duration":J
    goto :goto_1

    #@d5
    .line 143
    .end local v8    # "duration":J
    :cond_4
    const/4 v3, 0x0

    #@d6
    goto :goto_2

    #@d7
    .line 149
    .end local v4    # "durationMs":J
    .end local v6    # "flags":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@d9
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@dc
    move-result-object v0

    #@dd
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@df
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@e1
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@e4
    move-result v1

    #@e5
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@e7
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    #@ea
    move-result-object v2

    #@eb
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logTrustTimeout(ILandroid/content/ComponentName;)V

    #@ee
    .line 150
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@f0
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-wrap0(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@f3
    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@f5
    const/4 v1, 0x0

    #@f6
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set6(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    #@f9
    .line 154
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@fb
    const/4 v1, 0x0

    #@fc
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set2(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@ff
    .line 155
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@101
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@104
    move-result-object v0

    #@105
    const/4 v1, 0x3

    #@106
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@109
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    #@10b
    const/4 v1, 0x2

    #@10c
    if-ne v0, v1, :cond_5

    #@10e
    .line 157
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@110
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@113
    move-result-object v0

    #@114
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@116
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@118
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@11b
    move-result v1

    #@11c
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@11e
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    #@121
    move-result-object v2

    #@122
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logRevokeTrust(ILandroid/content/ComponentName;)V

    #@125
    .line 159
    :cond_5
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@127
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@12a
    move-result-object v0

    #@12b
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@12d
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@130
    move-result v1

    #@131
    const/4 v2, 0x0

    #@132
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@135
    goto/16 :goto_0

    #@137
    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@139
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    #@13c
    .line 163
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@13e
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@141
    move-result-object v0

    #@142
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@144
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    #@147
    move-result-object v1

    #@148
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@14a
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@14d
    move-result v2

    #@14e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->resetAgent(Landroid/content/ComponentName;I)V

    #@151
    goto/16 :goto_0

    #@153
    .line 166
    :pswitch_4
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@155
    check-cast v12, Landroid/os/IBinder;

    #@157
    .line 167
    .local v12, "token":Landroid/os/IBinder;
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@159
    if-eqz v0, :cond_6

    #@15b
    const/4 v7, 0x1

    #@15c
    .line 168
    .local v7, "result":Z
    :goto_3
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@15e
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get11(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;

    #@161
    move-result-object v0

    #@162
    if-ne v0, v12, :cond_0

    #@164
    .line 169
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@166
    const/4 v1, 0x0

    #@167
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set3(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@16a
    .line 170
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@16c
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get12(Lcom/android/server/trust/TrustAgentWrapper;)Z

    #@16f
    move-result v0

    #@170
    if-eqz v0, :cond_0

    #@172
    if-eqz v7, :cond_0

    #@174
    .line 173
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@176
    const/4 v1, 0x0

    #@177
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set5(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    #@17a
    .line 174
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@17c
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@17f
    move-result-object v0

    #@180
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@182
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@185
    move-result v1

    #@186
    const/4 v2, 0x0

    #@187
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@18a
    goto/16 :goto_0

    #@18c
    .line 167
    .end local v7    # "result":Z
    :cond_6
    const/4 v7, 0x0

    #@18d
    .restart local v7    # "result":Z
    goto :goto_3

    #@18e
    .line 182
    .end local v7    # "result":Z
    .end local v12    # "token":Landroid/os/IBinder;
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@190
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@192
    if-eqz v0, :cond_8

    #@194
    const/4 v0, 0x1

    #@195
    :goto_4
    invoke-static {v1, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-set1(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    #@198
    .line 183
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@19a
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get7(Lcom/android/server/trust/TrustAgentWrapper;)Z

    #@19d
    move-result v0

    #@19e
    if-nez v0, :cond_7

    #@1a0
    .line 184
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1a2
    const/4 v1, 0x0

    #@1a3
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set6(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    #@1a6
    .line 185
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1a8
    const/4 v1, 0x0

    #@1a9
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set2(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1ac
    .line 187
    :cond_7
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1ae
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@1b1
    move-result-object v0

    #@1b2
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@1b4
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1b6
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@1b9
    move-result v1

    #@1ba
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1bc
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    #@1bf
    move-result-object v2

    #@1c0
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1c2
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-get7(Lcom/android/server/trust/TrustAgentWrapper;)Z

    #@1c5
    move-result v3

    #@1c6
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/trust/TrustArchive;->logManagingTrust(ILandroid/content/ComponentName;Z)V

    #@1c9
    .line 188
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1cb
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@1ce
    move-result-object v0

    #@1cf
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1d1
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@1d4
    move-result v1

    #@1d5
    const/4 v2, 0x0

    #@1d6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@1d9
    goto/16 :goto_0

    #@1db
    .line 182
    :cond_8
    const/4 v0, 0x0

    #@1dc
    goto :goto_4

    #@1dd
    .line 110
    nop

    #@1de
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
