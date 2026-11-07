.class public final Landroid/health/connect/LocalTimeRangeFilter$Builder;
.super Ljava/lang/Object;
.source "LocalTimeRangeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/LocalTimeRangeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLocalEndTime:Ljava/time/LocalDateTime;

.field private blacklist mLocalStartTime:Ljava/time/LocalDateTime;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/LocalTimeRangeFilter;
    .registers 5

    .line 135
    new-instance v0, Landroid/health/connect/LocalTimeRangeFilter;

    iget-object v1, p0, Landroid/health/connect/LocalTimeRangeFilter$Builder;->mLocalStartTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Landroid/health/connect/LocalTimeRangeFilter$Builder;->mLocalEndTime:Ljava/time/LocalDateTime;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/LocalTimeRangeFilter;-><init>(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Landroid/health/connect/LocalTimeRangeFilter-IA;)V

    return-object v0
.end method

.method public whitelist setEndTime(Ljava/time/LocalDateTime;)Landroid/health/connect/LocalTimeRangeFilter$Builder;
    .registers 2
    .param p1, "localEndTime"    # Ljava/time/LocalDateTime;

    .line 128
    iput-object p1, p0, Landroid/health/connect/LocalTimeRangeFilter$Builder;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 129
    return-object p0
.end method

.method public whitelist setStartTime(Ljava/time/LocalDateTime;)Landroid/health/connect/LocalTimeRangeFilter$Builder;
    .registers 2
    .param p1, "localStartTime"    # Ljava/time/LocalDateTime;

    .line 118
    iput-object p1, p0, Landroid/health/connect/LocalTimeRangeFilter$Builder;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 119
    return-object p0
.end method
