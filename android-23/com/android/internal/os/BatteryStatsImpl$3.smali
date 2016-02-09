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

.field final synthetic val$cpuSpeedSteps:I

.field final synthetic val$cpuSpeeds:[J

.field final synthetic val$numWakelocksF:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;II[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "val$numWakelocksF"    # I
    .param p3, "val$cpuSpeedSteps"    # I
    .param p4, "val$cpuSpeeds"    # [J

    #@0
    .prologue
    .line 8033
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    #@4
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$cpuSpeedSteps:I

    #@6
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$cpuSpeeds:[J

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "userTimeUs"    # J
    .param p4, "systemTimeUs"    # J
    .param p6, "powerMaUs"    # J

    #@0
    .prologue
    .line 8037
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@4
    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@7
    move-result v4

    #@8
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@b
    move-result-object v2

    #@c
    .line 8040
    .local v2, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@10
    add-long/2addr v4, p2

    #@11
    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@13
    .line 8041
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@15
    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@17
    add-long/2addr v4, p4

    #@18
    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@1a
    .line 8043
    const/4 v1, 0x0

    #@1b
    .line 8053
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    #@1d
    if-lez v3, :cond_0

    #@1f
    .line 8057
    const-wide/16 v4, 0x32

    #@21
    mul-long/2addr v4, p2

    #@22
    const-wide/16 v6, 0x64

    #@24
    div-long p2, v4, v6

    #@26
    .line 8058
    const-wide/16 v4, 0x32

    #@28
    mul-long/2addr v4, p4

    #@29
    const-wide/16 v6, 0x64

    #@2b
    div-long p4, v4, v6

    #@2d
    .line 8070
    :cond_0
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2f
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@32
    .line 8071
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@34
    invoke-virtual {v3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@37
    .line 8072
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@39
    invoke-virtual {v3, p6, p7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@3c
    .line 8076
    const/4 v0, 0x0

    #@3d
    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$cpuSpeedSteps:I

    #@3f
    if-ge v0, v3, :cond_2

    #@41
    .line 8077
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@43
    aget-object v3, v3, v0

    #@45
    if-nez v3, :cond_1

    #@47
    .line 8078
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@49
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4b
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@4d
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@4f
    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@52
    aput-object v4, v3, v0

    #@54
    .line 8080
    :cond_1
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@56
    aget-object v3, v3, v0

    #@58
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$cpuSpeeds:[J

    #@5a
    aget-wide v4, v4, v0

    #@5c
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@5f
    .line 8076
    add-int/lit8 v0, v0, 0x1

    #@61
    goto :goto_0

    #@62
    .line 8036
    :cond_2
    return-void
.end method
