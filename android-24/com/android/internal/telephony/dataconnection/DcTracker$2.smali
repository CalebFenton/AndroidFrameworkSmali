.class Lcom/android/internal/telephony/dataconnection/DcTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@0
    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 293
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    #@9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@11
    const-string/jumbo v4, "screen on"

    #@14
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@17
    .line 295
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@19
    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set0(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    #@1c
    .line 296
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@1e
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap10(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@21
    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@23
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap9(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@26
    .line 298
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@28
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap7(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@2b
    .line 290
    :goto_0
    return-void

    #@2c
    .line 299
    :cond_0
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    #@2f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 300
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@37
    const-string/jumbo v5, "screen off"

    #@3a
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@3d
    .line 301
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3f
    invoke-static {v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set0(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    #@42
    .line 302
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@44
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap10(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@47
    .line 303
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@49
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap9(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@4c
    .line 304
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4e
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap7(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@51
    goto :goto_0

    #@52
    .line 305
    :cond_1
    const-string/jumbo v4, "com.android.internal.telephony.data-reconnect"

    #@55
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_2

    #@5b
    .line 306
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@5d
    new-instance v4, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v5, "Reconnect alarm. Previous state was "

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@6b
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get8(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/DctConstants$State;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@7a
    .line 307
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@7c
    invoke-static {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    #@7f
    goto :goto_0

    #@80
    .line 308
    :cond_2
    const-string/jumbo v4, "com.android.internal.telephony.data-stall"

    #@83
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v4

    #@87
    if-eqz v4, :cond_3

    #@89
    .line 309
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@8b
    const-string/jumbo v4, "Data stall alarm"

    #@8e
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@91
    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@93
    invoke-static {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    #@96
    goto :goto_0

    #@97
    .line 311
    :cond_3
    const-string/jumbo v4, "com.android.internal.telephony.provisioning_apn_alarm"

    #@9a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v4

    #@9e
    if-eqz v4, :cond_4

    #@a0
    .line 312
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@a2
    const-string/jumbo v4, "Provisioning apn alarm"

    #@a5
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@a8
    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@aa
    invoke-static {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    #@ad
    goto/16 :goto_0

    #@af
    .line 314
    :cond_4
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    #@b2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v4

    #@b6
    if-eqz v4, :cond_6

    #@b8
    .line 316
    const-string/jumbo v4, "networkInfo"

    #@bb
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@be
    move-result-object v2

    #@bf
    check-cast v2, Landroid/net/NetworkInfo;

    #@c1
    .line 317
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@c3
    if-eqz v2, :cond_5

    #@c5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    #@c8
    move-result v3

    #@c9
    :cond_5
    invoke-static {v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set1(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    #@cc
    .line 318
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@ce
    new-instance v4, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v5, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    #@d6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@dc
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get2(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    #@df
    move-result v5

    #@e0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v4

    #@e8
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@eb
    goto/16 :goto_0

    #@ed
    .line 319
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    #@f0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f3
    move-result v4

    #@f4
    if-eqz v4, :cond_9

    #@f6
    .line 320
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@f8
    const-string/jumbo v5, "Wifi state changed"

    #@fb
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@fe
    .line 321
    const-string/jumbo v4, "wifi_state"

    #@101
    .line 322
    const/4 v5, 0x4

    #@102
    .line 321
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@105
    move-result v4

    #@106
    .line 322
    const/4 v5, 0x3

    #@107
    .line 321
    if-ne v4, v5, :cond_8

    #@109
    .line 323
    .local v1, "enabled":Z
    :goto_1
    if-nez v1, :cond_7

    #@10b
    .line 326
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@10d
    invoke-static {v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set1(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    #@110
    .line 329
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@112
    new-instance v4, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v5, "WIFI_STATE_CHANGED_ACTION: enabled="

    #@11a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v4

    #@11e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@121
    move-result-object v4

    #@122
    .line 330
    const-string/jumbo v5, " mIsWifiConnected="

    #@125
    .line 329
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v4

    #@129
    .line 330
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@12b
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get2(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    #@12e
    move-result v5

    #@12f
    .line 329
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@132
    move-result-object v4

    #@133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v4

    #@137
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@13a
    goto/16 :goto_0

    #@13c
    .end local v1    # "enabled":Z
    :cond_8
    move v1, v3

    #@13d
    .line 321
    goto :goto_1

    #@13e
    .line 333
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@140
    new-instance v4, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v5, "onReceive: Unknown action="

    #@148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v4

    #@14c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v4

    #@150
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v4

    #@154
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    #@157
    goto/16 :goto_0
.end method
