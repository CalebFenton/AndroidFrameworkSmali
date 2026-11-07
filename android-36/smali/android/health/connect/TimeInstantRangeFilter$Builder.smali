.class public final Landroid/health/connect/TimeInstantRangeFilter$Builder;
.super Ljava/lang/Object;
.source "TimeInstantRangeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/TimeInstantRangeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mStartTime:Ljava/time/Instant;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/TimeInstantRangeFilter;
    .registers 5

    .line 126
    new-instance v0, Landroid/health/connect/TimeInstantRangeFilter;

    iget-object v1, p0, Landroid/health/connect/TimeInstantRangeFilter$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v2, p0, Landroid/health/connect/TimeInstantRangeFilter$Builder;->mEndTime:Ljava/time/Instant;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/TimeInstantRangeFilter;-><init>(Ljava/time/Instant;Ljava/time/Instant;Landroid/health/connect/TimeInstantRangeFilter-IA;)V

    return-object v0
.end method

.method public whitelist setEndTime(Ljava/time/Instant;)Landroid/health/connect/TimeInstantRangeFilter$Builder;
    .registers 2
    .param p1, "endTime"    # Ljava/time/Instant;

    .line 119
    iput-object p1, p0, Landroid/health/connect/TimeInstantRangeFilter$Builder;->mEndTime:Ljava/time/Instant;

    .line 120
    return-object p0
.end method

.method public whitelist setStartTime(Ljava/time/Instant;)Landroid/health/connect/TimeInstantRangeFilter$Builder;
    .registers 2
    .param p1, "startTime"    # Ljava/time/Instant;

    .line 110
    iput-object p1, p0, Landroid/health/connect/TimeInstantRangeFilter$Builder;->mStartTime:Ljava/time/Instant;

    .line 111
    return-object p0
.end method
