.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Proc"
.end annotation


# instance fields
.field mActive:Z

.field mExcessivePower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundTime:J

.field mLoadedForegroundTime:J

.field mLoadedNumAnrs:I

.field mLoadedNumCrashes:I

.field mLoadedStarts:I

.field mLoadedSystemTime:J

.field mLoadedUserTime:J

.field final mName:Ljava/lang/String;

.field mNumAnrs:I

.field mNumCrashes:I

.field mProcessState:I

.field mStarts:I

.field mSystemTime:J

.field mUnpluggedForegroundTime:J

.field mUnpluggedNumAnrs:I

.field mUnpluggedNumCrashes:I

.field mUnpluggedStarts:I

.field mUnpluggedSystemTime:J

.field mUnpluggedUserTime:J

.field mUserTime:J

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5968
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    #@5
    .line 5869
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    #@8
    .line 5964
    const/4 v0, 0x3

    #@9
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    #@b
    .line 5969
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mName:Ljava/lang/String;

    #@d
    .line 5970
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@11
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@14
    .line 5968
    return-void
.end method


# virtual methods
.method public addCpuTimeLocked(II)V
    .locals 4
    .param p1, "utime"    # I
    .param p2, "stime"    # I

    #@0
    .prologue
    .line 6116
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@6
    .line 6117
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@8
    int-to-long v2, p2

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@c
    .line 6115
    return-void
.end method

.method public addExcessiveCpu(JJ)V
    .locals 3
    .param p1, "overTime"    # J
    .param p3, "usedTime"    # J

    #@0
    .prologue
    .line 6023
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6024
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@b
    .line 6026
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    #@d
    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    #@10
    .line 6027
    .local v0, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x2

    #@11
    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@13
    .line 6028
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@15
    .line 6029
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@17
    .line 6030
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 6022
    return-void
.end method

.method public addExcessiveWake(JJ)V
    .locals 3
    .param p1, "overTime"    # J
    .param p3, "usedTime"    # J

    #@0
    .prologue
    .line 6012
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6013
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@b
    .line 6015
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    #@d
    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    #@10
    .line 6016
    .local v0, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x1

    #@11
    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@13
    .line 6017
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@15
    .line 6018
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@17
    .line 6019
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 6011
    return-void
.end method

.method public addForegroundTimeLocked(J)V
    .locals 3
    .param p1, "ttime"    # J

    #@0
    .prologue
    .line 6121
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@5
    .line 6120
    return-void
.end method

.method public countExcessivePowers()I
    .locals 1

    #@0
    .prologue
    .line 6001
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method detach()V
    .locals 1

    #@0
    .prologue
    .line 5996
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    #@3
    .line 5997
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@c
    .line 5995
    return-void
.end method

.method public getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6005
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 6006
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    #@d
    return-object v0

    #@e
    .line 6008
    :cond_0
    return-object v1
.end method

.method public getForegroundTime(I)J
    .locals 4
    .param p1, "which"    # I

    #@0
    .prologue
    .line 6165
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@2
    .line 6166
    .local v0, "val":J
    const/4 v2, 0x1

    #@3
    if-ne p1, v2, :cond_1

    #@5
    .line 6167
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    #@7
    sub-long/2addr v0, v2

    #@8
    .line 6171
    :cond_0
    :goto_0
    return-wide v0

    #@9
    .line 6168
    :cond_1
    const/4 v2, 0x2

    #@a
    if-ne p1, v2, :cond_0

    #@c
    .line 6169
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    #@e
    sub-long/2addr v0, v2

    #@f
    goto :goto_0
.end method

