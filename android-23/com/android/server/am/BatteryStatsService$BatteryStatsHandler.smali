.class Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
.super Landroid/os/Handler;
.source "BatteryStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryStatsHandler"
.end annotation


# static fields
.field public static final MSG_SYNC_EXTERNAL_STATS:I = 0x1

.field public static final MSG_WRITE_TO_DISK:I = 0x2


# instance fields
.field private mUidsToRemove:Landroid/util/IntArray;

.field private mUpdateFlags:I

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@2
    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 91
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    #@8
    .line 92
    new-instance v0, Landroid/util/IntArray;

    #@a
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    #@f
    .line 94
    return-void
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    #@0
    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 157
    const/4 v0, 0x1

    #@5
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 159
    :cond_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    #@e
    or-int/2addr v0, p2

    #@f
    iput v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    #@11
    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 100
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v3, :pswitch_data_0

    #@5
    .line 99
    :goto_0
    return-void

    #@6
    .line 103
    :pswitch_0
    monitor-enter p0

    #@7
    .line 104
    const/4 v3, 0x1

    #@8
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->removeMessages(I)V

    #@b
    .line 105
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    #@d
    .line 106
    .local v2, "updateFlags":I
    const/4 v3, 0x0

    #@e
    iput v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 108
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@13
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    check-cast v3, Ljava/lang/String;

    #@17
    invoke-virtual {v4, v3, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    #@1a
    .line 113
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@1c
    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1e
    monitor-enter v4

    #@1f
    .line 114
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@20
    .line 115
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    #@22
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    #@25
    move-result v1

    #@26
    .line 116
    .local v1, "numUidsToRemove":I
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    #@29
    .line 117
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@2b
    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2d
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    #@2f
    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    #@32
    move-result v5

    #@33
    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@36
    .line 116
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_1

    #@39
    .line 103
    .end local v0    # "i":I
    .end local v1    # "numUidsToRemove":I
    .end local v2    # "updateFlags":I
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit p0

    #@3b
    throw v3

    #@3c
    .restart local v0    # "i":I
    .restart local v1    # "numUidsToRemove":I
    .restart local v2    # "updateFlags":I
    :cond_0
    :try_start_3
    monitor-exit p0

    #@3d
    .line 120
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    #@3f
    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@42
    .end local v0    # "i":I
    .end local v1    # "numUidsToRemove":I
    .end local v2    # "updateFlags":I
    :goto_2
    monitor-exit v4

    #@43
    goto :goto_0

    #@44
    .line 114
    .restart local v2    # "updateFlags":I
    :catchall_1
    move-exception v3

    #@45
    :try_start_4
    monitor-exit p0

    #@46
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@47
    .line 113
    :catchall_2
    move-exception v3

    #@48
    monitor-exit v4

    #@49
    throw v3

    #@4a
    .line 125
    .end local v2    # "updateFlags":I
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@4c
    const-string/jumbo v4, "write"

    #@4f
    const/16 v5, 0xf

    #@51
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    #@54
    .line 126
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@56
    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@58
    monitor-enter v4

    #@59
    .line 127
    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@5b
    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5d
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@60
    goto :goto_2

    #@61
    .line 126
    :catchall_3
    move-exception v3

    #@62
    monitor-exit v4

    #@63
    throw v3

    #@64
    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scheduleCpuSyncDueToRemovedUid(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 149
    monitor-enter p0

    #@1
    .line 150
    :try_start_0
    const-string/jumbo v0, "remove-uid"

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSyncLocked(Ljava/lang/String;I)V

    #@8
    .line 151
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    #@a
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 148
    return-void

    #@f
    .line 149
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public scheduleSync(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    monitor-enter p0

    #@1
    .line 136
    const/16 v0, 0xf

    #@3
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 134
    return-void

    #@8
    .line 135
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public scheduleWifiSync(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    monitor-enter p0

    #@1
    .line 143
    const/4 v0, 0x2

    #@2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 141
    return-void

    #@7
    .line 142
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method
