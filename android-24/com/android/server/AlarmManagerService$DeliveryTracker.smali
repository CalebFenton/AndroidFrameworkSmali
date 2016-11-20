.class Lcom/android/server/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveryTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 2839
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2841
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@3
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 2842
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@d
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    #@15
    iget-object v1, v1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    #@17
    if-ne v1, p1, :cond_0

    #@19
    .line 2843
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@1b
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    #@23
    return-object v1

    #@24
    .line 2841
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2846
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@29
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "No in-flight alarm for "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    const-string/jumbo v3, " "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v1, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    #@4d
    .line 2847
    const/4 v1, 0x0

    #@4e
    return-object v1
.end method

.method private removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;
    .locals 4
    .param p1, "listener"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2851
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@3
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 2852
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@d
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    #@15
    iget-object v1, v1, Lcom/android/server/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    #@17
    if-ne v1, p1, :cond_0

    #@19
    .line 2853
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@1b
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    #@23
    return-object v1

    #@24
    .line 2851
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2856
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@29
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "No in-flight alarm for listener "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    #@42
    .line 2857
    const/4 v1, 0x0

    #@43
    return-object v1
.end method

.method private updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .locals 11
    .param p1, "inflight"    # Lcom/android/server/AlarmManagerService$InFlight;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2861
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4
    move-result-wide v2

    #@5
    .line 2862
    .local v2, "nowELAPSED":J
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@7
    .line 2863
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@9
    add-int/lit8 v5, v5, -0x1

    #@b
    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@d
    .line 2864
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@f
    if-gtz v5, :cond_0

    #@11
    .line 2865
    iput v10, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@13
    .line 2866
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    #@15
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    #@17
    sub-long v8, v2, v8

    #@19
    add-long/2addr v6, v8

    #@1a
    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    #@1c
    .line 2868
    :cond_0
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    #@1e
    .line 2869
    .local v1, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@20
    add-int/lit8 v5, v5, -0x1

    #@22
    iput v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@24
    .line 2870
    iget v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@26
    if-gtz v5, :cond_1

    #@28
    .line 2871
    iput v10, v1, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@2a
    .line 2872
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@2c
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    #@2e
    sub-long v8, v2, v8

    #@30
    add-long/2addr v6, v8

    #@31
    iput-wide v6, v1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@33
    .line 2875
    :cond_1
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@35
    if-eqz v5, :cond_2

    #@37
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@39
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@3c
    move-result v5

    #@3d
    if-lez v5, :cond_2

    #@3f
    .line 2876
    const/4 v4, 0x0

    #@40
    .local v4, "wi":I
    :goto_0
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@42
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@45
    move-result v5

    #@46
    if-ge v4, v5, :cond_3

    #@48
    .line 2878
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    #@4a
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@4c
    invoke-virtual {v6, v4}, Landroid/os/WorkSource;->get(I)I

    #@4f
    move-result v6

    #@50
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@52
    .line 2877
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    #@55
    .line 2876
    add-int/lit8 v4, v4, 0x1

    #@57
    goto :goto_0

    #@58
    .line 2882
    .end local v4    # "wi":I
    :cond_2
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    #@5a
    iget v6, p1, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    #@5c
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@5e
    .line 2881
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    #@61
    .line 2860
    :cond_3
    return-void
.end method