.method public getNumAnrs(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 6198
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@2
    .line 6199
    .local v0, "val":I
    const/4 v1, 0x1

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 6200
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    #@7
    sub-int/2addr v0, v1

    #@8
    .line 6204
    :cond_0
    :goto_0
    return v0

    #@9
    .line 6201
    :cond_1
    const/4 v1, 0x2

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 6202
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumAnrs:I

    #@e
    sub-int/2addr v0, v1

    #@f
    goto :goto_0
.end method

.method public getNumCrashes(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 6187
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@2
    .line 6188
    .local v0, "val":I
    const/4 v1, 0x1

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 6189
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    #@7
    sub-int/2addr v0, v1

    #@8
    .line 6193
    :cond_0
    :goto_0
    return v0

    #@9
    .line 6190
    :cond_1
    const/4 v1, 0x2

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 6191
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumCrashes:I

    #@e
    sub-int/2addr v0, v1

    #@f
    goto :goto_0
.end method

.method public getStarts(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 6176
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@2
    .line 6177
    .local v0, "val":I
    const/4 v1, 0x1

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 6178
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    #@7
    sub-int/2addr v0, v1

    #@8
    .line 6182
    :cond_0
    :goto_0
    return v0

    #@9
    .line 6179
    :cond_1
    const/4 v1, 0x2

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 6180
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    #@e
    sub-int/2addr v0, v1

    #@f
    goto :goto_0
.end method

.method public getSystemTime(I)J
    .locals 4
    .param p1, "which"    # I

    #@0
    .prologue
    .line 6154
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@2
    .line 6155
    .local v0, "val":J
    const/4 v2, 0x1

    #@3
    if-ne p1, v2, :cond_1

    #@5
    .line 6156
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    #@7
    sub-long/2addr v0, v2

    #@8
    .line 6160
    :cond_0
    :goto_0
    return-wide v0

    #@9
    .line 6157
    :cond_1
    const/4 v2, 0x2

    #@a
    if-ne p1, v2, :cond_0

    #@c
    .line 6158
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    #@e
    sub-long/2addr v0, v2

    #@f
    goto :goto_0
.end method

.method public getUserTime(I)J
    .locals 4
    .param p1, "which"    # I

    #@0
    .prologue
    .line 6143
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@2
    .line 6144
    .local v0, "val":J
    const/4 v2, 0x1

    #@3
    if-ne p1, v2, :cond_1

    #@5
    .line 6145
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    #@7
    sub-long/2addr v0, v2

    #@8
    .line 6149
    :cond_0
    :goto_0
    return-wide v0

    #@9
    .line 6146
    :cond_1
    const/4 v2, 0x2

    #@a
    if-ne p1, v2, :cond_0

    #@c
    .line 6147
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    #@e
    sub-long/2addr v0, v2

    #@f
    goto :goto_0
.end method

.method public incNumAnrsLocked()V
    .locals 1

    #@0
    .prologue
    .line 6133
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@6
    .line 6132
    return-void
.end method

.method public incNumCrashesLocked()V
    .locals 1

    #@0
    .prologue
    .line 6129
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@6
    .line 6128
    return-void
.end method

.method public incStartsLocked()V
    .locals 1

    #@0
    .prologue
    .line 6125
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@6
    .line 6124
    return-void
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 6138
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    #@2
    return v0
.end method

.method public onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 5974
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    #@4
    .line 5975
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@6
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    #@8
    .line 5976
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    #@c
    .line 5977
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@e
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    #@10
    .line 5978
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@12
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumCrashes:I

    #@14
    .line 5979
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@16
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumAnrs:I

    #@18
    .line 5973
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 5982
    return-void
.end method

.method readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6050
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 6051
    .local v0, "N":I
    if-nez v0, :cond_0

    #@6
    .line 6052
    const/4 v3, 0x0

    #@7
    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@9
    .line 6053
    return-void

    #@a
    .line 6056
    :cond_0
    const/16 v3, 0x2710

    #@c
    if-le v0, v3, :cond_1

    #@e
    .line 6057
    new-instance v3, Landroid/os/ParcelFormatException;

    #@10
    .line 6058
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "File corrupt: too many excessive power entries "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 6057
    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 6061
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@2f
    .line 6062
    const/4 v2, 0x0

    #@30
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@32
    .line 6063
    new-instance v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    #@34
    invoke-direct {v1}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    #@37
    .line 6064
    .local v1, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v3

    #@3b
    iput v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@3d
    .line 6065
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@40
    move-result-wide v4

    #@41
    iput-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@43
    .line 6066
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@46
    move-result-wide v4

    #@47
    iput-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@49
    .line 6067
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e
    .line 6062
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 6049
    .end local v1    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_2
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6094
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@6
    .line 6095
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@c
    .line 6096
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@12
    .line 6097
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@18
    .line 6098
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@1e
    .line 6099
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@24
    .line 6100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@27
    move-result-wide v0

    #@28
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    #@2a
    .line 6101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2d
    move-result-wide v0

    #@2e
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    #@30
    .line 6102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@33
    move-result-wide v0

    #@34
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    #@36
    .line 6103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    #@3c
    .line 6104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    #@42
    .line 6105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    #@48
    .line 6106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4b
    move-result-wide v0

    #@4c
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    #@4e
    .line 6107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@51
    move-result-wide v0

    #@52
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    #@54
    .line 6108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@57
    move-result-wide v0

    #@58
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    #@5a
    .line 6109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v0

    #@5e
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    #@60
    .line 6110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v0

    #@64
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumCrashes:I

    #@66
    .line 6111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumAnrs:I

    #@6c
    .line 6112
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    #@6f
    .line 6093
    return-void
.end method

.method reset()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 5986
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@5
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@7
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@9
    .line 5987
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@b
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@d
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@f
    .line 5988
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    #@11
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    #@13
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    #@15
    .line 5989
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    #@17
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    #@19
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    #@1b
    .line 5990
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    #@1d
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    #@1f
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    #@21
    .line 5991
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumAnrs:I

    #@23
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumCrashes:I

    #@25
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    #@27
    .line 5992
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@2a
    .line 5985
    return-void
.end method

.method writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6034
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 6035
    const/4 v3, 0x0

    #@5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 6036
    return-void

    #@9
    .line 6039
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    .line 6040
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 6041
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@15
    .line 6042
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    #@1d
    .line 6043
    .local v1, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    iget v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    #@1f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 6044
    iget-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    #@24
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 6045
    iget-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    #@29
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@2c
    .line 6041
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 6033
    .end local v1    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_1
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6072
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 6073
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 6074
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 6075
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 6076
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 6077
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 6078
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 6079
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 6080
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2d
    .line 6081
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 6082
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 6083
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 6084
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    #@3e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@41
    .line 6085
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    #@43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@46
    .line 6086
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    #@48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@4b
    .line 6087
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 6088
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumCrashes:I

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 6089
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedNumAnrs:I

    #@57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 6090
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    #@5d
    .line 6071
    return-void
.end method
