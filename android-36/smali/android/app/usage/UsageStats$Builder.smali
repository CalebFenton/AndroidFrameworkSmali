.class public final Landroid/app/usage/UsageStats$Builder;
.super Ljava/lang/Object;
.source "UsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mUsageStats:Landroid/app/usage/UsageStats;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/usage/UsageStats;
    .registers 2

    .line 787
    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object v0
.end method

.method public blacklist setFirstTimeStamp(J)Landroid/app/usage/UsageStats$Builder;
    .registers 4
    .param p1, "firstTimeStamp"    # J

    .line 798
    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-wide p1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 799
    return-object p0
.end method

.method public blacklist setLastTimeStamp(J)Landroid/app/usage/UsageStats$Builder;
    .registers 4
    .param p1, "lastTimeStamp"    # J

    .line 804
    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-wide p1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 805
    return-object p0
.end method

.method public blacklist setLastTimeUsed(J)Landroid/app/usage/UsageStats$Builder;
    .registers 4
    .param p1, "lastTimeUsed"    # J

    .line 816
    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-wide p1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 817
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/app/usage/UsageStats$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 792
    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-object p1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 793
    return-object p0
.end method

.method public blacklist setTotalTimeInForeground(J)Landroid/app/usage/UsageStats$Builder;
    .registers 4
    .param p1, "totalTimeInForeground"    # J

    .line 810
    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-wide p1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 811
    return-object p0
.end method
