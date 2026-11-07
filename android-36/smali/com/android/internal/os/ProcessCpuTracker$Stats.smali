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
.field public blacklist active:Z

.field public blacklist added:Z

.field public blacklist baseName:Ljava/lang/String;

.field public blacklist base_majfaults:J

.field public blacklist base_minfaults:J

.field public blacklist base_stime:J

.field public blacklist base_uptime:J

.field public blacklist base_utime:J

.field public blacklist batteryStats:Landroid/os/BatteryStats$Uid$Proc;

.field final blacklist cmdlineFile:Ljava/lang/String;

.field public blacklist interesting:Z

.field public greylist-max-r name:Ljava/lang/String;

.field public blacklist nameWidth:I

.field public final blacklist pid:I

.field public blacklist rel_majfaults:I

.field public blacklist rel_minfaults:I

.field public greylist-max-r rel_stime:I

.field public greylist-max-r rel_uptime:J

.field public greylist-max-r rel_utime:I

.field public blacklist removed:Z

.field final blacklist statFile:Ljava/lang/String;

.field final blacklist threadStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist threadsDir:Ljava/lang/String;

.field public final blacklist uid:I

.field public blacklist vsize:J

.field public blacklist working:Z

.field final blacklist workingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(IIZ)V
    .registers 10
    .param p1, "_pid"    # I
    .param p2, "parentPid"    # I
    .param p3, "includeThreads"    # Z

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p1, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 262
    const-string/jumbo v0, "stat"

    const-string/jumbo v1, "task"

    const-string v2, "/proc"

    const/4 v3, 0x0

    if-gez p2, :cond_5e

    .line 263
    new-instance v4, Ljava/io/File;

    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v4, "procDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/ProcessCpuTracker$Stats;->getUid(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 265
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/io/File;

    const-string v2, "cmdline"

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    .line 268
    if-eqz p3, :cond_59

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    goto :goto_5d

    .line 272
    :cond_59
    iput-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 273
    iput-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 275
    .end local v4    # "procDir":Ljava/io/File;
    :goto_5d
    goto :goto_94

    .line 276
    :cond_5e
    new-instance v4, Ljava/io/File;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .restart local v4    # "procDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v2, "taskDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ProcessCpuTracker$Stats;->getUid(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 281
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    .line 282
    iput-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    .line 283
    iput-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    .line 284
    iput-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 285
    iput-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 287
    .end local v2    # "taskDir":Ljava/io/File;
    .end local v4    # "procDir":Ljava/io/File;
    :goto_94
    return-void
.end method

.method private static blacklist getUid(Ljava/lang/String;)I
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 291
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_uid:I
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 292
    :catch_7
    move-exception v0

    .line 293
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to stat("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessCpuTracker"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v1, -0x1

    return v1
.end method
