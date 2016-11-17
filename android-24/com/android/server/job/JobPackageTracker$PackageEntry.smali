.class final Lcom/android/server/job/JobPackageTracker$PackageEntry;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageEntry"
.end annotation


# instance fields
.field activeCount:I

.field activeNesting:I

.field activeStartTime:J

.field activeTopCount:I

.field activeTopNesting:I

.field activeTopStartTime:J

.field hadActive:Z

.field hadActiveTop:Z

.field hadPending:Z

.field pastActiveTime:J

.field pastActiveTopTime:J

.field pastPendingTime:J

.field pendingCount:I

.field pendingNesting:I

.field pendingStartTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getActiveTime(J)J
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 78
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@2
    .line 79
    .local v0, "time":J
    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@4
    if-lez v2, :cond_0

    #@6
    .line 80
    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    #@8
    sub-long v2, p1, v2

    #@a
    add-long/2addr v0, v2

    #@b
    .line 82
    :cond_0
    return-wide v0
.end method

.method public getActiveTopTime(J)J
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@2
    .line 87
    .local v0, "time":J
    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@4
    if-lez v2, :cond_0

    #@6
    .line 88
    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    #@8
    sub-long v2, p1, v2

    #@a
    add-long/2addr v0, v2

    #@b
    .line 90
    :cond_0
    return-wide v0
.end method

.method public getPendingTime(J)J
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@2
    .line 95
    .local v0, "time":J
    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@4
    if-lez v2, :cond_0

    #@6
    .line 96
    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    #@8
    sub-long v2, p1, v2

    #@a
    add-long/2addr v0, v2

    #@b
    .line 98
    :cond_0
    return-wide v0
.end method
