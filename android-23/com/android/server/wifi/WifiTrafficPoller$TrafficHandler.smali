.class Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
.super Landroid/os/Handler;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    #@0
    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v0, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 117
    iget v2, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v2, :pswitch_data_0

    #@a
    .line 116
    :cond_0
    :goto_0
    return-void

    #@b
    .line 119
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@d
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@f
    if-ne v3, v0, :cond_2

    #@11
    :goto_1
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-set0(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z

    #@14
    .line 120
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@16
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get0(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 121
    const-string/jumbo v0, "WifiTrafficPoller"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "ENABLE_TRAFFIC_STATS_POLL "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 122
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@2d
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->-get3(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    #@30
    move-result v3

    #@31
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 122
    const-string/jumbo v3, " Token "

    #@38
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 123
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@3e
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->-get5(Lcom/android/server/wifi/WifiTrafficPoller;)I

    #@41
    move-result v3

    #@42
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@53
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get5(Lcom/android/server/wifi/WifiTrafficPoller;)I

    #@56
    move-result v2

    #@57
    add-int/lit8 v2, v2, 0x1

    #@59
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->-set2(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    #@5c
    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@5e
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get3(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_0

    #@64
    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@66
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-wrap1(Lcom/android/server/wifi/WifiTrafficPoller;)V

    #@69
    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@6b
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get5(Lcom/android/server/wifi/WifiTrafficPoller;)I

    #@6e
    move-result v0

    #@6f
    .line 128
    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@76
    goto :goto_0

    #@77
    :cond_2
    move v0, v1

    #@78
    .line 119
    goto :goto_1

    #@79
    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@7b
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get1(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_3

    #@81
    .line 134
    const-string/jumbo v0, "WifiTrafficPoller"

    #@84
    new-instance v2, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v3, "TRAFFIC_STATS_POLL "

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    .line 135
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@92
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->-get3(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    #@95
    move-result v3

    #@96
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    .line 135
    const-string/jumbo v3, " Token "

    #@9d
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    .line 136
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@a3
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->-get5(Lcom/android/server/wifi/WifiTrafficPoller;)I

    #@a6
    move-result v3

    #@a7
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    .line 137
    const-string/jumbo v3, " num clients "

    #@b2
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    .line 137
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@b8
    invoke-static {v3}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    #@bb
    move-result-object v3

    #@bc
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@bf
    move-result v3

    #@c0
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v2

    #@c4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cb
    .line 139
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@cd
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@cf
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->-get5(Lcom/android/server/wifi/WifiTrafficPoller;)I

    #@d2
    move-result v2

    #@d3
    if-ne v0, v2, :cond_0

    #@d5
    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@d7
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-wrap1(Lcom/android/server/wifi/WifiTrafficPoller;)V

    #@da
    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@dc
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get5(Lcom/android/server/wifi/WifiTrafficPoller;)I

    #@df
    move-result v0

    #@e0
    .line 141
    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@e3
    move-result-object v0

    #@e4
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@e7
    goto/16 :goto_0

    #@e9
    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@eb
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    #@ee
    move-result-object v1

    #@ef
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f1
    check-cast v0, Landroid/os/Messenger;

    #@f3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f6
    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@f8
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get0(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    #@fb
    move-result v0

    #@fc
    if-eqz v0, :cond_0

    #@fe
    .line 148
    const-string/jumbo v0, "WifiTrafficPoller"

    #@101
    new-instance v1, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v2, "ADD_CLIENT: "

    #@109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    .line 149
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@10f
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    #@112
    move-result-object v2

    #@113
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@116
    move-result v2

    #@117
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11a
    move-result-object v2

    #@11b
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v1

    #@11f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v1

    #@123
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@126
    goto/16 :goto_0

    #@128
    .line 153
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #@12a
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    #@12d
    move-result-object v0

    #@12e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@130
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@133
    goto/16 :goto_0

    #@135
    .line 117
    nop

    #@136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
