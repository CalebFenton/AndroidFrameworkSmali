.class public final Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDataCollection"
.end annotation


# instance fields
.field public avgPss:J

.field public avgUss:J

.field public maxPss:J

.field public maxUss:J

.field final memStates:[I

.field public minPss:J

.field public minUss:J

.field public numPss:J

.field final procStates:[I

.field final screenStates:[I

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 0
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I
    .param p3, "_procStates"    # [I

    #@0
    .prologue
    .line 3738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3739
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    #@5
    .line 3740
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    #@7
    .line 3741
    iput-object p3, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    #@9
    .line 3738
    return-void
.end method


# virtual methods
.method print(Ljava/io/PrintWriter;JZ)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "overallTime"    # J
    .param p4, "full"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x400

    #@2
    .line 3745
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    #@4
    cmp-long v0, v0, p2

    #@6
    if-lez v0, :cond_0

    #@8
    .line 3746
    const-string/jumbo v0, "*"

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 3748
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    #@10
    long-to-double v0, v0

    #@11
    long-to-double v2, p2

    #@12
    div-double/2addr v0, v2

    #@13
    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    #@16
    .line 3749
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    #@18
    const-wide/16 v2, 0x0

    #@1a
    cmp-long v0, v0, v2

    #@1c
    if-lez v0, :cond_2

    #@1e
    .line 3750
    const-string/jumbo v0, " ("

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    .line 3751
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    #@26
    mul-long/2addr v0, v4

    #@27
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@2a
    .line 3752
    const-string/jumbo v0, "-"

    #@2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 3753
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    #@32
    mul-long/2addr v0, v4

    #@33
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@36
    .line 3754
    const-string/jumbo v0, "-"

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 3755
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    #@3e
    mul-long/2addr v0, v4

    #@3f
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@42
    .line 3756
    const-string/jumbo v0, "/"

    #@45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 3757
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    #@4a
    mul-long/2addr v0, v4

    #@4b
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@4e
    .line 3758
    const-string/jumbo v0, "-"

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    .line 3759
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    #@56
    mul-long/2addr v0, v4

    #@57
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@5a
    .line 3760
    const-string/jumbo v0, "-"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 3761
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    #@62
    mul-long/2addr v0, v4

    #@63
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@66
    .line 3762
    if-eqz p4, :cond_1

    #@68
    .line 3763
    const-string/jumbo v0, " over "

    #@6b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    .line 3764
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    #@70
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@73
    .line 3766
    :cond_1
    const-string/jumbo v0, ")"

    #@76
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    .line 3744
    :cond_2
    return-void
.end method
