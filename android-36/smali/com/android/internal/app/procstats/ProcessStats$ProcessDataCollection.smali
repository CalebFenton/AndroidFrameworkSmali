.class public final Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDataCollection"
.end annotation


# instance fields
.field public blacklist avgPss:J

.field public blacklist avgRss:J

.field public blacklist avgUss:J

.field public blacklist maxPss:J

.field public blacklist maxRss:J

.field public blacklist maxUss:J

.field final blacklist memStates:[I

.field public blacklist minPss:J

.field public blacklist minRss:J

.field public blacklist minUss:J

.field public blacklist numPss:J

.field final blacklist procStates:[I

.field final blacklist screenStates:[I

.field public blacklist totalTime:J


# direct methods
.method public constructor blacklist <init>([I[I[I)V
    .registers 4
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I
    .param p3, "_procStates"    # [I

    .line 2694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2695
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    .line 2696
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    .line 2697
    iput-object p3, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    .line 2698
    return-void
.end method


# virtual methods
.method blacklist print(Ljava/io/PrintWriter;JZ)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "overallTime"    # J
    .param p4, "full"    # Z

    .line 2701
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_b

    .line 2702
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2704
    :cond_b
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v0, v0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 2705
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_85

    .line 2706
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2707
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2708
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2709
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2710
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2711
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2712
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2713
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2714
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2716
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2717
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2718
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2719
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2720
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2722
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2723
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2724
    if-eqz p4, :cond_80

    .line 2725
    const-string v0, " over "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2726
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 2728
    :cond_80
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2730
    :cond_85
    return-void
.end method
