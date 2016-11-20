.class final Lcom/android/server/AlarmManagerService$InFlight;
.super Ljava/lang/Object;
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

.field final mListener:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mTag:Ljava/lang/String;

.field final mUid:I

.field final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Landroid/os/WorkSource;ILjava/lang/String;ILjava/lang/String;J)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/AlarmManagerService;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/app/IAlarmListener;
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p5, "uid"    # I
    .param p6, "alarmPkg"    # Ljava/lang/String;
    .param p7, "alarmType"    # I
    .param p8, "tag"    # Ljava/lang/String;
    .param p9, "nowELAPSED"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 843
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    #@6
    .line 844
    if-eqz p3, :cond_0

    #@8
    invoke-interface {p3}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    #@b
    move-result-object v1

    #@c
    :cond_0
    iput-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    #@e
    .line 845
    iput-object p4, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    #@10
    .line 846
    iput p5, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    #@12
    .line 847
    iput-object p8, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@14
    .line 848
    if-eqz p2, :cond_2

    #@16
    .line 849
    invoke-static {p1, p2}, Lcom/android/server/AlarmManagerService;->-wrap0(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@19
    move-result-object v1

    #@1a
    .line 848
    :goto_0
    iput-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@1c
    .line 851
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@1e
    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@20
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@22
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/server/AlarmManagerService$FilterStats;

    #@28
    .line 852
    .local v0, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v0, :cond_1

    #@2a
    .line 853
    new-instance v0, Lcom/android/server/AlarmManagerService$FilterStats;

    #@2c
    .end local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@2e
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@30
    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    #@33
    .line 854
    .restart local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@35
    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@37
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 856
    :cond_1
    iput-wide p9, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    #@3e
    .line 857
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    #@40
    .line 858
    iput p7, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    #@42
    .line 842
    return-void

    #@43
    .line 850
    .end local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_2
    invoke-static {p1, p5, p6}, Lcom/android/server/AlarmManagerService;->-wrap1(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@46
    move-result-object v1

    #@47
    goto :goto_0
.end method
