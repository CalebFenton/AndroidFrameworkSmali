.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$clusterSpeeds:[[J

.field final synthetic val$numWakelocksF:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I[[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "val$numWakelocksF"    # I
    .param p3, "val$clusterSpeeds"    # [[J

    #@0
    .prologue
    .line 9371
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    #@4
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$clusterSpeeds:[[J

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJJ)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "userTimeUs"    # J
    .param p4, "systemTimeUs"    # J
    .param p6, "powerMaUs"    # J

    #@0
    .prologue
    .line 9375
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@4
    invoke-virtual {v10, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@7
    move-result v10

    #@8
    invoke-virtual {v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@b
    move-result-object v8

    #@c
    .line 9378
    .local v8, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    iget-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@10
    add-long v10, v10, p2

    #@12
    iput-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@14
    .line 9379
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@16
    iget-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@18
    add-long v10, v10, p4

    #@1a
    iput-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@1c
    .line 9381
    const/4 v5, 0x0

    #@1d
    .line 9391
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    #@1f
    if-lez v9, :cond_0

    #@21
    .line 9395
    const-wide/16 v10, 0x32

    #@23
    mul-long v10, v10, p2

    #@25
    const-wide/16 v12, 0x64

    #@27
    div-long p2, v10, v12

    #@29
    .line 9396
    const-wide/16 v10, 0x32

    #@2b
    mul-long v10, v10, p4

    #@2d
    const-wide/16 v12, 0x64

    #@2f
    div-long p4, v10, v12

    #@31
    .line 9408
    :cond_0
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@33
    move-wide/from16 v0, p2

    #@35
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@38
    .line 9409
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3a
    move-wide/from16 v0, p4

    #@3c
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@3f
    .line 9410
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@41
    move-wide/from16 v0, p6

    #@43
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@46
    .line 9414
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@48
    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsImpl;->-get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    #@4f
    move-result v4

    #@50
    .line 9415
    .local v4, "numClusters":I
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@52
    if-eqz v9, :cond_1

    #@54
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@56
    array-length v9, v9

    #@57
    if-eq v9, v4, :cond_2

    #@59
    .line 9417
    :cond_1
    new-array v9, v4, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5b
    iput-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5d
    .line 9420
    :cond_2
    const/4 v2, 0x0

    #@5e
    .local v2, "cluster":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$clusterSpeeds:[[J

    #@60
    array-length v9, v9

    #@61
    if-ge v2, v9, :cond_7

    #@63
    .line 9421
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@65
    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsImpl;->-get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    #@6c
    move-result v7

    #@6d
    .line 9423
    .local v7, "speedsInCluster":I
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6f
    aget-object v9, v9, v2

    #@71
    if-eqz v9, :cond_3

    #@73
    .line 9424
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@75
    aget-object v9, v9, v2

    #@77
    array-length v9, v9

    #@78
    .line 9423
    if-eq v7, v9, :cond_4

    #@7a
    .line 9425
    :cond_3
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@7c
    .line 9426
    new-array v10, v7, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@7e
    .line 9425
    aput-object v10, v9, v2

    #@80
    .line 9429
    :cond_4
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@82
    aget-object v3, v9, v2

    #@84
    .line 9430
    .local v3, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    const/4 v6, 0x0

    #@85
    .local v6, "speed":I
    :goto_1
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$clusterSpeeds:[[J

    #@87
    aget-object v9, v9, v2

    #@89
    array-length v9, v9

    #@8a
    if-ge v6, v9, :cond_6

    #@8c
    .line 9431
    aget-object v9, v3, v6

    #@8e
    if-nez v9, :cond_5

    #@90
    .line 9432
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@92
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@94
    iget-object v10, v10, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@96
    invoke-direct {v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@99
    aput-object v9, v3, v6

    #@9b
    .line 9434
    :cond_5
    aget-object v9, v3, v6

    #@9d
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$clusterSpeeds:[[J

    #@9f
    aget-object v10, v10, v2

    #@a1
    aget-wide v10, v10, v6

    #@a3
    invoke-virtual {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@a6
    .line 9430
    add-int/lit8 v6, v6, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 9420
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@ab
    goto :goto_0

    #@ac
    .line 9374
    .end local v3    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v6    # "speed":I
    .end local v7    # "speedsInCluster":I
    :cond_7
    return-void
.end method
