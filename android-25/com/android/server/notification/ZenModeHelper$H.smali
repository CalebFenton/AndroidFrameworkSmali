.class final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    }
.end annotation


# static fields
.field private static final METRICS_PERIOD_MS:J = 0x1499700L

.field private static final MSG_APPLY_CONFIG:I = 0x4

.field private static final MSG_DISPATCH:I = 0x1

.field private static final MSG_METRICS:I = 0x2

.field private static final MSG_SET_CONFIG:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H;->postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;->postSetConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@2
    .line 1111
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1110
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    #@3
    return-void
.end method

.method private postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    #@0
    .prologue
    .line 1130
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;-><init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    #@5
    .line 1129
    const/4 v1, 0x4

    #@6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 1128
    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1115
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    #@4
    .line 1116
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessage(I)Z

    #@7
    .line 1114
    return-void
.end method

.method private postMetricsTimer()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1120
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    #@4
    .line 1121
    const-wide/32 v0, 0x1499700

    #@7
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessageDelayed(IJ)Z

    #@a
    .line 1119
    return-void
.end method

.method private postSetConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1125
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;-><init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    #@5
    const/4 v1, 0x3

    #@6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 1124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1135
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 1134
    :goto_0
    return-void

    #@6
    .line 1137
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@8
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;)V

    #@b
    goto :goto_0

    #@c
    .line 1140
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@e
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper$Metrics;->-wrap0(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    #@15
    goto :goto_0

    #@16
    .line 1143
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    check-cast v1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    #@1a
    .line 1144
    .local v1, "configData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@1c
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/service/notification/ZenModeConfig;

    #@1f
    move-result-object v3

    #@20
    monitor-enter v3

    #@21
    .line 1145
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@23
    iget-object v4, v1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    #@25
    iget-object v5, v1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    #@27
    invoke-virtual {v2, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    goto :goto_0

    #@2c
    .line 1144
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2

    #@2f
    .line 1149
    .end local v1    # "configData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31
    check-cast v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    #@33
    .line 1150
    .local v0, "applyConfigData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@35
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    #@37
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    #@39
    .line 1151
    iget-boolean v5, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->setRingerMode:Z

    #@3b
    .line 1150
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap3(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    #@3e
    goto :goto_0

    #@3f
    .line 1135
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
