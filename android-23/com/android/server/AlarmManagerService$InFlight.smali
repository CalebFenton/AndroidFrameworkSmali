.class final Lcom/android/server/AlarmManagerService$InFlight;
.super Landroid/content/Intent;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InFlight"
.end annotation


# instance fields
.field final mAlarmType:I

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mTag:Ljava/lang/String;

.field final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;J)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/AlarmManagerService;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "alarmType"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "nowELAPSED"    # J

    #@0
    .prologue
    .line 736
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@3
    .line 738
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    #@5
    .line 739
    iput-object p3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@7
    .line 740
    iput-object p5, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@9
    .line 741
    invoke-static {p1, p2}, Lcom/android/server/AlarmManagerService;->-wrap0(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@f
    .line 742
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@11
    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@13
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/AlarmManagerService$FilterStats;

    #@1b
    .line 743
    .local v0, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v0, :cond_0

    #@1d
    .line 744
    new-instance v0, Lcom/android/server/AlarmManagerService$FilterStats;

    #@1f
    .end local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@21
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@23
    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    #@26
    .line 745
    .restart local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@28
    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@2a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 747
    :cond_0
    iput-wide p6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    #@31
    .line 748
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    #@33
    .line 749
    iput p4, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    #@35
    .line 737
    return-void
.end method