.method private updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .locals 9
    .param p1, "inflight"    # Lcom/android/server/AlarmManagerService$InFlight;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 2888
    if-eqz p1, :cond_0

    #@4
    .line 2889
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    #@7
    .line 2891
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@9
    iget v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@b
    add-int/lit8 v1, v1, -0x1

    #@d
    iput v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@f
    .line 2892
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@11
    iget v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@13
    if-nez v0, :cond_3

    #@15
    .line 2893
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@17
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v1

    #@1d
    const/4 v2, 0x4

    #@1e
    invoke-virtual {v0, v2, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@25
    .line 2894
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@27
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@29
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2c
    .line 2895
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@2e
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v0

    #@34
    if-lez v0, :cond_2

    #@36
    .line 2896
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@38
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "Finished all dispatches with "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@48
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v2

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 2897
    const-string/jumbo v2, " remaining inflights"

    #@55
    .line 2896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    #@60
    .line 2898
    const/4 v7, 0x0

    #@61
    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@63
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@68
    move-result v0

    #@69
    if-ge v7, v0, :cond_1

    #@6b
    .line 2899
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@6d
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@6f
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v2, "  Remaining #"

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    const-string/jumbo v2, ": "

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@88
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@8a
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    #@99
    .line 2898
    add-int/lit8 v7, v7, 0x1

    #@9b
    goto :goto_0

    #@9c
    .line 2901
    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@9e
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@a0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a3
    .line 2887
    .end local v7    # "i":I
    :cond_2
    :goto_1
    return-void

    #@a4
    .line 2905
    :cond_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@a6
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@a8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@ab
    move-result v0

    #@ac
    if-lez v0, :cond_4

    #@ae
    .line 2906
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@b0
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@b2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b5
    move-result-object v8

    #@b6
    check-cast v8, Lcom/android/server/AlarmManagerService$InFlight;

    #@b8
    .line 2907
    .local v8, "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@ba
    iget-object v1, v8, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    #@bc
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@be
    .line 2908
    iget v3, v8, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    #@c0
    iget-object v4, v8, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@c2
    const/4 v5, -0x1

    #@c3
    .line 2907
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V

    #@c6
    goto :goto_1

    #@c7
    .line 2911
    .end local v8    # "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@c9
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@cb
    const-string/jumbo v1, "Alarm wakelock still held but sent queue empty"

    #@ce
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    #@d1
    .line 2912
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@d3
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d5
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@d8
    goto :goto_1
.end method


# virtual methods
.method public alarmComplete(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "who"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2922
    if-nez p1, :cond_0

    #@2
    .line 2923
    const-string/jumbo v3, "AlarmManager"

    #@5
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "Invalid alarmComplete: uid="

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v5

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    .line 2924
    const-string/jumbo v5, " pid="

    #@1c
    .line 2923
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 2924
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@23
    move-result v5

    #@24
    .line 2923
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 2925
    return-void

    #@30
    .line 2928
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v0

    #@34
    .line 2930
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@36
    iget-object v4, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@38
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@39
    .line 2931
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@3b
    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@3d
    const/4 v5, 0x3

    #@3e
    invoke-virtual {v3, v5, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(ILjava/lang/Object;)V

    #@41
    .line 2932
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    #@44
    move-result-object v2

    #@45
    .line 2933
    .local v2, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    if-eqz v2, :cond_1

    #@47
    .line 2937
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4b
    .line 2947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 2921
    return-void

    #@4f
    .line 2930
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catchall_0
    move-exception v3

    #@50
    :try_start_3
    monitor-exit v4

    #@51
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@52
    .line 2946
    :catchall_1
    move-exception v3

    #@53
    .line 2947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 2946
    throw v3
.end method

.method public alarmTimedOut(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "who"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2966
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 2967
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    #@8
    move-result-object v0

    #@9
    .line 2968
    .local v0, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    if-eqz v0, :cond_0

    #@b
    .line 2973
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v2

    #@f
    .line 2965
    return-void

    #@10
    .line 2966
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 22
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowELAPSED"    # J
    .param p4, "allowWhileIdle"    # Z

    #@0
    .prologue
    .line 2986
    move-object/from16 v0, p1

    #@2
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@4
    if-eqz v4, :cond_5

    #@6
    .line 2989
    :try_start_0
    move-object/from16 v0, p1

    #@8
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@e
    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@11
    move-result-object v5

    #@12
    .line 2990
    move-object/from16 v0, p0

    #@14
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@16
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->-get0(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;

    #@19
    move-result-object v6

    #@1a
    .line 2991
    const-string/jumbo v7, "android.intent.extra.ALARM_COUNT"

    #@1d
    move-object/from16 v0, p1

    #@1f
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@21
    .line 2990
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@24
    move-result-object v7

    #@25
    .line 2992
    move-object/from16 v0, p0

    #@27
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@29
    iget-object v8, v6, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@2f
    iget-object v9, v6, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@31
    .line 2993
    if-eqz p4, :cond_3

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@37
    iget-object v11, v6, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    #@39
    .line 2989
    :goto_0
    const/4 v6, 0x0

    #@3a
    .line 2992
    const/4 v10, 0x0

    #@3b
    .line 2989
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 3032
    :goto_1
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@42
    iget v4, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@44
    if-nez v4, :cond_0

    #@46
    .line 3033
    move-object/from16 v0, p0

    #@48
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@4a
    move-object/from16 v0, p1

    #@4c
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@4e
    move-object/from16 v0, p1

    #@50
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@52
    .line 3034
    move-object/from16 v0, p1

    #@54
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@56
    move-object/from16 v0, p1

    #@58
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@5a
    move-object/from16 v0, p1

    #@5c
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@5e
    if-nez v9, :cond_6

    #@60
    move-object/from16 v0, p1

    #@62
    iget v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@64
    .line 3035
    :goto_2
    const/4 v10, 0x1

    #@65
    .line 3033
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V

    #@68
    .line 3036
    move-object/from16 v0, p0

    #@6a
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@6c
    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6e
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@71
    .line 3037
    move-object/from16 v0, p0

    #@73
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@75
    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@77
    const/4 v6, 0x1

    #@78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v6

    #@7c
    const/4 v7, 0x4

    #@7d
    invoke-virtual {v4, v7, v6}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@84
    .line 3039
    :cond_0
    new-instance v5, Lcom/android/server/AlarmManagerService$InFlight;

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@8a
    .line 3040
    move-object/from16 v0, p1

    #@8c
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@8e
    move-object/from16 v0, p1

    #@90
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    #@92
    move-object/from16 v0, p1

    #@94
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@96
    move-object/from16 v0, p1

    #@98
    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@9a
    .line 3041
    move-object/from16 v0, p1

    #@9c
    iget-object v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@9e
    move-object/from16 v0, p1

    #@a0
    iget v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@a2
    move-object/from16 v0, p1

    #@a4
    iget-object v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@a6
    move-wide/from16 v14, p2

    #@a8
    .line 3039
    invoke-direct/range {v5 .. v15}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Landroid/os/WorkSource;ILjava/lang/String;ILjava/lang/String;J)V

    #@ab
    .line 3042
    .local v5, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    #@ad
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@af
    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@b1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b4
    .line 3043
    move-object/from16 v0, p0

    #@b6
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@b8
    iget v6, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@ba
    add-int/lit8 v6, v6, 0x1

    #@bc
    iput v6, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@be
    .line 3045
    if-eqz p4, :cond_1

    #@c0
    .line 3047
    move-object/from16 v0, p0

    #@c2
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@c4
    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@c6
    move-object/from16 v0, p1

    #@c8
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@ca
    move-wide/from16 v0, p2

    #@cc
    invoke-virtual {v4, v6, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    #@cf
    .line 3059
    :cond_1
    iget-object v0, v5, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@d1
    move-object/from16 v16, v0

    #@d3
    .line 3060
    .local v16, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move-object/from16 v0, v16

    #@d5
    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    #@d7
    add-int/lit8 v4, v4, 0x1

    #@d9
    move-object/from16 v0, v16

    #@db
    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    #@dd
    .line 3061
    move-object/from16 v0, v16

    #@df
    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@e1
    if-nez v4, :cond_7

    #@e3
    .line 3062
    const/4 v4, 0x1

    #@e4
    move-object/from16 v0, v16

    #@e6
    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@e8
    .line 3063
    move-wide/from16 v0, p2

    #@ea
    move-object/from16 v2, v16

    #@ec
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    #@ee
    .line 3067
    :goto_3
    iget-object v0, v5, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    #@f0
    move-object/from16 v19, v0

    #@f2
    .line 3068
    .local v19, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v19

    #@f4
    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    #@f6
    add-int/lit8 v4, v4, 0x1

    #@f8
    move-object/from16 v0, v19

    #@fa
    iput v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    #@fc
    .line 3069
    move-object/from16 v0, v19

    #@fe
    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@100
    if-nez v4, :cond_8

    #@102
    .line 3070
    const/4 v4, 0x1

    #@103
    move-object/from16 v0, v19

    #@105
    iput v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@107
    .line 3071
    move-wide/from16 v0, p2

    #@109
    move-object/from16 v2, v19

    #@10b
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    #@10d
    .line 3075
    :goto_4
    move-object/from16 v0, p1

    #@10f
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@111
    const/4 v6, 0x2

    #@112
    if-eq v4, v6, :cond_2

    #@114
    .line 3076
    move-object/from16 v0, p1

    #@116
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@118
    if-nez v4, :cond_b

    #@11a
    .line 3077
    :cond_2
    move-object/from16 v0, v16

    #@11c
    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    #@11e
    add-int/lit8 v4, v4, 0x1

    #@120
    move-object/from16 v0, v16

    #@122
    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    #@124
    .line 3078
    move-object/from16 v0, v19

    #@126
    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    #@128
    add-int/lit8 v4, v4, 0x1

    #@12a
    move-object/from16 v0, v19

    #@12c
    iput v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    #@12e
    .line 3079
    move-object/from16 v0, p1

    #@130
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@132
    if-eqz v4, :cond_a

    #@134
    move-object/from16 v0, p1

    #@136
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@138
    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    #@13b
    move-result v4

    #@13c
    if-lez v4, :cond_a

    #@13e
    .line 3080
    const/16 v20, 0x0

    #@140
    .local v20, "wi":I
    :goto_5
    move-object/from16 v0, p1

    #@142
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@144
    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    #@147
    move-result v4

    #@148
    move/from16 v0, v20

    #@14a
    if-ge v0, v4, :cond_b

    #@14c
    .line 3081
    move-object/from16 v0, p1

    #@14e
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@150
    move/from16 v0, v20

    #@152
    invoke-virtual {v4, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@155
    move-result-object v21

    #@156
    .line 3083
    .local v21, "wsName":Ljava/lang/String;
    move-object/from16 v0, p1

    #@158
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@15a
    move-object/from16 v0, p1

    #@15c
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@15e
    move/from16 v0, v20

    #@160
    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    #@163
    move-result v6

    #@164
    .line 3084
    if-eqz v21, :cond_9

    #@166
    .line 3085
    .end local v21    # "wsName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p1

    #@168
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@16a
    .line 3082
    move-object/from16 v0, v21

    #@16c
    invoke-static {v4, v6, v0, v7}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    #@16f
    .line 3080
    add-int/lit8 v20, v20, 0x1

    #@171
    goto :goto_5

    #@172
    .line 2993
    .end local v5    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v20    # "wi":I
    :cond_3
    const/4 v11, 0x0

    #@173
    goto/16 :goto_0

    #@175
    .line 2994
    :catch_0
    move-exception v17

    #@176
    .line 2995
    .local v17, "e":Landroid/app/PendingIntent$CanceledException;
    move-object/from16 v0, p1

    #@178
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@17a
    const-wide/16 v8, 0x0

    #@17c
    cmp-long v4, v6, v8

    #@17e
    if-lez v4, :cond_4

    #@180
    .line 2998
    move-object/from16 v0, p0

    #@182
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@184
    move-object/from16 v0, p1

    #@186
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@188
    invoke-virtual {v4, v6}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    #@18b
    .line 3004
    :cond_4
    return-void

    #@18c
    .line 3013
    .end local v17    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    #@18e
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    #@190
    move-object/from16 v0, p0

    #@192
    invoke-interface {v4, v0}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    #@195
    .line 3014
    move-object/from16 v0, p0

    #@197
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@199
    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@19b
    .line 3015
    move-object/from16 v0, p0

    #@19d
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@19f
    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@1a1
    .line 3016
    move-object/from16 v0, p1

    #@1a3
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    #@1a5
    invoke-interface {v7}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    #@1a8
    move-result-object v7

    #@1a9
    .line 3015
    const/4 v8, 0x3

    #@1aa
    invoke-virtual {v6, v8, v7}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1ad
    move-result-object v6

    #@1ae
    .line 3017
    move-object/from16 v0, p0

    #@1b0
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@1b2
    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@1b4
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    #@1b6
    .line 3014
    invoke-virtual {v4, v6, v8, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@1b9
    goto/16 :goto_1

    #@1bb
    .line 3018
    :catch_1
    move-exception v18

    #@1bc
    .line 3027
    .local v18, "e":Ljava/lang/Exception;
    return-void

    #@1bd
    .line 3034
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v9, -0x1

    #@1be
    goto/16 :goto_2

    #@1c0
    .line 3065
    .restart local v5    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_7
    move-object/from16 v0, v16

    #@1c2
    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@1c4
    add-int/lit8 v4, v4, 0x1

    #@1c6
    move-object/from16 v0, v16

    #@1c8
    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@1ca
    goto/16 :goto_3

    #@1cc
    .line 3073
    .restart local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_8
    move-object/from16 v0, v19

    #@1ce
    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@1d0
    add-int/lit8 v4, v4, 0x1

    #@1d2
    move-object/from16 v0, v19

    #@1d4
    iput v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@1d6
    goto/16 :goto_4

    #@1d8
    .line 3084
    .restart local v20    # "wi":I
    .restart local v21    # "wsName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    #@1da
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@1dc
    move-object/from16 v21, v0

    #@1de
    goto :goto_6

    #@1df
    .line 3089
    .end local v20    # "wi":I
    .end local v21    # "wsName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    #@1e1
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@1e7
    move-object/from16 v0, p1

    #@1e9
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@1ef
    .line 3088
    invoke-static {v4, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    #@1f2
    .line 2985
    :cond_b
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2957
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 2958
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 2956
    return-void

    #@e
    .line 2957
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
