.class Lcom/android/server/connectivity/NetworkMonitor$LingeringState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LingeringState"
.end annotation


# static fields
.field private static final ACTION_LINGER_EXPIRED:Ljava/lang/String; = "android.net.netmon.lingerExpired"


# instance fields
.field private mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private mIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$LingeringState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    new-instance v1, Ljava/util/Random;

    #@4
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    #@7
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    #@a
    move-result v1

    #@b
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-set2(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@e
    .line 574
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@10
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@12
    const-string/jumbo v4, "android.net.netmon.lingerExpired"

    #@15
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@17
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get9(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@1a
    move-result v5

    #@1b
    .line 575
    const v6, 0x82004

    #@1e
    .line 574
    invoke-direct {v0, v1, v4, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    #@21
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@23
    .line 576
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@25
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mIntent:Landroid/app/PendingIntent;

    #@2b
    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2e
    move-result-wide v0

    #@2f
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@31
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@34
    move-result v4

    #@35
    int-to-long v4, v4

    #@36
    add-long v2, v0, v4

    #@38
    .line 578
    .local v2, "wakeupTime":J
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@3a
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get0(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;

    #@3d
    move-result-object v0

    #@3e
    .line 580
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@40
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@43
    move-result v1

    #@44
    div-int/lit8 v1, v1, 0x6

    #@46
    int-to-long v4, v1

    #@47
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mIntent:Landroid/app/PendingIntent;

    #@49
    .line 578
    const/4 v1, 0x2

    #@4a
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    #@4d
    .line 572
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get0(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mIntent:Landroid/app/PendingIntent;

    #@8
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@b
    .line 628
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@d
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@16
    .line 626
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 621
    :pswitch_0
    return v2

    #@8
    .line 587
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@a
    const-string/jumbo v1, "Unlingered"

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@10
    .line 589
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@12
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@15
    move-result-object v0

    #@16
    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 590
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@1c
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@1e
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@25
    .line 591
    return v4

    #@26
    .line 593
    :cond_0
    return v2

    #@27
    .line 595
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@29
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2b
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get9(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@2e
    move-result v1

    #@2f
    if-eq v0, v1, :cond_1

    #@31
    .line 596
    return v4

    #@32
    .line 597
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@34
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@37
    move-result-object v0

    #@38
    .line 598
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@3a
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@3c
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3f
    move-result-object v2

    #@40
    const v3, 0x82005

    #@43
    invoke-virtual {v1, v3, v2}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@46
    move-result-object v1

    #@47
    .line 597
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@4a
    .line 599
    return v4

    #@4b
    .line 605
    :pswitch_3
    return v4

    #@4c
    .line 619
    :pswitch_4
    return v4

    #@4d
    .line 585
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x82001
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
