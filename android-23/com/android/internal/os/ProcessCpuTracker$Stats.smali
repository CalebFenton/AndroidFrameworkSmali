.class public Lcom/android/internal/os/ProcessCpuTracker$Stats;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public active:Z

.field public added:Z

.field public baseName:Ljava/lang/String;

.field public base_majfaults:J

.field public base_minfaults:J

.field public base_stime:J

.field public base_uptime:J

.field public base_utime:J

.field public batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field final cmdlineFile:Ljava/lang/String;

.field public interesting:Z

.field public name:Ljava/lang/String;

.field public nameWidth:I

.field public final pid:I

.field public rel_majfaults:I

.field public rel_minfaults:I

.field public rel_stime:I

.field public rel_uptime:J

.field public rel_utime:I

.field public removed:Z

.field final statFile:Ljava/lang/String;

.field final threadStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field final threadsDir:Ljava/lang/String;

.field public final uid:I

.field public vsize:J

.field public working:Z

.field final workingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIZ)V
    .locals 5
    .param p1, "_pid"    # I
    .param p2, "parentPid"    # I
    .param p3, "includeThreads"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 237
    iput p1, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@6
    .line 238
    if-gez p2, :cond_1

    #@8
    .line 239
    new-instance v0, Ljava/io/File;

    #@a
    const-string/jumbo v2, "/proc"

    #@d
    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@f
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 240
    .local v0, "procDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@18
    const-string/jumbo v3, "stat"

    #@1b
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    #@24
    .line 241
    new-instance v2, Ljava/io/File;

    #@26
    const-string/jumbo v3, "cmdline"

    #@29
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2c
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    #@32
    .line 242
    new-instance v2, Ljava/io/File;

    #@34
    const-string/jumbo v3, "task"

    #@37
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3a
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    #@40
    .line 243
    if-eqz p3, :cond_0

    #@42
    .line 244
    new-instance v2, Ljava/util/ArrayList;

    #@44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@49
    .line 245
    new-instance v2, Ljava/util/ArrayList;

    #@4b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@4e
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@50
    .line 261
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    #@52
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-static {v2}, Landroid/os/FileUtils;->getUid(Ljava/lang/String;)I

    #@59
    move-result v2

    #@5a
    iput v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    #@5c
    .line 236
    return-void

    #@5d
    .line 247
    :cond_0
    iput-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@5f
    .line 248
    iput-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@61
    goto :goto_0

    #@62
    .line 251
    .end local v0    # "procDir":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    #@64
    const-string/jumbo v2, "/proc"

    #@67
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6e
    .line 253
    .restart local v0    # "procDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@70
    .line 254
    new-instance v2, Ljava/io/File;

    #@72
    const-string/jumbo v3, "task"

    #@75
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@78
    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@7a
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    .line 253
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@81
    .line 255
    .local v1, "taskDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@83
    const-string/jumbo v3, "stat"

    #@86
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@89
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    #@8f
    .line 256
    iput-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    #@91
    .line 257
    iput-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    #@93
    .line 258
    iput-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@95
    .line 259
    iput-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@97
    goto :goto_0
.end method
