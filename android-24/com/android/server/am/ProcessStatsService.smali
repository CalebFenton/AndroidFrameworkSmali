.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 63
    const-wide/32 v0, 0x1b7740

    #@3
    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    #@5
    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    #@3
    .line 71
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    #@6
    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    .line 75
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    #@14
    .line 82
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@16
    .line 83
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    #@18
    .line 84
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    #@1a
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@1d
    .line 85
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    #@23
    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@25
    .line 86
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    #@28
    .line 87
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    #@2d
    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    #@30
    .line 81
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z

    #@0
    .prologue
    .line 547
    const-wide/16 v4, 0x3c

    #@2
    mul-long/2addr v4, p2

    #@3
    const-wide/16 v6, 0x3c

    #@5
    mul-long/2addr v4, v6

    #@6
    const-wide/16 v6, 0x3e8

    #@8
    mul-long/2addr v4, v6

    #@9
    .line 548
    sget-wide v6, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    #@b
    const-wide/16 v8, 0x2

    #@d
    div-long/2addr v6, v8

    #@e
    .line 547
    sub-long/2addr v4, v6

    #@f
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    #@12
    move-result-object v2

    #@13
    .line 549
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_0

    #@15
    .line 550
    const-string/jumbo v4, "Unable to build stats!"

    #@18
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 551
    return-void

    #@1c
    .line 553
    :cond_0
    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats;

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-direct {v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    #@22
    .line 554
    .local v3, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@24
    invoke-direct {v11, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@27
    .line 555
    .local v11, "stream":Ljava/io/InputStream;
    invoke-virtual {v3, v11}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    #@2a
    .line 556
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 557
    const-string/jumbo v4, "Failure reading: "

    #@31
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@36
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 558
    return-void

    #@3a
    .line 560
    :cond_1
    if-eqz p7, :cond_2

    #@3c
    .line 561
    move-object/from16 v0, p6

    #@3e
    invoke-virtual {v3, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@41
    .line 546
    :goto_0
    return-void

    #@42
    .line 563
    :cond_2
    if-nez p8, :cond_3

    #@44
    if-eqz p9, :cond_5

    #@46
    .line 564
    :cond_3
    if-eqz p9, :cond_4

    #@48
    const/4 v8, 0x0

    #@49
    :goto_1
    move-object v4, p1

    #@4a
    move-object/from16 v5, p6

    #@4c
    move-wide/from16 v6, p4

    #@4e
    move/from16 v9, p10

    #@50
    move/from16 v10, p11

    #@52
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    #@55
    goto :goto_0

    #@56
    :cond_4
    const/4 v8, 0x1

    #@57
    goto :goto_1

    #@58
    :cond_5
    move-object v4, p1

    #@59
    move-object/from16 v5, p6

    #@5b
    move-wide/from16 v6, p4

    #@5d
    move/from16 v8, p11

    #@5f
    .line 566
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    #@62
    goto :goto_0
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 572
    const-string/jumbo v0, "Process stats (procstats) dump options:"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 573
    const-string/jumbo v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 574
    const-string/jumbo v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 575
    const-string/jumbo v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    #@15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 576
    const-string/jumbo v0, "    [--start-testing] [--stop-testing] [<package.name>]"

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 577
    const-string/jumbo v0, "  --checkin: perform a checkin: print and delete old committed states."

    #@21
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 578
    const-string/jumbo v0, "  -c: print only state in checkin format."

    #@27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 579
    const-string/jumbo v0, "  --csv: output data suitable for putting in a spreadsheet."

    #@2d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 580
    const-string/jumbo v0, "  --csv-screen: on, off."

    #@33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 581
    const-string/jumbo v0, "  --csv-mem: norm, mod, low, crit."

    #@39
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 582
    const-string/jumbo v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    #@3f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 583
    const-string/jumbo v0, "    service, home, prev, cached"

    #@45
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 584
    const-string/jumbo v0, "  --details: dump per-package details, not just summary."

    #@4b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 585
    const-string/jumbo v0, "  --full-details: dump all timing and active state details."

    #@51
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 586
    const-string/jumbo v0, "  --current: only dump current state."

    #@57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 587
    const-string/jumbo v0, "  --hours: aggregate over about N last hours."

    #@5d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 588
    const-string/jumbo v0, "  --last: only show the last committed stats at index N (starting at 1)."

    #@63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 589
    const-string/jumbo v0, "  --max: for -a, max num of historical batches to print."

    #@69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 590
    const-string/jumbo v0, "  --active: only show currently active processes/services."

    #@6f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 591
    const-string/jumbo v0, "  --commit: commit current stats to disk and reset to start new stats."

    #@75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 592
    const-string/jumbo v0, "  --reset: reset current stats, without committing."

    #@7b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 593
    const-string/jumbo v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    #@81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 594
    const-string/jumbo v0, "  --write: write current in-memory stats to disk."

    #@87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 595
    const-string/jumbo v0, "  --read: replace current stats with last-written stats."

    #@8d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@90
    .line 596
    const-string/jumbo v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    #@93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@96
    .line 597
    const-string/jumbo v0, "  --stop-testing: stop high frequency pss sampling."

    #@99
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9c
    .line 598
    const-string/jumbo v0, "  -a: print everything."

    #@9f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 599
    const-string/jumbo v0, "  -h: print this help text."

    #@a5
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a8
    .line 600
    const-string/jumbo v0, "  <package.name>: optional name of package to filter output by."

    #@ab
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae
    .line 571
    return-void
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 55
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v12

    #@4
    .line 624
    .local v12, "now":J
    const/16 v47, 0x0

    #@6
    .line 625
    .local v47, "isCheckin":Z
    const/16 v23, 0x0

    #@8
    .line 626
    .local v23, "isCompact":Z
    const/16 v48, 0x0

    #@a
    .line 627
    .local v48, "isCsv":Z
    const/16 v38, 0x0

    #@c
    .line 628
    .local v38, "currentOnly":Z
    const/16 v24, 0x0

    #@e
    .line 629
    .local v24, "dumpDetails":Z
    const/16 v25, 0x0

    #@10
    .line 630
    .local v25, "dumpFullDetails":Z
    const/16 v26, 0x0

    #@12
    .line 631
    .local v26, "dumpAll":Z
    const/16 v51, 0x0

    #@14
    .line 632
    .local v51, "quit":Z
    const/4 v2, 0x0

    #@15
    .line 633
    .local v2, "aggregateHours":I
    const/16 v49, 0x0

    #@17
    .line 634
    .local v49, "lastIndex":I
    const/16 v50, 0x2

    #@19
    .line 635
    .local v50, "maxNum":I
    const/16 v27, 0x0

    #@1b
    .line 636
    .local v27, "activeOnly":Z
    const/4 v14, 0x0

    #@1c
    .line 637
    .local v14, "reqPackage":Ljava/lang/String;
    const/4 v6, 0x0

    #@1d
    .line 638
    .local v6, "csvSepScreenStats":Z
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x4

    #@1f
    filled-new-array {v3, v4}, [I

    #@22
    move-result-object v7

    #@23
    .line 639
    .local v7, "csvScreenStats":[I
    const/4 v8, 0x0

    #@24
    .line 640
    .local v8, "csvSepMemStats":Z
    const/4 v3, 0x1

    #@25
    new-array v9, v3, [I

    #@27
    const/4 v3, 0x3

    #@28
    const/4 v4, 0x0

    #@29
    aput v3, v9, v4

    #@2b
    .line 641
    .local v9, "csvMemStats":[I
    const/4 v10, 0x1

    #@2c
    .line 642
    .local v10, "csvSepProcStats":Z
    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    #@2e
    .line 643
    .local v11, "csvProcStats":[I
    if-eqz p3, :cond_21

    #@30
    .line 644
    const/16 v46, 0x0

    #@32
    .end local v6    # "csvSepScreenStats":Z
    .end local v8    # "csvSepMemStats":Z
    .end local v10    # "csvSepProcStats":Z
    .end local v14    # "reqPackage":Ljava/lang/String;
    .local v46, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@34
    array-length v3, v0

    #@35
    move/from16 v0, v46

    #@37
    if-ge v0, v3, :cond_21

    #@39
    .line 645
    aget-object v28, p3, v46

    #@3b
    .line 646
    .local v28, "arg":Ljava/lang/String;
    const-string/jumbo v3, "--checkin"

    #@3e
    move-object/from16 v0, v28

    #@40
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_0

    #@46
    .line 647
    const/16 v47, 0x1

    #@48
    .line 644
    :goto_1
    add-int/lit8 v46, v46, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 648
    :cond_0
    const-string/jumbo v3, "-c"

    #@4e
    move-object/from16 v0, v28

    #@50
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_1

    #@56
    .line 649
    const/16 v23, 0x1

    #@58
    goto :goto_1

    #@59
    .line 650
    :cond_1
    const-string/jumbo v3, "--csv"

    #@5c
    move-object/from16 v0, v28

    #@5e
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_2

    #@64
    .line 651
    const/16 v48, 0x1

    #@66
    goto :goto_1

    #@67
    .line 652
    :cond_2
    const-string/jumbo v3, "--csv-screen"

    #@6a
    move-object/from16 v0, v28

    #@6c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_5

    #@72
    .line 653
    add-int/lit8 v46, v46, 0x1

    #@74
    .line 654
    move-object/from16 v0, p3

    #@76
    array-length v3, v0

    #@77
    move/from16 v0, v46

    #@79
    if-lt v0, v3, :cond_3

    #@7b
    .line 655
    const-string/jumbo v3, "Error: argument required for --csv-screen"

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 656
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@86
    .line 657
    return-void

    #@87
    .line 659
    :cond_3
    const/4 v3, 0x1

    #@88
    new-array v0, v3, [Z

    #@8a
    move-object/from16 v52, v0

    #@8c
    .line 660
    .local v52, "sep":[Z
    const/4 v3, 0x1

    #@8d
    new-array v0, v3, [Ljava/lang/String;

    #@8f
    move-object/from16 v41, v0

    #@91
    .line 661
    .local v41, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    #@93
    .line 662
    aget-object v4, p3, v46

    #@95
    const/4 v5, 0x4

    #@96
    .line 661
    move-object/from16 v0, v52

    #@98
    move-object/from16 v1, v41

    #@9a
    invoke-static {v3, v5, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    #@9d
    move-result-object v7

    #@9e
    .line 663
    if-nez v7, :cond_4

    #@a0
    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v4, "Error in \""

    #@a8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v3

    #@ac
    aget-object v4, p3, v46

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    const-string/jumbo v4, "\": "

    #@b5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    const/4 v4, 0x0

    #@ba
    aget-object v4, v41, v4

    #@bc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    move-object/from16 v0, p2

    #@c6
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c9
    .line 665
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@cc
    .line 666
    return-void

    #@cd
    .line 668
    :cond_4
    const/4 v3, 0x0

    #@ce
    aget-boolean v6, v52, v3

    #@d0
    .local v6, "csvSepScreenStats":Z
    goto/16 :goto_1

    #@d2
    .line 669
    .end local v6    # "csvSepScreenStats":Z
    .end local v41    # "error":[Ljava/lang/String;
    .end local v52    # "sep":[Z
    :cond_5
    const-string/jumbo v3, "--csv-mem"

    #@d5
    move-object/from16 v0, v28

    #@d7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@da
    move-result v3

    #@db
    if-eqz v3, :cond_8

    #@dd
    .line 670
    add-int/lit8 v46, v46, 0x1

    #@df
    .line 671
    move-object/from16 v0, p3

    #@e1
    array-length v3, v0

    #@e2
    move/from16 v0, v46

    #@e4
    if-lt v0, v3, :cond_6

    #@e6
    .line 672
    const-string/jumbo v3, "Error: argument required for --csv-mem"

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 673
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@f1
    .line 674
    return-void

    #@f2
    .line 676
    :cond_6
    const/4 v3, 0x1

    #@f3
    new-array v0, v3, [Z

    #@f5
    move-object/from16 v52, v0

    #@f7
    .line 677
    .restart local v52    # "sep":[Z
    const/4 v3, 0x1

    #@f8
    new-array v0, v3, [Ljava/lang/String;

    #@fa
    move-object/from16 v41, v0

    #@fc
    .line 678
    .restart local v41    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    #@fe
    aget-object v4, p3, v46

    #@100
    const/4 v5, 0x1

    #@101
    move-object/from16 v0, v52

    #@103
    move-object/from16 v1, v41

    #@105
    invoke-static {v3, v5, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    #@108
    move-result-object v9

    #@109
    .line 680
    if-nez v9, :cond_7

    #@10b
    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v4, "Error in \""

    #@113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v3

    #@117
    aget-object v4, p3, v46

    #@119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v3

    #@11d
    const-string/jumbo v4, "\": "

    #@120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v3

    #@124
    const/4 v4, 0x0

    #@125
    aget-object v4, v41, v4

    #@127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v3

    #@12b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v3

    #@12f
    move-object/from16 v0, p2

    #@131
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@134
    .line 682
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@137
    .line 683
    return-void

    #@138
    .line 685
    :cond_7
    const/4 v3, 0x0

    #@139
    aget-boolean v8, v52, v3

    #@13b
    .local v8, "csvSepMemStats":Z
    goto/16 :goto_1

    #@13d
    .line 686
    .end local v8    # "csvSepMemStats":Z
    .end local v41    # "error":[Ljava/lang/String;
    .end local v52    # "sep":[Z
    :cond_8
    const-string/jumbo v3, "--csv-proc"

    #@140
    move-object/from16 v0, v28

    #@142
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@145
    move-result v3

    #@146
    if-eqz v3, :cond_b

    #@148
    .line 687
    add-int/lit8 v46, v46, 0x1

    #@14a
    .line 688
    move-object/from16 v0, p3

    #@14c
    array-length v3, v0

    #@14d
    move/from16 v0, v46

    #@14f
    if-lt v0, v3, :cond_9

    #@151
    .line 689
    const-string/jumbo v3, "Error: argument required for --csv-proc"

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@159
    .line 690
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@15c
    .line 691
    return-void

    #@15d
    .line 693
    :cond_9
    const/4 v3, 0x1

    #@15e
    new-array v0, v3, [Z

    #@160
    move-object/from16 v52, v0

    #@162
    .line 694
    .restart local v52    # "sep":[Z
    const/4 v3, 0x1

    #@163
    new-array v0, v3, [Ljava/lang/String;

    #@165
    move-object/from16 v41, v0

    #@167
    .line 695
    .restart local v41    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    #@169
    aget-object v4, p3, v46

    #@16b
    const/4 v5, 0x1

    #@16c
    move-object/from16 v0, v52

    #@16e
    move-object/from16 v1, v41

    #@170
    invoke-static {v3, v5, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    #@173
    move-result-object v11

    #@174
    .line 697
    if-nez v11, :cond_a

    #@176
    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    const-string/jumbo v4, "Error in \""

    #@17e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v3

    #@182
    aget-object v4, p3, v46

    #@184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v3

    #@188
    const-string/jumbo v4, "\": "

    #@18b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v3

    #@18f
    const/4 v4, 0x0

    #@190
    aget-object v4, v41, v4

    #@192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v3

    #@196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v3

    #@19a
    move-object/from16 v0, p2

    #@19c
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19f
    .line 699
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@1a2
    .line 700
    return-void

    #@1a3
    .line 702
    :cond_a
    const/4 v3, 0x0

    #@1a4
    aget-boolean v10, v52, v3

    #@1a6
    .local v10, "csvSepProcStats":Z
    goto/16 :goto_1

    #@1a8
    .line 703
    .end local v10    # "csvSepProcStats":Z
    .end local v41    # "error":[Ljava/lang/String;
    .end local v52    # "sep":[Z
    :cond_b
    const-string/jumbo v3, "--details"

    #@1ab
    move-object/from16 v0, v28

    #@1ad
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b0
    move-result v3

    #@1b1
    if-eqz v3, :cond_c

    #@1b3
    .line 704
    const/16 v24, 0x1

    #@1b5
    goto/16 :goto_1

    #@1b7
    .line 705
    :cond_c
    const-string/jumbo v3, "--full-details"

    #@1ba
    move-object/from16 v0, v28

    #@1bc
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bf
    move-result v3

    #@1c0
    if-eqz v3, :cond_d

    #@1c2
    .line 706
    const/16 v25, 0x1

    #@1c4
    goto/16 :goto_1

    #@1c6
    .line 707
    :cond_d
    const-string/jumbo v3, "--hours"

    #@1c9
    move-object/from16 v0, v28

    #@1cb
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ce
    move-result v3

    #@1cf
    if-eqz v3, :cond_f

    #@1d1
    .line 708
    add-int/lit8 v46, v46, 0x1

    #@1d3
    .line 709
    move-object/from16 v0, p3

    #@1d5
    array-length v3, v0

    #@1d6
    move/from16 v0, v46

    #@1d8
    if-lt v0, v3, :cond_e

    #@1da
    .line 710
    const-string/jumbo v3, "Error: argument required for --hours"

    #@1dd
    move-object/from16 v0, p2

    #@1df
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e2
    .line 711
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@1e5
    .line 712
    return-void

    #@1e6
    .line 715
    :cond_e
    :try_start_0
    aget-object v3, p3, v46

    #@1e8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1eb
    move-result v2

    #@1ec
    goto/16 :goto_1

    #@1ee
    .line 716
    :catch_0
    move-exception v39

    #@1ef
    .line 717
    .local v39, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f4
    const-string/jumbo v4, "Error: --hours argument not an int -- "

    #@1f7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v3

    #@1fb
    aget-object v4, p3, v46

    #@1fd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v3

    #@201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@204
    move-result-object v3

    #@205
    move-object/from16 v0, p2

    #@207
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20a
    .line 718
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@20d
    .line 719
    return-void

    #@20e
    .line 721
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string/jumbo v3, "--last"

    #@211
    move-object/from16 v0, v28

    #@213
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@216
    move-result v3

    #@217
    if-eqz v3, :cond_11

    #@219
    .line 722
    add-int/lit8 v46, v46, 0x1

    #@21b
    .line 723
    move-object/from16 v0, p3

    #@21d
    array-length v3, v0

    #@21e
    move/from16 v0, v46

    #@220
    if-lt v0, v3, :cond_10

    #@222
    .line 724
    const-string/jumbo v3, "Error: argument required for --last"

    #@225
    move-object/from16 v0, p2

    #@227
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22a
    .line 725
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@22d
    .line 726
    return-void

    #@22e
    .line 729
    :cond_10
    :try_start_1
    aget-object v3, p3, v46

    #@230
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@233
    move-result v49

    #@234
    goto/16 :goto_1

    #@236
    .line 730
    :catch_1
    move-exception v39

    #@237
    .line 731
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@239
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23c
    const-string/jumbo v4, "Error: --last argument not an int -- "

    #@23f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v3

    #@243
    aget-object v4, p3, v46

    #@245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v3

    #@249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24c
    move-result-object v3

    #@24d
    move-object/from16 v0, p2

    #@24f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@252
    .line 732
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@255
    .line 733
    return-void

    #@256
    .line 735
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    const-string/jumbo v3, "--max"

    #@259
    move-object/from16 v0, v28

    #@25b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25e
    move-result v3

    #@25f
    if-eqz v3, :cond_13

    #@261
    .line 736
    add-int/lit8 v46, v46, 0x1

    #@263
    .line 737
    move-object/from16 v0, p3

    #@265
    array-length v3, v0

    #@266
    move/from16 v0, v46

    #@268
    if-lt v0, v3, :cond_12

    #@26a
    .line 738
    const-string/jumbo v3, "Error: argument required for --max"

    #@26d
    move-object/from16 v0, p2

    #@26f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@272
    .line 739
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@275
    .line 740
    return-void

    #@276
    .line 743
    :cond_12
    :try_start_2
    aget-object v3, p3, v46

    #@278
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@27b
    move-result v50

    #@27c
    goto/16 :goto_1

    #@27e
    .line 744
    :catch_2
    move-exception v39

    #@27f
    .line 745
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@284
    const-string/jumbo v4, "Error: --max argument not an int -- "

    #@287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v3

    #@28b
    aget-object v4, p3, v46

    #@28d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v3

    #@291
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@294
    move-result-object v3

    #@295
    move-object/from16 v0, p2

    #@297
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29a
    .line 746
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@29d
    .line 747
    return-void

    #@29e
    .line 749
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string/jumbo v3, "--active"

    #@2a1
    move-object/from16 v0, v28

    #@2a3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a6
    move-result v3

    #@2a7
    if-eqz v3, :cond_14

    #@2a9
    .line 750
    const/16 v27, 0x1

    #@2ab
    .line 751
    const/16 v38, 0x1

    #@2ad
    goto/16 :goto_1

    #@2af
    .line 752
    :cond_14
    const-string/jumbo v3, "--current"

    #@2b2
    move-object/from16 v0, v28

    #@2b4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b7
    move-result v3

    #@2b8
    if-eqz v3, :cond_15

    #@2ba
    .line 753
    const/16 v38, 0x1

    #@2bc
    goto/16 :goto_1

    #@2be
    .line 754
    :cond_15
    const-string/jumbo v3, "--commit"

    #@2c1
    move-object/from16 v0, v28

    #@2c3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c6
    move-result v3

    #@2c7
    if-eqz v3, :cond_16

    #@2c9
    .line 755
    move-object/from16 v0, p0

    #@2cb
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2cd
    monitor-enter v4

    #@2ce
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@2d1
    .line 756
    move-object/from16 v0, p0

    #@2d3
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2d5
    iget v5, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@2d7
    or-int/lit8 v5, v5, 0x1

    #@2d9
    iput v5, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@2db
    .line 757
    const/4 v3, 0x1

    #@2dc
    const/4 v5, 0x1

    #@2dd
    move-object/from16 v0, p0

    #@2df
    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    #@2e2
    .line 758
    const-string/jumbo v3, "Process stats committed."

    #@2e5
    move-object/from16 v0, p2

    #@2e7
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2ea
    .line 759
    const/16 v51, 0x1

    #@2ec
    monitor-exit v4

    #@2ed
    .line 755
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2f0
    goto/16 :goto_1

    #@2f2
    :catchall_0
    move-exception v3

    #@2f3
    monitor-exit v4

    #@2f4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2f7
    throw v3

    #@2f8
    .line 761
    :cond_16
    const-string/jumbo v3, "--reset"

    #@2fb
    move-object/from16 v0, v28

    #@2fd
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@300
    move-result v3

    #@301
    if-eqz v3, :cond_17

    #@303
    .line 762
    move-object/from16 v0, p0

    #@305
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@307
    monitor-enter v4

    #@308
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@30b
    .line 763
    move-object/from16 v0, p0

    #@30d
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@30f
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    #@312
    .line 764
    const-string/jumbo v3, "Process stats reset."

    #@315
    move-object/from16 v0, p2

    #@317
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@31a
    .line 765
    const/16 v51, 0x1

    #@31c
    monitor-exit v4

    #@31d
    .line 762
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@320
    goto/16 :goto_1

    #@322
    :catchall_1
    move-exception v3

    #@323
    monitor-exit v4

    #@324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@327
    throw v3

    #@328
    .line 767
    :cond_17
    const-string/jumbo v3, "--clear"

    #@32b
    move-object/from16 v0, v28

    #@32d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@330
    move-result v3

    #@331
    if-eqz v3, :cond_19

    #@333
    .line 768
    move-object/from16 v0, p0

    #@335
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@337
    monitor-enter v4

    #@338
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@33b
    .line 769
    move-object/from16 v0, p0

    #@33d
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@33f
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    #@342
    .line 770
    const/4 v3, 0x0

    #@343
    const/4 v5, 0x1

    #@344
    const/16 v16, 0x1

    #@346
    move-object/from16 v0, p0

    #@348
    move/from16 v1, v16

    #@34a
    invoke-direct {v0, v3, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@34d
    move-result-object v45

    #@34e
    .line 771
    .local v45, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v45, :cond_18

    #@350
    .line 772
    const/16 v42, 0x0

    #@352
    .local v42, "fi":I
    :goto_2
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    #@355
    move-result v3

    #@356
    move/from16 v0, v42

    #@358
    if-ge v0, v3, :cond_18

    #@35a
    .line 773
    new-instance v5, Ljava/io/File;

    #@35c
    move-object/from16 v0, v45

    #@35e
    move/from16 v1, v42

    #@360
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@363
    move-result-object v3

    #@364
    check-cast v3, Ljava/lang/String;

    #@366
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@369
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@36c
    .line 772
    add-int/lit8 v42, v42, 0x1

    #@36e
    goto :goto_2

    #@36f
    .line 776
    .end local v42    # "fi":I
    :cond_18
    const-string/jumbo v3, "All process stats cleared."

    #@372
    move-object/from16 v0, p2

    #@374
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@377
    .line 777
    const/16 v51, 0x1

    #@379
    monitor-exit v4

    #@37a
    .line 768
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@37d
    goto/16 :goto_1

    #@37f
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v3

    #@380
    monitor-exit v4

    #@381
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@384
    throw v3

    #@385
    .line 779
    :cond_19
    const-string/jumbo v3, "--write"

    #@388
    move-object/from16 v0, v28

    #@38a
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38d
    move-result v3

    #@38e
    if-eqz v3, :cond_1a

    #@390
    .line 780
    move-object/from16 v0, p0

    #@392
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@394
    monitor-enter v4

    #@395
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@398
    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    #@39b
    .line 782
    const-string/jumbo v3, "Process stats written."

    #@39e
    move-object/from16 v0, p2

    #@3a0
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@3a3
    .line 783
    const/16 v51, 0x1

    #@3a5
    monitor-exit v4

    #@3a6
    .line 780
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3a9
    goto/16 :goto_1

    #@3ab
    :catchall_3
    move-exception v3

    #@3ac
    monitor-exit v4

    #@3ad
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3b0
    throw v3

    #@3b1
    .line 785
    :cond_1a
    const-string/jumbo v3, "--read"

    #@3b4
    move-object/from16 v0, v28

    #@3b6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b9
    move-result v3

    #@3ba
    if-eqz v3, :cond_1b

    #@3bc
    .line 786
    move-object/from16 v0, p0

    #@3be
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3c0
    monitor-enter v4

    #@3c1
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@3c4
    .line 787
    move-object/from16 v0, p0

    #@3c6
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    iget-object v5, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@3cc
    move-object/from16 v0, p0

    #@3ce
    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    #@3d1
    .line 788
    const-string/jumbo v3, "Process stats read."

    #@3d4
    move-object/from16 v0, p2

    #@3d6
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@3d9
    .line 789
    const/16 v51, 0x1

    #@3db
    monitor-exit v4

    #@3dc
    .line 786
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3df
    goto/16 :goto_1

    #@3e1
    :catchall_4
    move-exception v3

    #@3e2
    monitor-exit v4

    #@3e3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3e6
    throw v3

    #@3e7
    .line 791
    :cond_1b
    const-string/jumbo v3, "--start-testing"

    #@3ea
    move-object/from16 v0, v28

    #@3ec
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ef
    move-result v3

    #@3f0
    if-eqz v3, :cond_1c

    #@3f2
    .line 792
    move-object/from16 v0, p0

    #@3f4
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3f6
    monitor-enter v4

    #@3f7
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@3fa
    .line 793
    move-object/from16 v0, p0

    #@3fc
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3fe
    const/4 v5, 0x1

    #@3ff
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    #@402
    .line 794
    const-string/jumbo v3, "Started high frequency sampling."

    #@405
    move-object/from16 v0, p2

    #@407
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    #@40a
    .line 795
    const/16 v51, 0x1

    #@40c
    monitor-exit v4

    #@40d
    .line 792
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@410
    goto/16 :goto_1

    #@412
    :catchall_5
    move-exception v3

    #@413
    monitor-exit v4

    #@414
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@417
    throw v3

    #@418
    .line 797
    :cond_1c
    const-string/jumbo v3, "--stop-testing"

    #@41b
    move-object/from16 v0, v28

    #@41d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@420
    move-result v3

    #@421
    if-eqz v3, :cond_1d

    #@423
    .line 798
    move-object/from16 v0, p0

    #@425
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@427
    monitor-enter v4

    #@428
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@42b
    .line 799
    move-object/from16 v0, p0

    #@42d
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@42f
    const/4 v5, 0x0

    #@430
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    #@433
    .line 800
    const-string/jumbo v3, "Stopped high frequency sampling."

    #@436
    move-object/from16 v0, p2

    #@438
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    #@43b
    .line 801
    const/16 v51, 0x1

    #@43d
    monitor-exit v4

    #@43e
    .line 798
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@441
    goto/16 :goto_1

    #@443
    :catchall_6
    move-exception v3

    #@444
    monitor-exit v4

    #@445
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@448
    throw v3

    #@449
    .line 803
    :cond_1d
    const-string/jumbo v3, "-h"

    #@44c
    move-object/from16 v0, v28

    #@44e
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@451
    move-result v3

    #@452
    if-eqz v3, :cond_1e

    #@454
    .line 804
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@457
    .line 805
    return-void

    #@458
    .line 806
    :cond_1e
    const-string/jumbo v3, "-a"

    #@45b
    move-object/from16 v0, v28

    #@45d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@460
    move-result v3

    #@461
    if-eqz v3, :cond_1f

    #@463
    .line 807
    const/16 v24, 0x1

    #@465
    .line 808
    const/16 v26, 0x1

    #@467
    goto/16 :goto_1

    #@469
    .line 809
    :cond_1f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    #@46c
    move-result v3

    #@46d
    if-lez v3, :cond_20

    #@46f
    const/4 v3, 0x0

    #@470
    move-object/from16 v0, v28

    #@472
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@475
    move-result v3

    #@476
    const/16 v4, 0x2d

    #@478
    if-ne v3, v4, :cond_20

    #@47a
    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    #@47c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47f
    const-string/jumbo v4, "Unknown option: "

    #@482
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@485
    move-result-object v3

    #@486
    move-object/from16 v0, v28

    #@488
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48b
    move-result-object v3

    #@48c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48f
    move-result-object v3

    #@490
    move-object/from16 v0, p2

    #@492
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@495
    .line 811
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@498
    .line 812
    return-void

    #@499
    .line 815
    :cond_20
    move-object/from16 v14, v28

    #@49b
    .line 820
    .local v14, "reqPackage":Ljava/lang/String;
    const/16 v24, 0x1

    #@49d
    goto/16 :goto_1

    #@49f
    .line 825
    .end local v14    # "reqPackage":Ljava/lang/String;
    .end local v28    # "arg":Ljava/lang/String;
    .end local v46    # "i":I
    :cond_21
    if-eqz v51, :cond_22

    #@4a1
    .line 826
    return-void

    #@4a2
    .line 829
    :cond_22
    if-eqz v48, :cond_26

    #@4a4
    .line 830
    const-string/jumbo v3, "Processes running summed over"

    #@4a7
    move-object/from16 v0, p2

    #@4a9
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ac
    .line 831
    if-nez v6, :cond_23

    #@4ae
    .line 832
    const/16 v46, 0x0

    #@4b0
    .restart local v46    # "i":I
    :goto_3
    array-length v3, v7

    #@4b1
    move/from16 v0, v46

    #@4b3
    if-ge v0, v3, :cond_23

    #@4b5
    .line 833
    const-string/jumbo v3, " "

    #@4b8
    move-object/from16 v0, p2

    #@4ba
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4bd
    .line 834
    aget v3, v7, v46

    #@4bf
    move-object/from16 v0, p2

    #@4c1
    invoke-static {v0, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    #@4c4
    .line 832
    add-int/lit8 v46, v46, 0x1

    #@4c6
    goto :goto_3

    #@4c7
    .line 837
    .end local v46    # "i":I
    :cond_23
    if-nez v8, :cond_24

    #@4c9
    .line 838
    const/16 v46, 0x0

    #@4cb
    .restart local v46    # "i":I
    :goto_4
    array-length v3, v9

    #@4cc
    move/from16 v0, v46

    #@4ce
    if-ge v0, v3, :cond_24

    #@4d0
    .line 839
    const-string/jumbo v3, " "

    #@4d3
    move-object/from16 v0, p2

    #@4d5
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d8
    .line 840
    aget v3, v9, v46

    #@4da
    move-object/from16 v0, p2

    #@4dc
    invoke-static {v0, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    #@4df
    .line 838
    add-int/lit8 v46, v46, 0x1

    #@4e1
    goto :goto_4

    #@4e2
    .line 843
    .end local v46    # "i":I
    :cond_24
    if-nez v10, :cond_25

    #@4e4
    .line 844
    const/16 v46, 0x0

    #@4e6
    .restart local v46    # "i":I
    :goto_5
    array-length v3, v11

    #@4e7
    move/from16 v0, v46

    #@4e9
    if-ge v0, v3, :cond_25

    #@4eb
    .line 845
    const-string/jumbo v3, " "

    #@4ee
    move-object/from16 v0, p2

    #@4f0
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f3
    .line 846
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    #@4f5
    aget v4, v11, v46

    #@4f7
    aget-object v3, v3, v4

    #@4f9
    move-object/from16 v0, p2

    #@4fb
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fe
    .line 844
    add-int/lit8 v46, v46, 0x1

    #@500
    goto :goto_5

    #@501
    .line 849
    .end local v46    # "i":I
    :cond_25
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@504
    .line 850
    move-object/from16 v0, p0

    #@506
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@508
    move-object/from16 v16, v0

    #@50a
    monitor-enter v16

    #@50b
    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@50e
    .line 851
    const/4 v5, 0x0

    #@50f
    move-object/from16 v3, p0

    #@511
    move-object/from16 v4, p2

    #@513
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    #@516
    monitor-exit v16

    #@517
    .line 850
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@51a
    .line 872
    return-void

    #@51b
    .line 850
    :catchall_7
    move-exception v3

    #@51c
    monitor-exit v16

    #@51d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@520
    throw v3

    #@521
    .line 873
    :cond_26
    if-eqz v2, :cond_27

    #@523
    .line 874
    const-string/jumbo v3, "AGGREGATED OVER LAST "

    #@526
    move-object/from16 v0, p2

    #@528
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52b
    move-object/from16 v0, p2

    #@52d
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    #@530
    const-string/jumbo v3, " HOURS:"

    #@533
    move-object/from16 v0, p2

    #@535
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@538
    .line 875
    int-to-long v0, v2

    #@539
    move-wide/from16 v18, v0

    #@53b
    move-object/from16 v16, p0

    #@53d
    move-object/from16 v17, p2

    #@53f
    move-wide/from16 v20, v12

    #@541
    move-object/from16 v22, v14

    #@543
    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    #@546
    .line 877
    return-void

    #@547
    .line 878
    :cond_27
    if-lez v49, :cond_33

    #@549
    .line 879
    const-string/jumbo v3, "LAST STATS AT INDEX "

    #@54c
    move-object/from16 v0, p2

    #@54e
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@551
    move-object/from16 v0, p2

    #@553
    move/from16 v1, v49

    #@555
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@558
    const-string/jumbo v3, ":"

    #@55b
    move-object/from16 v0, p2

    #@55d
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@560
    .line 880
    const/4 v3, 0x0

    #@561
    const/4 v4, 0x0

    #@562
    const/4 v5, 0x1

    #@563
    move-object/from16 v0, p0

    #@565
    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@568
    move-result-object v45

    #@569
    .line 881
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    #@56c
    move-result v3

    #@56d
    move/from16 v0, v49

    #@56f
    if-lt v0, v3, :cond_28

    #@571
    .line 882
    const-string/jumbo v3, "Only have "

    #@574
    move-object/from16 v0, p2

    #@576
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@579
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    #@57c
    move-result v3

    #@57d
    move-object/from16 v0, p2

    #@57f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@582
    const-string/jumbo v3, " data sets"

    #@585
    move-object/from16 v0, p2

    #@587
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58a
    .line 883
    return-void

    #@58b
    .line 885
    :cond_28
    new-instance v43, Landroid/util/AtomicFile;

    #@58d
    new-instance v4, Ljava/io/File;

    #@58f
    move-object/from16 v0, v45

    #@591
    move/from16 v1, v49

    #@593
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@596
    move-result-object v3

    #@597
    check-cast v3, Ljava/lang/String;

    #@599
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@59c
    move-object/from16 v0, v43

    #@59e
    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@5a1
    .line 886
    .local v43, "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/procstats/ProcessStats;

    #@5a3
    const/4 v3, 0x0

    #@5a4
    invoke-direct {v15, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    #@5a7
    .line 887
    .local v15, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    move-object/from16 v0, p0

    #@5a9
    move-object/from16 v1, v43

    #@5ab
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    #@5ae
    .line 888
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@5b0
    if-eqz v3, :cond_2b

    #@5b2
    .line 889
    if-nez v47, :cond_29

    #@5b4
    if-eqz v23, :cond_2a

    #@5b6
    :cond_29
    const-string/jumbo v3, "err,"

    #@5b9
    move-object/from16 v0, p2

    #@5bb
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5be
    .line 890
    :cond_2a
    const-string/jumbo v3, "Failure reading "

    #@5c1
    move-object/from16 v0, p2

    #@5c3
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c6
    move-object/from16 v0, v45

    #@5c8
    move/from16 v1, v49

    #@5ca
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5cd
    move-result-object v3

    #@5ce
    check-cast v3, Ljava/lang/String;

    #@5d0
    move-object/from16 v0, p2

    #@5d2
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d5
    .line 891
    const-string/jumbo v3, "; "

    #@5d8
    move-object/from16 v0, p2

    #@5da
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5dd
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@5df
    move-object/from16 v0, p2

    #@5e1
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e4
    .line 892
    return-void

    #@5e5
    .line 894
    :cond_2b
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@5e8
    move-result-object v3

    #@5e9
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@5ec
    move-result-object v44

    #@5ed
    .line 895
    .local v44, "fileStr":Ljava/lang/String;
    const-string/jumbo v3, ".ci"

    #@5f0
    move-object/from16 v0, v44

    #@5f2
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5f5
    move-result v37

    #@5f6
    .line 896
    .local v37, "checkedIn":Z
    if-nez v47, :cond_2c

    #@5f8
    if-eqz v23, :cond_2e

    #@5fa
    .line 898
    :cond_2c
    move-object/from16 v0, p2

    #@5fc
    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@5ff
    .line 914
    :cond_2d
    :goto_6
    return-void

    #@600
    .line 900
    :cond_2e
    const-string/jumbo v3, "COMMITTED STATS FROM "

    #@603
    move-object/from16 v0, p2

    #@605
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@608
    .line 901
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@60a
    move-object/from16 v0, p2

    #@60c
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60f
    .line 902
    if-eqz v37, :cond_2f

    #@611
    const-string/jumbo v3, " (checked in)"

    #@614
    move-object/from16 v0, p2

    #@616
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@619
    .line 903
    :cond_2f
    const-string/jumbo v3, ":"

    #@61c
    move-object/from16 v0, p2

    #@61e
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@621
    .line 904
    if-nez v24, :cond_30

    #@623
    if-eqz v25, :cond_32

    #@625
    .line 905
    :cond_30
    if-eqz v25, :cond_31

    #@627
    const/16 v20, 0x0

    #@629
    :goto_7
    move-object/from16 v16, p2

    #@62b
    move-object/from16 v17, v14

    #@62d
    move-wide/from16 v18, v12

    #@62f
    move/from16 v21, v26

    #@631
    move/from16 v22, v27

    #@633
    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    #@636
    .line 907
    if-eqz v26, :cond_2d

    #@638
    .line 908
    const-string/jumbo v3, "  mFile="

    #@63b
    move-object/from16 v0, p2

    #@63d
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@640
    move-object/from16 v0, p0

    #@642
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@644
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@647
    move-result-object v3

    #@648
    move-object/from16 v0, p2

    #@64a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@64d
    goto :goto_6

    #@64e
    .line 905
    :cond_31
    const/16 v20, 0x1

    #@650
    goto :goto_7

    #@651
    :cond_32
    move-object/from16 v16, p2

    #@653
    move-object/from16 v17, v14

    #@655
    move-wide/from16 v18, v12

    #@657
    move/from16 v20, v27

    #@659
    .line 911
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    #@65c
    goto :goto_6

    #@65d
    .line 917
    .end local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_33
    const/16 v53, 0x0

    #@65f
    .line 918
    .local v53, "sepNeeded":Z
    if-nez v26, :cond_34

    #@661
    if-eqz v47, :cond_42

    #@663
    .line 919
    :cond_34
    move-object/from16 v0, p0

    #@665
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@667
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@66a
    .line 921
    if-eqz v47, :cond_39

    #@66c
    const/4 v3, 0x0

    #@66d
    :goto_8
    const/4 v4, 0x0

    #@66e
    const/4 v5, 0x0

    #@66f
    :try_start_b
    move-object/from16 v0, p0

    #@671
    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@674
    move-result-object v45

    #@675
    .line 922
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v45, :cond_41

    #@677
    .line 923
    if-eqz v47, :cond_3a

    #@679
    const/16 v54, 0x0

    #@67b
    .line 924
    .local v54, "start":I
    :goto_9
    if-gez v54, :cond_35

    #@67d
    .line 925
    const/16 v54, 0x0

    #@67f
    .line 927
    :cond_35
    move/from16 v46, v54

    #@681
    .restart local v46    # "i":I
    :goto_a
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    #@684
    move-result v3

    #@685
    move/from16 v0, v46

    #@687
    if-ge v0, v3, :cond_41

    #@689
    .line 930
    :try_start_c
    new-instance v43, Landroid/util/AtomicFile;

    #@68b
    new-instance v4, Ljava/io/File;

    #@68d
    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@690
    move-result-object v3

    #@691
    check-cast v3, Ljava/lang/String;

    #@693
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@696
    move-object/from16 v0, v43

    #@698
    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@69b
    .line 931
    .restart local v43    # "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/procstats/ProcessStats;

    #@69d
    const/4 v3, 0x0

    #@69e
    invoke-direct {v15, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    #@6a1
    .line 932
    .restart local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    move-object/from16 v0, p0

    #@6a3
    move-object/from16 v1, v43

    #@6a5
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    #@6a8
    .line 933
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@6aa
    if-eqz v3, :cond_3b

    #@6ac
    .line 934
    if-nez v47, :cond_36

    #@6ae
    if-eqz v23, :cond_37

    #@6b0
    :cond_36
    const-string/jumbo v3, "err,"

    #@6b3
    move-object/from16 v0, p2

    #@6b5
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b8
    .line 935
    :cond_37
    const-string/jumbo v3, "Failure reading "

    #@6bb
    move-object/from16 v0, p2

    #@6bd
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c0
    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c3
    move-result-object v3

    #@6c4
    check-cast v3, Ljava/lang/String;

    #@6c6
    move-object/from16 v0, p2

    #@6c8
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6cb
    .line 936
    const-string/jumbo v3, "; "

    #@6ce
    move-object/from16 v0, p2

    #@6d0
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d3
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@6d5
    move-object/from16 v0, p2

    #@6d7
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6da
    .line 938
    new-instance v4, Ljava/io/File;

    #@6dc
    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6df
    move-result-object v3

    #@6e0
    check-cast v3, Ljava/lang/String;

    #@6e2
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6e5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    #@6e8
    .line 927
    .end local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v43    # "file":Landroid/util/AtomicFile;
    :cond_38
    :goto_b
    add-int/lit8 v46, v46, 0x1

    #@6ea
    goto :goto_a

    #@6eb
    .line 921
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "i":I
    .end local v54    # "start":I
    :cond_39
    const/4 v3, 0x1

    #@6ec
    goto :goto_8

    #@6ed
    .line 923
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3a
    :try_start_d
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    #@6f0
    move-result v3

    #@6f1
    sub-int v54, v3, v50

    #@6f3
    .restart local v54    # "start":I
    goto :goto_9

    #@6f4
    .line 941
    .restart local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v43    # "file":Landroid/util/AtomicFile;
    .restart local v46    # "i":I
    :cond_3b
    :try_start_e
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@6f7
    move-result-object v3

    #@6f8
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@6fb
    move-result-object v44

    #@6fc
    .line 942
    .restart local v44    # "fileStr":Ljava/lang/String;
    const-string/jumbo v3, ".ci"

    #@6ff
    move-object/from16 v0, v44

    #@701
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@704
    move-result v37

    #@705
    .line 943
    .restart local v37    # "checkedIn":Z
    if-nez v47, :cond_3c

    #@707
    if-eqz v23, :cond_3d

    #@709
    .line 945
    :cond_3c
    move-object/from16 v0, p2

    #@70b
    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@70e
    .line 966
    :goto_c
    if-eqz v47, :cond_38

    #@710
    .line 968
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@713
    move-result-object v3

    #@714
    new-instance v4, Ljava/io/File;

    #@716
    .line 969
    new-instance v5, Ljava/lang/StringBuilder;

    #@718
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@71b
    move-object/from16 v0, v44

    #@71d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@720
    move-result-object v5

    #@721
    const-string/jumbo v16, ".ci"

    #@724
    move-object/from16 v0, v16

    #@726
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@729
    move-result-object v5

    #@72a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72d
    move-result-object v5

    #@72e
    .line 968
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@731
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    #@734
    goto :goto_b

    #@735
    .line 971
    .end local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    :catch_3
    move-exception v40

    #@736
    .line 972
    .local v40, "e":Ljava/lang/Throwable;
    :try_start_f
    const-string/jumbo v3, "**** FAILURE DUMPING STATE: "

    #@739
    move-object/from16 v0, p2

    #@73b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73e
    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@741
    move-result-object v3

    #@742
    check-cast v3, Ljava/lang/String;

    #@744
    move-object/from16 v0, p2

    #@746
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@749
    .line 973
    move-object/from16 v0, v40

    #@74b
    move-object/from16 v1, p2

    #@74d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    #@750
    goto :goto_b

    #@751
    .line 977
    .end local v40    # "e":Ljava/lang/Throwable;
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "i":I
    .end local v54    # "start":I
    :catchall_8
    move-exception v3

    #@752
    .line 978
    move-object/from16 v0, p0

    #@754
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@756
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@759
    .line 977
    throw v3

    #@75a
    .line 947
    .restart local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v37    # "checkedIn":Z
    .restart local v43    # "file":Landroid/util/AtomicFile;
    .restart local v44    # "fileStr":Ljava/lang/String;
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v46    # "i":I
    .restart local v54    # "start":I
    :cond_3d
    if-eqz v53, :cond_3f

    #@75c
    .line 948
    :try_start_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@75f
    .line 952
    :goto_d
    const-string/jumbo v3, "COMMITTED STATS FROM "

    #@762
    move-object/from16 v0, p2

    #@764
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@767
    .line 953
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@769
    move-object/from16 v0, p2

    #@76b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76e
    .line 954
    if-eqz v37, :cond_3e

    #@770
    const-string/jumbo v3, " (checked in)"

    #@773
    move-object/from16 v0, p2

    #@775
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@778
    .line 955
    :cond_3e
    const-string/jumbo v3, ":"

    #@77b
    move-object/from16 v0, p2

    #@77d
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@780
    .line 959
    if-eqz v25, :cond_40

    #@782
    .line 960
    const/16 v20, 0x0

    #@784
    const/16 v21, 0x0

    #@786
    move-object/from16 v16, p2

    #@788
    move-object/from16 v17, v14

    #@78a
    move-wide/from16 v18, v12

    #@78c
    move/from16 v22, v27

    #@78e
    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    #@791
    goto/16 :goto_c

    #@793
    .line 950
    :cond_3f
    const/16 v53, 0x1

    #@795
    goto :goto_d

    #@796
    :cond_40
    move-object/from16 v16, p2

    #@798
    move-object/from16 v17, v14

    #@79a
    move-wide/from16 v18, v12

    #@79c
    move/from16 v20, v27

    #@79e
    .line 963
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    #@7a1
    goto/16 :goto_c

    #@7a3
    .line 978
    .end local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    .end local v46    # "i":I
    .end local v54    # "start":I
    :cond_41
    move-object/from16 v0, p0

    #@7a5
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7a7
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@7aa
    .line 981
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_42
    if-nez v47, :cond_44

    #@7ac
    .line 982
    move-object/from16 v0, p0

    #@7ae
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@7b0
    monitor-enter v4

    #@7b1
    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@7b4
    .line 983
    if-eqz v23, :cond_45

    #@7b6
    .line 984
    move-object/from16 v0, p0

    #@7b8
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@7ba
    move-object/from16 v0, p2

    #@7bc
    invoke-virtual {v3, v0, v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    #@7bf
    :goto_e
    monitor-exit v4

    #@7c0
    .line 982
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7c3
    .line 1002
    if-nez v38, :cond_44

    #@7c5
    .line 1003
    if-eqz v53, :cond_43

    #@7c7
    .line 1004
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@7ca
    .line 1006
    :cond_43
    const-string/jumbo v3, "AGGREGATED OVER LAST 24 HOURS:"

    #@7cd
    move-object/from16 v0, p2

    #@7cf
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d2
    .line 1007
    const-wide/16 v18, 0x18

    #@7d4
    move-object/from16 v16, p0

    #@7d6
    move-object/from16 v17, p2

    #@7d8
    move-wide/from16 v20, v12

    #@7da
    move-object/from16 v22, v14

    #@7dc
    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    #@7df
    .line 1009
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@7e2
    .line 1010
    const-string/jumbo v3, "AGGREGATED OVER LAST 3 HOURS:"

    #@7e5
    move-object/from16 v0, p2

    #@7e7
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7ea
    .line 1011
    const-wide/16 v18, 0x3

    #@7ec
    move-object/from16 v16, p0

    #@7ee
    move-object/from16 v17, p2

    #@7f0
    move-wide/from16 v20, v12

    #@7f2
    move-object/from16 v22, v14

    #@7f4
    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    #@7f7
    .line 621
    :cond_44
    return-void

    #@7f8
    .line 986
    :cond_45
    if-eqz v53, :cond_46

    #@7fa
    .line 987
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@7fd
    .line 989
    :cond_46
    const-string/jumbo v3, "CURRENT STATS:"

    #@800
    move-object/from16 v0, p2

    #@802
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@805
    .line 990
    if-nez v24, :cond_47

    #@807
    if-eqz v25, :cond_4a

    #@809
    .line 991
    :cond_47
    move-object/from16 v0, p0

    #@80b
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@80d
    move-object/from16 v29, v0

    #@80f
    if-eqz v25, :cond_49

    #@811
    const/16 v34, 0x0

    #@813
    :goto_f
    move-object/from16 v30, p2

    #@815
    move-object/from16 v31, v14

    #@817
    move-wide/from16 v32, v12

    #@819
    move/from16 v35, v26

    #@81b
    move/from16 v36, v27

    #@81d
    invoke-virtual/range {v29 .. v36}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    #@820
    .line 993
    if-eqz v26, :cond_48

    #@822
    .line 994
    const-string/jumbo v3, "  mFile="

    #@825
    move-object/from16 v0, p2

    #@827
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82a
    move-object/from16 v0, p0

    #@82c
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@82e
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@831
    move-result-object v3

    #@832
    move-object/from16 v0, p2

    #@834
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@837
    .line 999
    :cond_48
    :goto_10
    const/16 v53, 0x1

    #@839
    goto :goto_e

    #@83a
    .line 991
    :cond_49
    const/16 v34, 0x1

    #@83c
    goto :goto_f

    #@83d
    .line 997
    :cond_4a
    move-object/from16 v0, p0

    #@83f
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@841
    move-object/from16 v17, v0

    #@843
    move-object/from16 v18, p2

    #@845
    move-object/from16 v19, v14

    #@847
    move-wide/from16 v20, v12

    #@849
    move/from16 v22, v27

    #@84b
    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    #@84e
    goto :goto_10

    #@84f
    .line 982
    :catchall_9
    move-exception v3

    #@850
    monitor-exit v4

    #@851
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@854
    throw v3
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .locals 8
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 340
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    #@3
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@6
    move-result-object v3

    #@7
    .line 341
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    #@9
    array-length v6, v3

    #@a
    if-gt v6, p1, :cond_1

    #@c
    .line 342
    :cond_0
    return-object v7

    #@d
    .line 344
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    #@f
    array-length v6, v3

    #@10
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    .line 345
    .local v4, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@15
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 347
    .local v0, "currentFile":Ljava/lang/String;
    const/4 v5, 0x0

    #@1e
    .local v5, "i":I
    :goto_0
    array-length v6, v3

    #@1f
    if-ge v5, v6, :cond_5

    #@21
    .line 348
    aget-object v1, v3, v5

    #@23
    .line 349
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 351
    .local v2, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_3

    #@29
    const-string/jumbo v6, ".ci"

    #@2c
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_3

    #@32
    .line 347
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@34
    goto :goto_0

    #@35
    .line 355
    :cond_3
    if-nez p2, :cond_4

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_2

    #@3d
    .line 359
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_1

    #@41
    .line 361
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStr":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@44
    .line 362
    return-object v4
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 10
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 395
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 396
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    #@6
    .line 397
    .local v5, "lastPos":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@a
    move-result v8

    #@b
    if-gt v2, v8, :cond_8

    #@d
    .line 398
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@10
    move-result v8

    #@11
    if-ge v2, v8, :cond_0

    #@13
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 399
    .local v0, "c":C
    :goto_1
    const/16 v8, 0x2c

    #@19
    if-eq v0, v8, :cond_1

    #@1b
    const/16 v8, 0x2b

    #@1d
    if-eq v0, v8, :cond_1

    #@1f
    const/16 v8, 0x20

    #@21
    if-eq v0, v8, :cond_1

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 397
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 398
    .end local v0    # "c":C
    :cond_0
    const/4 v0, 0x0

    #@29
    goto :goto_1

    #@2a
    .line 402
    .restart local v0    # "c":C
    :cond_1
    const/16 v8, 0x2c

    #@2c
    if-ne v0, v8, :cond_4

    #@2e
    const/4 v3, 0x1

    #@2f
    .line 403
    .local v3, "isSep":Z
    :goto_3
    if-nez v5, :cond_5

    #@31
    .line 405
    const/4 v8, 0x0

    #@32
    aput-boolean v3, p3, v8

    #@34
    .line 410
    :cond_2
    add-int/lit8 v8, v2, -0x1

    #@36
    if-ge v5, v8, :cond_7

    #@38
    .line 411
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 412
    .local v7, "str":Ljava/lang/String;
    const/4 v4, 0x0

    #@3d
    .local v4, "j":I
    :goto_4
    array-length v8, p0

    #@3e
    if-ge v4, v8, :cond_3

    #@40
    .line 413
    aget-object v8, p0, v4

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_6

    #@48
    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    .line 415
    const/4 v7, 0x0

    #@50
    .line 419
    .end local v7    # "str":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_7

    #@52
    .line 420
    new-instance v8, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v9, "invalid word \""

    #@5a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    const-string/jumbo v9, "\""

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v8

    #@6d
    const/4 v9, 0x0

    #@6e
    aput-object v8, p4, v9

    #@70
    .line 421
    const/4 v8, 0x0

    #@71
    return-object v8

    #@72
    .line 402
    .end local v3    # "isSep":Z
    .end local v4    # "j":I
    :cond_4
    const/4 v3, 0x0

    #@73
    .restart local v3    # "isSep":Z
    goto :goto_3

    #@74
    .line 406
    :cond_5
    if-eqz v0, :cond_2

    #@76
    const/4 v8, 0x0

    #@77
    aget-boolean v8, p3, v8

    #@79
    if-eq v8, v3, :cond_2

    #@7b
    .line 407
    const-string/jumbo v8, "inconsistent separators (can\'t mix \',\' with \'+\')"

    #@7e
    const/4 v9, 0x0

    #@7f
    aput-object v8, p4, v9

    #@81
    .line 408
    const/4 v8, 0x0

    #@82
    return-object v8

    #@83
    .line 412
    .restart local v4    # "j":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@85
    goto :goto_4

    #@86
    .line 424
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v2, 0x1

    #@88
    goto :goto_2

    #@89
    .line 427
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@8c
    move-result v8

    #@8d
    new-array v1, v8, [I

    #@8f
    .line 428
    .local v1, "finalRes":[I
    const/4 v2, 0x0

    #@90
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v8

    #@94
    if-ge v2, v8, :cond_9

    #@96
    .line 429
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@99
    move-result-object v8

    #@9a
    check-cast v8, Ljava/lang/Integer;

    #@9c
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@9f
    move-result v8

    #@a0
    mul-int/2addr v8, p1

    #@a1
    aput v8, v1, v2

    #@a3
    .line 428
    add-int/lit8 v2, v2, 0x1

    #@a5
    goto :goto_5

    #@a6
    .line 431
    :cond_9
    return-object v1
.end method

.method private updateFile()V
    .locals 5

    #@0
    .prologue
    .line 242
    new-instance v0, Landroid/util/AtomicFile;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "state-"

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    .line 243
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@14
    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@16
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    .line 243
    const-string/jumbo v4, ".bin"

    #@1d
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@2d
    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    #@33
    .line 241
    return-void
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z

    #@0
    .prologue
    .line 200
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 201
    return-void

    #@5
    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    #@7
    .line 204
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    #@8
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    #@a
    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    #@d
    .line 199
    return-void
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .locals 13
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    #@0
    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2
    move-wide v2, p1

    #@3
    move-wide/from16 v4, p3

    #@5
    move-wide/from16 v6, p5

    #@7
    move-wide/from16 v8, p7

    #@9
    move-wide/from16 v10, p9

    #@b
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    #@e
    .line 167
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2
    const-string/jumbo v3, "android.permission.DUMP"

    #@5
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Permission Denial: can\'t dump procstats from from pid="

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v3

    #@1b
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 608
    const-string/jumbo v3, ", uid="

    #@22
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v3

    #@2a
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 609
    const-string/jumbo v3, " without permission "

    #@31
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 609
    const-string/jumbo v3, "android.permission.DUMP"

    #@38
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 610
    return-void

    #@44
    .line 613
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@47
    move-result-wide v0

    #@48
    .line 615
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 617
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 604
    return-void

    #@4f
    .line 616
    :catchall_0
    move-exception v2

    #@50
    .line 617
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 616
    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2
    .line 381
    const/4 v9, 0x0

    #@3
    move-object v2, p4

    #@4
    move-object/from16 v3, p6

    #@6
    move-object/from16 v4, p8

    #@8
    move-object/from16 v5, p8

    #@a
    move-wide/from16 v6, p9

    #@c
    move-object/from16 v8, p11

    #@e
    .line 380
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    #@11
    move-result-object v1

    #@12
    .line 382
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    if-lez v0, :cond_1

    #@18
    .line 383
    if-eqz p2, :cond_0

    #@1a
    .line 384
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    :cond_0
    move-object v0, p1

    #@1e
    move v2, p3

    #@1f
    move-object v3, p4

    #@20
    move/from16 v4, p5

    #@22
    move-object/from16 v5, p6

    #@24
    move/from16 v6, p7

    #@26
    move-object/from16 v7, p8

    #@28
    move-wide/from16 v8, p9

    #@2a
    .line 386
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    #@2d
    .line 388
    const/4 v0, 0x1

    #@2e
    return v0

    #@2f
    .line 390
    :cond_1
    const/4 v0, 0x0

    #@30
    return v0
.end method

.method public getCurrentMemoryState()I
    .locals 2

    #@0
    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 540
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 539
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@c
    .line 540
    return v0

    #@d
    .line 539
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@12
    throw v0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const/4 v9, 0x0

    #@1
    .line 435
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@5
    .line 436
    const-string/jumbo v8, "android.permission.PACKAGE_USAGE_STATS"

    #@8
    .line 435
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@e
    move-result-object v0

    #@f
    .line 438
    .local v0, "current":Landroid/os/Parcel;
    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@11
    monitor-enter v8

    #@12
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@15
    .line 439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v4

    #@19
    .line 440
    .local v4, "now":J
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e
    move-result-wide v10

    #@1f
    iput-wide v10, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@21
    .line 441
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@23
    iput-wide v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@25
    .line 442
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@27
    const/4 v9, 0x0

    #@28
    invoke-virtual {v7, v0, v4, v5, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v8

    #@2c
    .line 438
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2f
    .line 444
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@31
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@34
    .line 446
    if-eqz p1, :cond_0

    #@36
    .line 447
    const/4 v7, 0x0

    #@37
    const/4 v8, 0x0

    #@38
    const/4 v9, 0x1

    #@39
    :try_start_1
    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@3c
    move-result-object v2

    #@3d
    .line 448
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    #@3f
    .line 449
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@42
    move-result v7

    #@43
    add-int/lit8 v3, v7, -0x1

    #@45
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    #@47
    .line 452
    :try_start_2
    new-instance v8, Ljava/io/File;

    #@49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v7

    #@4d
    check-cast v7, Ljava/lang/String;

    #@4f
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@52
    const/high16 v7, 0x10000000

    #@54
    .line 451
    invoke-static {v8, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@57
    move-result-object v6

    #@58
    .line 453
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5b
    .line 449
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@5d
    goto :goto_0

    #@5e
    .line 438
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "now":J
    :catchall_0
    move-exception v7

    #@5f
    monitor-exit v8

    #@60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@63
    throw v7

    #@64
    .line 454
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "now":J
    :catch_0
    move-exception v1

    #@65
    .line 455
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v8, "ProcessStatsService"

    #@68
    new-instance v7, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v9, "Failure opening procstat file "

    #@70
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v7

    #@78
    check-cast v7, Ljava/lang/String;

    #@7a
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    invoke-static {v8, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@85
    goto :goto_1

    #@86
    .line 460
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_1
    move-exception v7

    #@87
    .line 461
    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@89
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@8c
    .line 460
    throw v7

    #@8d
    .line 461
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@8f
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@92
    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    #@95
    move-result-object v7

    #@96
    return-object v7
.end method

.method public getMemFactorLocked()I
    .locals 2

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@9
    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 27
    .param p1, "minTime"    # J

    #@0
    .prologue
    .line 467
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v19, v0

    #@6
    move-object/from16 v0, v19

    #@8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@a
    move-object/from16 v19, v0

    #@c
    .line 468
    const-string/jumbo v20, "android.permission.PACKAGE_USAGE_STATS"

    #@f
    const/16 v21, 0x0

    #@11
    .line 467
    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@17
    move-result-object v6

    #@18
    .line 471
    .local v6, "current":Landroid/os/Parcel;
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1c
    move-object/from16 v20, v0

    #@1e
    monitor-enter v20

    #@1f
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@22
    .line 472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@25
    move-result-wide v14

    #@26
    .line 473
    .local v14, "now":J
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2a
    move-object/from16 v19, v0

    #@2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2f
    move-result-wide v22

    #@30
    move-wide/from16 v0, v22

    #@32
    move-object/from16 v2, v19

    #@34
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@36
    .line 474
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@3a
    move-object/from16 v19, v0

    #@3c
    move-object/from16 v0, v19

    #@3e
    iput-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@40
    .line 475
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@44
    move-object/from16 v19, v0

    #@46
    const/16 v21, 0x0

    #@48
    move-object/from16 v0, v19

    #@4a
    move/from16 v1, v21

    #@4c
    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    #@4f
    .line 476
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@53
    move-object/from16 v19, v0

    #@55
    move-object/from16 v0, v19

    #@57
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@59
    move-wide/from16 v22, v0

    #@5b
    .line 477
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@5f
    move-object/from16 v19, v0

    #@61
    move-object/from16 v0, v19

    #@63
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@65
    move-wide/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    .line 476
    sub-long v4, v22, v24

    #@69
    .local v4, "curTime":J
    monitor-exit v20

    #@6a
    .line 471
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@6d
    .line 479
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@71
    move-object/from16 v19, v0

    #@73
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@76
    .line 481
    cmp-long v19, v4, p1

    #@78
    if-gez v19, :cond_2

    #@7a
    .line 483
    const/16 v19, 0x0

    #@7c
    const/16 v20, 0x0

    #@7e
    const/16 v21, 0x1

    #@80
    :try_start_1
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v19

    #@84
    move/from16 v2, v20

    #@86
    move/from16 v3, v21

    #@88
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@8b
    move-result-object v10

    #@8c
    .line 484
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    #@8e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@91
    move-result v19

    #@92
    if-lez v19, :cond_2

    #@94
    .line 485
    const/16 v19, 0x0

    #@96
    move/from16 v0, v19

    #@98
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@9b
    .line 486
    sget-object v19, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9d
    move-object/from16 v0, v19

    #@9f
    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a2
    move-result-object v17

    #@a3
    check-cast v17, Lcom/android/internal/app/procstats/ProcessStats;

    #@a5
    .line 487
    .local v17, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    #@a8
    .line 488
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@ab
    move-result v19

    #@ac
    add-int/lit8 v11, v19, -0x1

    #@ae
    .line 489
    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_1

    #@b0
    move-object/from16 v0, v17

    #@b2
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@b4
    move-wide/from16 v20, v0

    #@b6
    .line 490
    move-object/from16 v0, v17

    #@b8
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@ba
    move-wide/from16 v22, v0

    #@bc
    .line 489
    sub-long v20, v20, v22

    #@be
    cmp-long v19, v20, p1

    #@c0
    if-gez v19, :cond_1

    #@c2
    .line 491
    new-instance v9, Landroid/util/AtomicFile;

    #@c4
    new-instance v20, Ljava/io/File;

    #@c6
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c9
    move-result-object v19

    #@ca
    check-cast v19, Ljava/lang/String;

    #@cc
    move-object/from16 v0, v20

    #@ce
    move-object/from16 v1, v19

    #@d0
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d3
    move-object/from16 v0, v20

    #@d5
    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@d8
    .line 492
    .local v9, "file":Landroid/util/AtomicFile;
    add-int/lit8 v11, v11, -0x1

    #@da
    .line 493
    new-instance v12, Lcom/android/internal/app/procstats/ProcessStats;

    #@dc
    const/16 v19, 0x0

    #@de
    move/from16 v0, v19

    #@e0
    invoke-direct {v12, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    #@e3
    .line 494
    .local v12, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    move-object/from16 v0, p0

    #@e5
    invoke-virtual {v0, v12, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    #@e8
    .line 495
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@ea
    move-object/from16 v19, v0

    #@ec
    if-nez v19, :cond_0

    #@ee
    .line 496
    move-object/from16 v0, v17

    #@f0
    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    #@f3
    .line 497
    new-instance v16, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    .line 498
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v19, "Added stats: "

    #@fb
    move-object/from16 v0, v16

    #@fd
    move-object/from16 v1, v19

    #@ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    .line 499
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@104
    move-object/from16 v19, v0

    #@106
    move-object/from16 v0, v16

    #@108
    move-object/from16 v1, v19

    #@10a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    .line 500
    const-string/jumbo v19, ", over "

    #@110
    move-object/from16 v0, v16

    #@112
    move-object/from16 v1, v19

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    .line 501
    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@119
    move-wide/from16 v20, v0

    #@11b
    .line 502
    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@11d
    move-wide/from16 v22, v0

    #@11f
    .line 501
    sub-long v20, v20, v22

    #@121
    move-wide/from16 v0, v20

    #@123
    move-object/from16 v2, v16

    #@125
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@128
    .line 503
    const-string/jumbo v19, "ProcessStatsService"

    #@12b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v20

    #@12f
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@132
    goto/16 :goto_0

    #@134
    .line 530
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :catch_0
    move-exception v7

    #@135
    .line 531
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v19, "ProcessStatsService"

    #@138
    const-string/jumbo v20, "Failed building output pipe"

    #@13b
    move-object/from16 v0, v19

    #@13d
    move-object/from16 v1, v20

    #@13f
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@142
    .line 533
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@146
    move-object/from16 v19, v0

    #@148
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@14b
    .line 535
    const/16 v19, 0x0

    #@14d
    return-object v19

    #@14e
    .line 471
    .end local v4    # "curTime":J
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "now":J
    :catchall_0
    move-exception v19

    #@14f
    monitor-exit v20

    #@150
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@153
    throw v19

    #@154
    .line 505
    .restart local v4    # "curTime":J
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v12    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v14    # "now":J
    .restart local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_0
    :try_start_3
    const-string/jumbo v20, "ProcessStatsService"

    #@157
    new-instance v19, Ljava/lang/StringBuilder;

    #@159
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    const-string/jumbo v21, "Failure reading "

    #@15f
    move-object/from16 v0, v19

    #@161
    move-object/from16 v1, v21

    #@163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v21

    #@167
    add-int/lit8 v19, v11, 0x1

    #@169
    move/from16 v0, v19

    #@16b
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16e
    move-result-object v19

    #@16f
    check-cast v19, Ljava/lang/String;

    #@171
    move-object/from16 v0, v21

    #@173
    move-object/from16 v1, v19

    #@175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v19

    #@179
    const-string/jumbo v21, "; "

    #@17c
    move-object/from16 v0, v19

    #@17e
    move-object/from16 v1, v21

    #@180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v19

    #@184
    .line 506
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@186
    move-object/from16 v21, v0

    #@188
    .line 505
    move-object/from16 v0, v19

    #@18a
    move-object/from16 v1, v21

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v19

    #@190
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@193
    move-result-object v19

    #@194
    move-object/from16 v0, v20

    #@196
    move-object/from16 v1, v19

    #@198
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19b
    goto/16 :goto_0

    #@19d
    .line 532
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :catchall_1
    move-exception v19

    #@19e
    .line 533
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1a2
    move-object/from16 v20, v0

    #@1a4
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1a7
    .line 532
    throw v19

    #@1a8
    .line 510
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_1
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@1ab
    move-result-object v6

    #@1ac
    .line 511
    const/16 v19, 0x0

    #@1ae
    move-object/from16 v0, v17

    #@1b0
    move/from16 v1, v19

    #@1b2
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b5
    .line 514
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_2
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    #@1b8
    move-result-object v13

    #@1b9
    .line 515
    .local v13, "outData":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    #@1bc
    .line 516
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@1bf
    move-result-object v8

    #@1c0
    .line 517
    .local v8, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v18, Lcom/android/server/am/ProcessStatsService$3;

    #@1c2
    const-string/jumbo v19, "ProcessStats pipe output"

    #@1c5
    move-object/from16 v0, v18

    #@1c7
    move-object/from16 v1, p0

    #@1c9
    move-object/from16 v2, v19

    #@1cb
    invoke-direct {v0, v1, v2, v8, v13}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    #@1ce
    .line 528
    .local v18, "thr":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    #@1d1
    .line 529
    const/16 v19, 0x0

    #@1d3
    aget-object v19, v8, v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1d5
    .line 533
    move-object/from16 v0, p0

    #@1d7
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1d9
    move-object/from16 v20, v0

    #@1db
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1de
    .line 529
    return-object v19
.end method

.method public isMemFactorLowered()Z
    .locals 1

    #@0
    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    #@2
    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 105
    :catch_0
    move-exception v0

    #@6
    .line 106
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 107
    const-string/jumbo v1, "ProcessStatsService"

    #@d
    const-string/jumbo v2, "Process Stats Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 109
    :cond_0
    throw v0
.end method

.method performWriteState()V
    .locals 6

    #@0
    .prologue
    .line 251
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@5
    .line 253
    .local v0, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    #@7
    .line 254
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    #@8
    iput-boolean v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 255
    if-nez v0, :cond_0

    #@c
    monitor-exit v5

    #@d
    .line 256
    return-void

    #@e
    .line 258
    :cond_0
    const/4 v4, 0x0

    #@f
    :try_start_1
    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@11
    .line 259
    const/4 v4, 0x0

    #@12
    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    #@14
    .line 260
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v5

    #@1a
    .line 263
    const/4 v3, 0x0

    #@1b
    .line 265
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@1e
    move-result-object v3

    #@1f
    .line 266
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    #@26
    .line 267
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    #@29
    .line 268
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 275
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    #@32
    .line 276
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@34
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@37
    .line 247
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@38
    .line 251
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .line 270
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    :catch_0
    move-exception v1

    #@3c
    .line 271
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "ProcessStatsService"

    #@3f
    const-string/jumbo v5, "Error writing process statistics"

    #@42
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 272
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@48
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 275
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    #@4e
    .line 276
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@50
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@53
    goto :goto_0

    #@54
    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    #@55
    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 275
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    #@5b
    .line 276
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5d
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@60
    .line 273
    throw v4
.end method

.method readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 282
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@4
    move-result-object v1

    #@5
    .line 283
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    #@8
    .line 284
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    #@b
    .line 285
    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 286
    const-string/jumbo v2, "ProcessStatsService"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Ignoring existing stats; "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 328
    return v5

    #@2c
    .line 330
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@2d
    .line 331
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "caught exception: "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    iput-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    #@43
    .line 332
    const-string/jumbo v2, "ProcessStatsService"

    #@46
    const-string/jumbo v3, "Error reading process statistics"

    #@49
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 333
    return v5

    #@4d
    .line 335
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    const/4 v2, 0x1

    #@4e
    return v2
.end method

.method public setMemFactorLocked(IZJ)Z
    .locals 21
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J

    #@0
    .prologue
    .line 129
    move-object/from16 v0, p0

    #@2
    iget v14, v0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    #@4
    move/from16 v0, p1

    #@6
    if-ge v0, v14, :cond_2

    #@8
    const/4 v14, 0x1

    #@9
    :goto_0
    move-object/from16 v0, p0

    #@b
    iput-boolean v14, v0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    #@d
    .line 130
    move/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    iput v0, v1, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    #@13
    .line 131
    if-eqz p2, :cond_0

    #@15
    .line 132
    add-int/lit8 p1, p1, 0x4

    #@17
    .line 134
    :cond_0
    move-object/from16 v0, p0

    #@19
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@1b
    iget v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@1d
    move/from16 v0, p1

    #@1f
    if-eq v0, v14, :cond_7

    #@21
    .line 135
    move-object/from16 v0, p0

    #@23
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@25
    iget v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@27
    const/4 v15, -0x1

    #@28
    if-eq v14, v15, :cond_1

    #@2a
    .line 136
    move-object/from16 v0, p0

    #@2c
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@2e
    iget-object v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@34
    iget v15, v15, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@36
    aget-wide v16, v14, v15

    #@38
    .line 137
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@3c
    move-object/from16 v18, v0

    #@3e
    move-object/from16 v0, v18

    #@40
    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@42
    move-wide/from16 v18, v0

    #@44
    sub-long v18, p3, v18

    #@46
    .line 136
    add-long v16, v16, v18

    #@48
    aput-wide v16, v14, v15

    #@4a
    .line 139
    :cond_1
    move-object/from16 v0, p0

    #@4c
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@4e
    move/from16 v0, p1

    #@50
    iput v0, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    #@52
    .line 140
    move-object/from16 v0, p0

    #@54
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@56
    move-wide/from16 v0, p3

    #@58
    iput-wide v0, v14, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    #@5a
    .line 142
    move-object/from16 v0, p0

    #@5c
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@5e
    iget-object v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@60
    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@63
    move-result-object v9

    #@64
    .line 143
    .local v9, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@67
    move-result v14

    #@68
    add-int/lit8 v4, v14, -0x1

    #@6a
    .local v4, "ipkg":I
    :goto_1
    if-ltz v4, :cond_6

    #@6c
    .line 144
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6f
    move-result-object v12

    #@70
    check-cast v12, Landroid/util/SparseArray;

    #@72
    .line 145
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    #@75
    move-result v14

    #@76
    add-int/lit8 v6, v14, -0x1

    #@78
    .local v6, "iuid":I
    :goto_2
    if-ltz v6, :cond_5

    #@7a
    .line 146
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@7d
    move-result-object v13

    #@7e
    check-cast v13, Landroid/util/SparseArray;

    #@80
    .line 147
    .local v13, "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    #@83
    move-result v14

    #@84
    add-int/lit8 v7, v14, -0x1

    #@86
    .local v7, "iver":I
    :goto_3
    if-ltz v7, :cond_4

    #@88
    .line 148
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@8b
    move-result-object v8

    #@8c
    check-cast v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    #@8e
    .line 149
    .local v8, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v11, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@90
    .line 150
    .local v11, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@93
    move-result v14

    #@94
    add-int/lit8 v5, v14, -0x1

    #@96
    .local v5, "isvc":I
    :goto_4
    if-ltz v5, :cond_3

    #@98
    .line 151
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9b
    move-result-object v10

    #@9c
    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    #@9e
    .line 152
    .local v10, "service":Lcom/android/internal/app/procstats/ServiceState;
    move/from16 v0, p1

    #@a0
    move-wide/from16 v1, p3

    #@a2
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    #@a5
    .line 150
    add-int/lit8 v5, v5, -0x1

    #@a7
    goto :goto_4

    #@a8
    .line 129
    .end local v4    # "ipkg":I
    .end local v5    # "isvc":I
    .end local v6    # "iuid":I
    .end local v7    # "iver":I
    .end local v8    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v10    # "service":Lcom/android/internal/app/procstats/ServiceState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_2
    const/4 v14, 0x0

    #@a9
    goto/16 :goto_0

    #@ab
    .line 147
    .restart local v4    # "ipkg":I
    .restart local v5    # "isvc":I
    .restart local v6    # "iuid":I
    .restart local v7    # "iver":I
    .restart local v8    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    add-int/lit8 v7, v7, -0x1

    #@ad
    goto :goto_3

    #@ae
    .line 145
    .end local v5    # "isvc":I
    .end local v8    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@b0
    goto :goto_2

    #@b1
    .line 143
    .end local v7    # "iver":I
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v4, v4, -0x1

    #@b3
    goto :goto_1

    #@b4
    .line 157
    .end local v6    # "iuid":I
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_6
    const/4 v14, 0x1

    #@b5
    return v14

    #@b6
    .line 159
    .end local v4    # "ipkg":I
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_7
    const/4 v14, 0x0

    #@b7
    return v14
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 172
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    #@3
    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    #@5
    add-long/2addr v0, v2

    #@6
    cmp-long v0, p1, v0

    #@8
    if-lez v0, :cond_1

    #@a
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v0

    #@e
    .line 174
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@10
    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    #@12
    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    #@14
    add-long/2addr v2, v4

    #@15
    .line 173
    cmp-long v0, v0, v2

    #@17
    if-lez v0, :cond_0

    #@19
    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c
    move-result-wide v0

    #@1d
    .line 176
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@1f
    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    #@21
    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    #@23
    add-long/2addr v2, v4

    #@24
    .line 175
    cmp-long v0, v0, v2

    #@26
    if-lez v0, :cond_0

    #@28
    .line 177
    iput-boolean v6, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    #@2a
    .line 179
    :cond_0
    return v6

    #@2b
    .line 181
    :cond_1
    const/4 v0, 0x0

    #@2c
    return v0
.end method

.method public shutdownLocked()V
    .locals 2

    #@0
    .prologue
    .line 185
    const-string/jumbo v0, "ProcessStatsService"

    #@3
    const-string/jumbo v1, "Writing process stats before shutdown..."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 186
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@b
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@d
    or-int/lit8 v1, v1, 0x2

    #@f
    iput v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@11
    .line 187
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    #@14
    .line 188
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    #@17
    .line 184
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v5, 0x0

    #@3
    .line 366
    const/4 v2, 0x1

    #@4
    invoke-direct {p0, v6, v5, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@7
    move-result-object v1

    #@8
    .line 367
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@a
    .line 368
    return-void

    #@b
    .line 370
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-le v2, v6, :cond_1

    #@11
    .line 371
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 372
    .local v0, "file":Ljava/lang/String;
    const-string/jumbo v2, "ProcessStatsService"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Pruning old procstats: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 373
    new-instance v2, Ljava/io/File;

    #@33
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@39
    goto :goto_0

    #@3a
    .line 365
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public writeStateAsyncLocked()V
    .locals 1

    #@0
    .prologue
    .line 192
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    #@4
    .line 191
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    #@0
    .prologue
    .line 209
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 210
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 211
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@9
    if-eqz v2, :cond_1

    #@b
    iget-boolean v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 222
    :goto_0
    if-eqz p2, :cond_0

    #@11
    .line 223
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@13
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    #@16
    .line 224
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    #@19
    .line 226
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c
    move-result-wide v4

    #@1d
    iput-wide v4, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    #@1f
    .line 227
    const-string/jumbo v2, "ProcessStatsService"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Prepared write state in "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@31
    move-result-wide v6

    #@32
    sub-long/2addr v6, v0

    #@33
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "ms"

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 228
    if-nez p1, :cond_3

    #@47
    .line 229
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@4a
    move-result-object v2

    #@4b
    new-instance v4, Lcom/android/server/am/ProcessStatsService$2;

    #@4d
    invoke-direct {v4, p0}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    #@50
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    monitor-exit v3

    #@54
    .line 234
    return-void

    #@55
    .line 212
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@58
    move-result-object v2

    #@59
    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@5b
    .line 213
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@5d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@60
    move-result-wide v4

    #@61
    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    #@63
    .line 214
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@65
    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    #@67
    .line 215
    if-eqz p2, :cond_2

    #@69
    .line 216
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@6b
    iget v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@6d
    or-int/lit8 v4, v4, 0x1

    #@6f
    iput v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    #@71
    .line 218
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    #@73
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@75
    const/4 v5, 0x0

    #@76
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@79
    .line 219
    new-instance v2, Landroid/util/AtomicFile;

    #@7b
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@7d
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@80
    move-result-object v4

    #@81
    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@84
    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    #@86
    .line 220
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@88
    goto :goto_0

    #@89
    .line 209
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    #@8a
    monitor-exit v3

    #@8b
    throw v2

    #@8c
    .restart local v0    # "now":J
    :cond_3
    monitor-exit v3

    #@8d
    .line 238
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->performWriteState()V

    #@90
    .line 208
    return-void
.end method

.method public writeStateSyncLocked()V
    .locals 1

    #@0
    .prologue
    .line 196
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    #@4
    .line 195
    return-void
.end method
