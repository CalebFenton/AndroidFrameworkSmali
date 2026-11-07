.class public Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameworkStatsLogEvent"
.end annotation


# instance fields
.field public final blacklist action:I

.field public final blacklist durationMillis:I

.field public final blacklist logCode:I

.field public final blacklist statsdAction:I


# direct methods
.method private constructor blacklist <init>(IIII)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "logCode"    # I
    .param p3, "statsdAction"    # I
    .param p4, "durationMillis"    # I

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    iput p1, p0, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->action:I

    .line 1010
    iput p2, p0, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->logCode:I

    .line 1011
    iput p3, p0, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->statsdAction:I

    .line 1012
    iput p4, p0, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->durationMillis:I

    .line 1013
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIILcom/android/internal/util/LatencyTracker-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameworkStatsLogEvent{ logCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->logCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statsdAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->statsdAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
