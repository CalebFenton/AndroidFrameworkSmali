.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;
.super Landroid/os/Handler;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 782
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    #@4
    .line 783
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    .line 784
    .local v0, "nowMs":J
    iget v3, p1, Landroid/os/Message;->what:I

    #@a
    packed-switch v3, :pswitch_data_0

    #@d
    .line 798
    const-string/jumbo v3, "NotificationSQLiteLog"

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "Unknown message type: "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    iget v5, p1, Landroid/os/Message;->what:I

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 781
    :goto_0
    return-void

    #@2a
    .line 786
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@2c
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2e
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@31
    move-result-wide v4

    #@32
    const/4 v6, 0x1

    #@33
    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->-wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    #@36
    goto :goto_0

    #@37
    .line 789
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@39
    const/4 v4, 0x2

    #@3a
    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->-wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    #@3d
    goto :goto_0

    #@3e
    .line 792
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@40
    const/4 v4, 0x3

    #@41
    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->-wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    #@44
    goto :goto_0

    #@45
    .line 795
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@47
    const/4 v4, 0x4

    #@48
    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->-wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    #@4b
    goto :goto_0

    #@4c
    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
