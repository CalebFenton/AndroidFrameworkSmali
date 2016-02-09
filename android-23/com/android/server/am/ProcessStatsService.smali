.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/IProcessStats$Stub;
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

.field mProcessStats:Lcom/android/internal/app/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 60
    const-wide/32 v0, 0x1b7740

    #@3
    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    #@5
    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/app/IProcessStats$Stub;-><init>()V

    #@3
    .line 68
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    #@6
    .line 71
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    #@14
    .line 79
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@16
    .line 80
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    #@18
    .line 81
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    #@1a
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@1d
    .line 82
    new-instance v0, Lcom/android/internal/app/ProcessStats;

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-direct {v0, v1}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    #@23
    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@25
    .line 83
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    #@28
    .line 84
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    #@2d
    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    #@30
    .line 78
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
    .line 557
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
    .line 558
    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    #@b
    const-wide/16 v8, 0x2

    #@d
    div-long/2addr v6, v8

    #@e
    .line 557
    sub-long/2addr v4, v6

    #@f
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    #@12
    move-result-object v2

    #@13
    .line 559
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_0

    #@15
    .line 560
    const-string/jumbo v4, "Unable to build stats!"

    #@18
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 561
    return-void

    #@1c
    .line 563
    :cond_0
    new-instance v3, Lcom/android/internal/app/ProcessStats;

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    #@22
    .line 564
    .local v3, "stats":Lcom/android/internal/app/ProcessStats;
    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@24
    invoke-direct {v11, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@27
    .line 565
    .local v11, "stream":Ljava/io/InputStream;
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    #@2a
    .line 566
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 567
    const-string/jumbo v4, "Failure reading: "

    #@31
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@36
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 568
    return-void

    #@3a
    .line 570
    :cond_1
    if-eqz p7, :cond_2

    #@3c
    .line 571
    move-object/from16 v0, p6

    #@3e
    invoke-virtual {v3, p1, v0}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@41
    .line 556
    :goto_0
    return-void

    #@42
    .line 573
    :cond_2
    if-nez p8, :cond_3

    #@44
    if-eqz p9, :cond_5

    #@46
    .line 574
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
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

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
    .line 576
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    #@62
    goto :goto_0
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 582
    const-string/jumbo v0, "Process stats (procstats) dump options:"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 583
    const-string/jumbo v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 584
    const-string/jumbo v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 585
    const-string/jumbo v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    #@15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 586
    const-string/jumbo v0, "    [--start-testing] [--stop-testing] [<package.name>]"

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 587
    const-string/jumbo v0, "  --checkin: perform a checkin: print and delete old committed states."

    #@21
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 588
    const-string/jumbo v0, "  -c: print only state in checkin format."

    #@27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 589
    const-string/jumbo v0, "  --csv: output data suitable for putting in a spreadsheet."

    #@2d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 590
    const-string/jumbo v0, "  --csv-screen: on, off."

    #@33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 591
    const-string/jumbo v0, "  --csv-mem: norm, mod, low, crit."

    #@39
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 592
    const-string/jumbo v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    #@3f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 593
    const-string/jumbo v0, "    service, home, prev, cached"

    #@45
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 594
    const-string/jumbo v0, "  --details: dump per-package details, not just summary."

    #@4b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 595
    const-string/jumbo v0, "  --full-details: dump all timing and active state details."

    #@51
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 596
    const-string/jumbo v0, "  --current: only dump current state."

    #@57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 597
    const-string/jumbo v0, "  --hours: aggregate over about N last hours."

    #@5d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 598
    const-string/jumbo v0, "  --last: only show the last committed stats at index N (starting at 1)."

    #@63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 599
    const-string/jumbo v0, "  --max: for -a, max num of historical batches to print."

    #@69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 600
    const-string/jumbo v0, "  --active: only show currently active processes/services."

    #@6f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 601
    const-string/jumbo v0, "  --commit: commit current stats to disk and reset to start new stats."

    #@75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 602
    const-string/jumbo v0, "  --reset: reset current stats, without committing."

    #@7b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 603
    const-string/jumbo v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    #@81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 604
    const-string/jumbo v0, "  --write: write current in-memory stats to disk."

    #@87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 605
    const-string/jumbo v0, "  --read: replace current stats with last-written stats."

    #@8d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@90
    .line 606
    const-string/jumbo v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    #@93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@96
    .line 607
    const-string/jumbo v0, "  --stop-testing: stop high frequency pss sampling."

    #@99
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9c
    .line 608
    const-string/jumbo v0, "  -a: print everything."

    #@9f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 609
    const-string/jumbo v0, "  -h: print this help text."

    #@a5
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a8
    .line 610
    const-string/jumbo v0, "  <package.name>: optional name of package to filter output by."

    #@ab
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae
    .line 581
    return-void
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 55
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v12

    #@4
    .line 634
    .local v12, "now":J
    const/16 v47, 0x0

    #@6
    .line 635
    .local v47, "isCheckin":Z
    const/16 v23, 0x0

    #@8
    .line 636
    .local v23, "isCompact":Z
    const/16 v48, 0x0

    #@a
    .line 637
    .local v48, "isCsv":Z
    const/16 v38, 0x0

    #@c
    .line 638
    .local v38, "currentOnly":Z
    const/16 v24, 0x0

    #@e
    .line 639
    .local v24, "dumpDetails":Z
    const/16 v25, 0x0

    #@10
    .line 640
    .local v25, "dumpFullDetails":Z
    const/16 v26, 0x0

    #@12
    .line 641
    .local v26, "dumpAll":Z
    const/16 v51, 0x0

    #@14
    .line 642
    .local v51, "quit":Z
    const/4 v2, 0x0

    #@15
    .line 643
    .local v2, "aggregateHours":I
    const/16 v49, 0x0

    #@17
    .line 644
    .local v49, "lastIndex":I
    const/16 v50, 0x2

    #@19
    .line 645
    .local v50, "maxNum":I
    const/16 v27, 0x0

    #@1b
    .line 646
    .local v27, "activeOnly":Z
    const/4 v14, 0x0

    #@1c
    .line 647
    .local v14, "reqPackage":Ljava/lang/String;
    const/4 v6, 0x0

    #@1d
    .line 648
    .local v6, "csvSepScreenStats":Z
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x4

    #@1f
    filled-new-array {v3, v4}, [I

    #@22
    move-result-object v7

    #@23
    .line 649
    .local v7, "csvScreenStats":[I
    const/4 v8, 0x0

    #@24
    .line 650
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
    .line 651
    .local v9, "csvMemStats":[I
    const/4 v10, 0x1

    #@2c
    .line 652
    .local v10, "csvSepProcStats":Z
    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    #@2e
    .line 653
    .local v11, "csvProcStats":[I
    if-eqz p3, :cond_21

    #@30
    .line 654
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
    .line 655
    aget-object v28, p3, v46

    #@3b
    .line 656
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
    .line 657
    const/16 v47, 0x1

    #@48
    .line 654
    :goto_1
    add-int/lit8 v46, v46, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 658
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
    .line 659
    const/16 v23, 0x1

    #@58
    goto :goto_1

    #@59
    .line 660
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
    .line 661
    const/16 v48, 0x1

    #@66
    goto :goto_1

    #@67
    .line 662
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
    .line 663
    add-int/lit8 v46, v46, 0x1

    #@74
    .line 664
    move-object/from16 v0, p3

    #@76
    array-length v3, v0

    #@77
    move/from16 v0, v46

    #@79
    if-lt v0, v3, :cond_3

    #@7b
    .line 665
    const-string/jumbo v3, "Error: argument required for --csv-screen"

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 666
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@86
    .line 667
    return-void

    #@87
    .line 669
    :cond_3
    const/4 v3, 0x1

    #@88
    new-array v0, v3, [Z

    #@8a
    move-object/from16 v52, v0

    #@8c
    .line 670
    .local v52, "sep":[Z
    const/4 v3, 0x1

    #@8d
    new-array v0, v3, [Ljava/lang/String;

    #@8f
    move-object/from16 v41, v0

    #@91
    .line 671
    .local v41, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    #@93
    .line 672
    aget-object v4, p3, v46

    #@95
    .line 671
    const/4 v5, 0x4

    #@96
    move-object/from16 v0, v52

    #@98
    move-object/from16 v1, v41

    #@9a
    invoke-static {v3, v5, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    #@9d
    move-result-object v7

    #@9e
    .line 673
    if-nez v7, :cond_4

    #@a0
    .line 674
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
    .line 675
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@cc
    .line 676
    return-void

    #@cd
    .line 678
    :cond_4
    const/4 v3, 0x0

    #@ce
    aget-boolean v6, v52, v3

    #@d0
    .local v6, "csvSepScreenStats":Z
    goto/16 :goto_1

    #@d2
    .line 679
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
    .line 680
    add-int/lit8 v46, v46, 0x1

    #@df
    .line 681
    move-object/from16 v0, p3

    #@e1
    array-length v3, v0

    #@e2
    move/from16 v0, v46

    #@e4
    if-lt v0, v3, :cond_6

    #@e6
    .line 682
    const-string/jumbo v3, "Error: argument required for --csv-mem"

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 683
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@f1
    .line 684
    return-void

    #@f2
    .line 686
    :cond_6
    const/4 v3, 0x1

    #@f3
    new-array v0, v3, [Z

    #@f5
    move-object/from16 v52, v0

    #@f7
    .line 687
    .restart local v52    # "sep":[Z
    const/4 v3, 0x1

    #@f8
    new-array v0, v3, [Ljava/lang/String;

    #@fa
    move-object/from16 v41, v0

    #@fc
    .line 688
    .restart local v41    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

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
    .line 689
    if-nez v9, :cond_7

    #@10b
    .line 690
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
    .line 691
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@137
    .line 692
    return-void

    #@138
    .line 694
    :cond_7
    const/4 v3, 0x0

    #@139
    aget-boolean v8, v52, v3

    #@13b
    .local v8, "csvSepMemStats":Z
    goto/16 :goto_1

    #@13d
    .line 695
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
    .line 696
    add-int/lit8 v46, v46, 0x1

    #@14a
    .line 697
    move-object/from16 v0, p3

    #@14c
    array-length v3, v0

    #@14d
    move/from16 v0, v46

    #@14f
    if-lt v0, v3, :cond_9

    #@151
    .line 698
    const-string/jumbo v3, "Error: argument required for --csv-proc"

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@159
    .line 699
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@15c
    .line 700
    return-void

    #@15d
    .line 702
    :cond_9
    const/4 v3, 0x1

    #@15e
    new-array v0, v3, [Z

    #@160
    move-object/from16 v52, v0

    #@162
    .line 703
    .restart local v52    # "sep":[Z
    const/4 v3, 0x1

    #@163
    new-array v0, v3, [Ljava/lang/String;

    #@165
    move-object/from16 v41, v0

    #@167
    .line 704
    .restart local v41    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

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
    .line 705
    if-nez v11, :cond_a

    #@176
    .line 706
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
    .line 707
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@1a2
    .line 708
    return-void

    #@1a3
    .line 710
    :cond_a
    const/4 v3, 0x0

    #@1a4
    aget-boolean v10, v52, v3

    #@1a6
    .local v10, "csvSepProcStats":Z
    goto/16 :goto_1

    #@1a8
    .line 711
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
    .line 712
    const/16 v24, 0x1

    #@1b5
    goto/16 :goto_1

    #@1b7
    .line 713
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
    .line 714
    const/16 v25, 0x1

    #@1c4
    goto/16 :goto_1

    #@1c6
    .line 715
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
    .line 716
    add-int/lit8 v46, v46, 0x1

    #@1d3
    .line 717
    move-object/from16 v0, p3

    #@1d5
    array-length v3, v0

    #@1d6
    move/from16 v0, v46

    #@1d8
    if-lt v0, v3, :cond_e

    #@1da
    .line 718
    const-string/jumbo v3, "Error: argument required for --hours"

    #@1dd
    move-object/from16 v0, p2

    #@1df
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e2
    .line 719
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@1e5
    .line 720
    return-void

    #@1e6
    .line 723
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
    .line 724
    :catch_0
    move-exception v39

    #@1ef
    .line 725
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
    .line 726
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@20d
    .line 727
    return-void

    #@20e
    .line 729
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
    .line 730
    add-int/lit8 v46, v46, 0x1

    #@21b
    .line 731
    move-object/from16 v0, p3

    #@21d
    array-length v3, v0

    #@21e
    move/from16 v0, v46

    #@220
    if-lt v0, v3, :cond_10

    #@222
    .line 732
    const-string/jumbo v3, "Error: argument required for --last"

    #@225
    move-object/from16 v0, p2

    #@227
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22a
    .line 733
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@22d
    .line 734
    return-void

    #@22e
    .line 737
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
    .line 738
    :catch_1
    move-exception v39

    #@237
    .line 739
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
    .line 740
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@255
    .line 741
    return-void

    #@256
    .line 743
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
    .line 744
    add-int/lit8 v46, v46, 0x1

    #@263
    .line 745
    move-object/from16 v0, p3

    #@265
    array-length v3, v0

    #@266
    move/from16 v0, v46

    #@268
    if-lt v0, v3, :cond_12

    #@26a
    .line 746
    const-string/jumbo v3, "Error: argument required for --max"

    #@26d
    move-object/from16 v0, p2

    #@26f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@272
    .line 747
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@275
    .line 748
    return-void

    #@276
    .line 751
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
    .line 752
    :catch_2
    move-exception v39

    #@27f
    .line 753
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
    .line 754
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@29d
    .line 755
    return-void

    #@29e
    .line 757
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
    .line 758
    const/16 v27, 0x1

    #@2ab
    .line 759
    const/16 v38, 0x1

    #@2ad
    goto/16 :goto_1

    #@2af
    .line 760
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
    .line 761
    const/16 v38, 0x1

    #@2bc
    goto/16 :goto_1

    #@2be
    .line 762
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
    .line 763
    move-object/from16 v0, p0

    #@2cb
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2cd
    monitor-enter v4

    #@2ce
    .line 764
    :try_start_3
    move-object/from16 v0, p0

    #@2d0
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@2d2
    iget v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@2d4
    or-int/lit8 v5, v5, 0x1

    #@2d6
    iput v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@2d8
    .line 765
    const/4 v3, 0x1

    #@2d9
    const/4 v5, 0x1

    #@2da
    move-object/from16 v0, p0

    #@2dc
    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    #@2df
    .line 766
    const-string/jumbo v3, "Process stats committed."

    #@2e2
    move-object/from16 v0, p2

    #@2e4
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2e7
    .line 767
    const/16 v51, 0x1

    #@2e9
    :goto_2
    monitor-exit v4

    #@2ea
    goto/16 :goto_1

    #@2ec
    .line 763
    :catchall_0
    move-exception v3

    #@2ed
    monitor-exit v4

    #@2ee
    throw v3

    #@2ef
    .line 769
    :cond_16
    const-string/jumbo v3, "--reset"

    #@2f2
    move-object/from16 v0, v28

    #@2f4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f7
    move-result v3

    #@2f8
    if-eqz v3, :cond_17

    #@2fa
    .line 770
    move-object/from16 v0, p0

    #@2fc
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2fe
    monitor-enter v4

    #@2ff
    .line 771
    :try_start_4
    move-object/from16 v0, p0

    #@301
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@303
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    #@306
    .line 772
    const-string/jumbo v3, "Process stats reset."

    #@309
    move-object/from16 v0, p2

    #@30b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@30e
    .line 773
    const/16 v51, 0x1

    #@310
    monitor-exit v4

    #@311
    goto/16 :goto_1

    #@313
    .line 770
    :catchall_1
    move-exception v3

    #@314
    monitor-exit v4

    #@315
    throw v3

    #@316
    .line 775
    :cond_17
    const-string/jumbo v3, "--clear"

    #@319
    move-object/from16 v0, v28

    #@31b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31e
    move-result v3

    #@31f
    if-eqz v3, :cond_19

    #@321
    .line 776
    move-object/from16 v0, p0

    #@323
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@325
    monitor-enter v4

    #@326
    .line 777
    :try_start_5
    move-object/from16 v0, p0

    #@328
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@32a
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    #@32d
    .line 778
    const/4 v3, 0x0

    #@32e
    const/4 v5, 0x1

    #@32f
    const/16 v16, 0x1

    #@331
    move-object/from16 v0, p0

    #@333
    move/from16 v1, v16

    #@335
    invoke-direct {v0, v3, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@338
    move-result-object v45

    #@339
    .line 779
    .local v45, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v45, :cond_18

    #@33b
    .line 780
    const/16 v42, 0x0

    #@33d
    .local v42, "fi":I
    :goto_3
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    #@340
    move-result v3

    #@341
    move/from16 v0, v42

    #@343
    if-ge v0, v3, :cond_18

    #@345
    .line 781
    new-instance v5, Ljava/io/File;

    #@347
    move-object/from16 v0, v45

    #@349
    move/from16 v1, v42

    #@34b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34e
    move-result-object v3

    #@34f
    check-cast v3, Ljava/lang/String;

    #@351
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@354
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@357
    .line 780
    add-int/lit8 v42, v42, 0x1

    #@359
    goto :goto_3

    #@35a
    .line 784
    .end local v42    # "fi":I
    :cond_18
    const-string/jumbo v3, "All process stats cleared."

    #@35d
    move-object/from16 v0, p2

    #@35f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@362
    .line 785
    const/16 v51, 0x1

    #@364
    goto :goto_2

    #@365
    .line 776
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v3

    #@366
    monitor-exit v4

    #@367
    throw v3

    #@368
    .line 787
    :cond_19
    const-string/jumbo v3, "--write"

    #@36b
    move-object/from16 v0, v28

    #@36d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@370
    move-result v3

    #@371
    if-eqz v3, :cond_1a

    #@373
    .line 788
    move-object/from16 v0, p0

    #@375
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@377
    monitor-enter v4

    #@378
    .line 789
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    #@37b
    .line 790
    const-string/jumbo v3, "Process stats written."

    #@37e
    move-object/from16 v0, p2

    #@380
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@383
    .line 791
    const/16 v51, 0x1

    #@385
    monitor-exit v4

    #@386
    goto/16 :goto_1

    #@388
    .line 788
    :catchall_3
    move-exception v3

    #@389
    monitor-exit v4

    #@38a
    throw v3

    #@38b
    .line 793
    :cond_1a
    const-string/jumbo v3, "--read"

    #@38e
    move-object/from16 v0, v28

    #@390
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@393
    move-result v3

    #@394
    if-eqz v3, :cond_1b

    #@396
    .line 794
    move-object/from16 v0, p0

    #@398
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@39a
    monitor-enter v4

    #@39b
    .line 795
    :try_start_7
    move-object/from16 v0, p0

    #@39d
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@39f
    move-object/from16 v0, p0

    #@3a1
    iget-object v5, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@3a3
    move-object/from16 v0, p0

    #@3a5
    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    #@3a8
    .line 796
    const-string/jumbo v3, "Process stats read."

    #@3ab
    move-object/from16 v0, p2

    #@3ad
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@3b0
    .line 797
    const/16 v51, 0x1

    #@3b2
    monitor-exit v4

    #@3b3
    goto/16 :goto_1

    #@3b5
    .line 794
    :catchall_4
    move-exception v3

    #@3b6
    monitor-exit v4

    #@3b7
    throw v3

    #@3b8
    .line 799
    :cond_1b
    const-string/jumbo v3, "--start-testing"

    #@3bb
    move-object/from16 v0, v28

    #@3bd
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c0
    move-result v3

    #@3c1
    if-eqz v3, :cond_1c

    #@3c3
    .line 800
    move-object/from16 v0, p0

    #@3c5
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3c7
    monitor-enter v4

    #@3c8
    .line 801
    :try_start_8
    move-object/from16 v0, p0

    #@3ca
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3cc
    const/4 v5, 0x1

    #@3cd
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    #@3d0
    .line 802
    const-string/jumbo v3, "Started high frequency sampling."

    #@3d3
    move-object/from16 v0, p2

    #@3d5
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    #@3d8
    .line 803
    const/16 v51, 0x1

    #@3da
    monitor-exit v4

    #@3db
    goto/16 :goto_1

    #@3dd
    .line 800
    :catchall_5
    move-exception v3

    #@3de
    monitor-exit v4

    #@3df
    throw v3

    #@3e0
    .line 805
    :cond_1c
    const-string/jumbo v3, "--stop-testing"

    #@3e3
    move-object/from16 v0, v28

    #@3e5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e8
    move-result v3

    #@3e9
    if-eqz v3, :cond_1d

    #@3eb
    .line 806
    move-object/from16 v0, p0

    #@3ed
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3ef
    monitor-enter v4

    #@3f0
    .line 807
    :try_start_9
    move-object/from16 v0, p0

    #@3f2
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3f4
    const/4 v5, 0x0

    #@3f5
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    #@3f8
    .line 808
    const-string/jumbo v3, "Stopped high frequency sampling."

    #@3fb
    move-object/from16 v0, p2

    #@3fd
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    #@400
    .line 809
    const/16 v51, 0x1

    #@402
    monitor-exit v4

    #@403
    goto/16 :goto_1

    #@405
    .line 806
    :catchall_6
    move-exception v3

    #@406
    monitor-exit v4

    #@407
    throw v3

    #@408
    .line 811
    :cond_1d
    const-string/jumbo v3, "-h"

    #@40b
    move-object/from16 v0, v28

    #@40d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@410
    move-result v3

    #@411
    if-eqz v3, :cond_1e

    #@413
    .line 812
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@416
    .line 813
    return-void

    #@417
    .line 814
    :cond_1e
    const-string/jumbo v3, "-a"

    #@41a
    move-object/from16 v0, v28

    #@41c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41f
    move-result v3

    #@420
    if-eqz v3, :cond_1f

    #@422
    .line 815
    const/16 v24, 0x1

    #@424
    .line 816
    const/16 v26, 0x1

    #@426
    goto/16 :goto_1

    #@428
    .line 817
    :cond_1f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    #@42b
    move-result v3

    #@42c
    if-lez v3, :cond_20

    #@42e
    const/4 v3, 0x0

    #@42f
    move-object/from16 v0, v28

    #@431
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@434
    move-result v3

    #@435
    const/16 v4, 0x2d

    #@437
    if-ne v3, v4, :cond_20

    #@439
    .line 818
    new-instance v3, Ljava/lang/StringBuilder;

    #@43b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43e
    const-string/jumbo v4, "Unknown option: "

    #@441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@444
    move-result-object v3

    #@445
    move-object/from16 v0, v28

    #@447
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44a
    move-result-object v3

    #@44b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44e
    move-result-object v3

    #@44f
    move-object/from16 v0, p2

    #@451
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@454
    .line 819
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@457
    .line 820
    return-void

    #@458
    .line 823
    :cond_20
    move-object/from16 v14, v28

    #@45a
    .line 828
    .local v14, "reqPackage":Ljava/lang/String;
    const/16 v24, 0x1

    #@45c
    goto/16 :goto_1

    #@45e
    .line 833
    .end local v14    # "reqPackage":Ljava/lang/String;
    .end local v28    # "arg":Ljava/lang/String;
    .end local v46    # "i":I
    :cond_21
    if-eqz v51, :cond_22

    #@460
    .line 834
    return-void

    #@461
    .line 837
    :cond_22
    if-eqz v48, :cond_26

    #@463
    .line 838
    const-string/jumbo v3, "Processes running summed over"

    #@466
    move-object/from16 v0, p2

    #@468
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46b
    .line 839
    if-nez v6, :cond_23

    #@46d
    .line 840
    const/16 v46, 0x0

    #@46f
    .restart local v46    # "i":I
    :goto_4
    array-length v3, v7

    #@470
    move/from16 v0, v46

    #@472
    if-ge v0, v3, :cond_23

    #@474
    .line 841
    const-string/jumbo v3, " "

    #@477
    move-object/from16 v0, p2

    #@479
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47c
    .line 842
    aget v3, v7, v46

    #@47e
    move-object/from16 v0, p2

    #@480
    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    #@483
    .line 840
    add-int/lit8 v46, v46, 0x1

    #@485
    goto :goto_4

    #@486
    .line 845
    .end local v46    # "i":I
    :cond_23
    if-nez v8, :cond_24

    #@488
    .line 846
    const/16 v46, 0x0

    #@48a
    .restart local v46    # "i":I
    :goto_5
    array-length v3, v9

    #@48b
    move/from16 v0, v46

    #@48d
    if-ge v0, v3, :cond_24

    #@48f
    .line 847
    const-string/jumbo v3, " "

    #@492
    move-object/from16 v0, p2

    #@494
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@497
    .line 848
    aget v3, v9, v46

    #@499
    move-object/from16 v0, p2

    #@49b
    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    #@49e
    .line 846
    add-int/lit8 v46, v46, 0x1

    #@4a0
    goto :goto_5

    #@4a1
    .line 851
    .end local v46    # "i":I
    :cond_24
    if-nez v10, :cond_25

    #@4a3
    .line 852
    const/16 v46, 0x0

    #@4a5
    .restart local v46    # "i":I
    :goto_6
    array-length v3, v11

    #@4a6
    move/from16 v0, v46

    #@4a8
    if-ge v0, v3, :cond_25

    #@4aa
    .line 853
    const-string/jumbo v3, " "

    #@4ad
    move-object/from16 v0, p2

    #@4af
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b2
    .line 854
    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    #@4b4
    aget v4, v11, v46

    #@4b6
    aget-object v3, v3, v4

    #@4b8
    move-object/from16 v0, p2

    #@4ba
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4bd
    .line 852
    add-int/lit8 v46, v46, 0x1

    #@4bf
    goto :goto_6

    #@4c0
    .line 857
    .end local v46    # "i":I
    :cond_25
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@4c3
    .line 858
    move-object/from16 v0, p0

    #@4c5
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4c7
    move-object/from16 v16, v0

    #@4c9
    monitor-enter v16

    #@4ca
    .line 859
    const/4 v5, 0x0

    #@4cb
    move-object/from16 v3, p0

    #@4cd
    move-object/from16 v4, p2

    #@4cf
    :try_start_a
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    #@4d2
    monitor-exit v16

    #@4d3
    .line 880
    return-void

    #@4d4
    .line 858
    :catchall_7
    move-exception v3

    #@4d5
    monitor-exit v16

    #@4d6
    throw v3

    #@4d7
    .line 881
    :cond_26
    if-eqz v2, :cond_27

    #@4d9
    .line 882
    const-string/jumbo v3, "AGGREGATED OVER LAST "

    #@4dc
    move-object/from16 v0, p2

    #@4de
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e1
    move-object/from16 v0, p2

    #@4e3
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    #@4e6
    const-string/jumbo v3, " HOURS:"

    #@4e9
    move-object/from16 v0, p2

    #@4eb
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ee
    .line 883
    int-to-long v0, v2

    #@4ef
    move-wide/from16 v18, v0

    #@4f1
    move-object/from16 v16, p0

    #@4f3
    move-object/from16 v17, p2

    #@4f5
    move-wide/from16 v20, v12

    #@4f7
    move-object/from16 v22, v14

    #@4f9
    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    #@4fc
    .line 885
    return-void

    #@4fd
    .line 886
    :cond_27
    if-lez v49, :cond_33

    #@4ff
    .line 887
    const-string/jumbo v3, "LAST STATS AT INDEX "

    #@502
    move-object/from16 v0, p2

    #@504
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@507
    move-object/from16 v0, p2

    #@509
    move/from16 v1, v49

    #@50b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@50e
    const-string/jumbo v3, ":"

    #@511
    move-object/from16 v0, p2

    #@513
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@516
    .line 888
    const/4 v3, 0x0

    #@517
    const/4 v4, 0x0

    #@518
    const/4 v5, 0x1

    #@519
    move-object/from16 v0, p0

    #@51b
    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@51e
    move-result-object v45

    #@51f
    .line 889
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    #@522
    move-result v3

    #@523
    move/from16 v0, v49

    #@525
    if-lt v0, v3, :cond_28

    #@527
    .line 890
    const-string/jumbo v3, "Only have "

    #@52a
    move-object/from16 v0, p2

    #@52c
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52f
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    #@532
    move-result v3

    #@533
    move-object/from16 v0, p2

    #@535
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@538
    const-string/jumbo v3, " data sets"

    #@53b
    move-object/from16 v0, p2

    #@53d
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@540
    .line 891
    return-void

    #@541
    .line 893
    :cond_28
    new-instance v43, Landroid/util/AtomicFile;

    #@543
    new-instance v4, Ljava/io/File;

    #@545
    move-object/from16 v0, v45

    #@547
    move/from16 v1, v49

    #@549
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54c
    move-result-object v3

    #@54d
    check-cast v3, Ljava/lang/String;

    #@54f
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@552
    move-object/from16 v0, v43

    #@554
    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@557
    .line 894
    .local v43, "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    #@559
    const/4 v3, 0x0

    #@55a
    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    #@55d
    .line 895
    .local v15, "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    #@55f
    move-object/from16 v1, v43

    #@561
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    #@564
    .line 896
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@566
    if-eqz v3, :cond_2b

    #@568
    .line 897
    if-nez v47, :cond_29

    #@56a
    if-eqz v23, :cond_2a

    #@56c
    :cond_29
    const-string/jumbo v3, "err,"

    #@56f
    move-object/from16 v0, p2

    #@571
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@574
    .line 898
    :cond_2a
    const-string/jumbo v3, "Failure reading "

    #@577
    move-object/from16 v0, p2

    #@579
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57c
    move-object/from16 v0, v45

    #@57e
    move/from16 v1, v49

    #@580
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@583
    move-result-object v3

    #@584
    check-cast v3, Ljava/lang/String;

    #@586
    move-object/from16 v0, p2

    #@588
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58b
    .line 899
    const-string/jumbo v3, "; "

    #@58e
    move-object/from16 v0, p2

    #@590
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@593
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@595
    move-object/from16 v0, p2

    #@597
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59a
    .line 900
    return-void

    #@59b
    .line 902
    :cond_2b
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@59e
    move-result-object v3

    #@59f
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@5a2
    move-result-object v44

    #@5a3
    .line 903
    .local v44, "fileStr":Ljava/lang/String;
    const-string/jumbo v3, ".ci"

    #@5a6
    move-object/from16 v0, v44

    #@5a8
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5ab
    move-result v37

    #@5ac
    .line 904
    .local v37, "checkedIn":Z
    if-nez v47, :cond_2c

    #@5ae
    if-eqz v23, :cond_2e

    #@5b0
    .line 906
    :cond_2c
    move-object/from16 v0, p2

    #@5b2
    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@5b5
    .line 922
    :cond_2d
    :goto_7
    return-void

    #@5b6
    .line 908
    :cond_2e
    const-string/jumbo v3, "COMMITTED STATS FROM "

    #@5b9
    move-object/from16 v0, p2

    #@5bb
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5be
    .line 909
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@5c0
    move-object/from16 v0, p2

    #@5c2
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c5
    .line 910
    if-eqz v37, :cond_2f

    #@5c7
    const-string/jumbo v3, " (checked in)"

    #@5ca
    move-object/from16 v0, p2

    #@5cc
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5cf
    .line 911
    :cond_2f
    const-string/jumbo v3, ":"

    #@5d2
    move-object/from16 v0, p2

    #@5d4
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d7
    .line 912
    if-nez v24, :cond_30

    #@5d9
    if-eqz v25, :cond_32

    #@5db
    .line 913
    :cond_30
    if-eqz v25, :cond_31

    #@5dd
    const/16 v20, 0x0

    #@5df
    :goto_8
    move-object/from16 v16, p2

    #@5e1
    move-object/from16 v17, v14

    #@5e3
    move-wide/from16 v18, v12

    #@5e5
    move/from16 v21, v26

    #@5e7
    move/from16 v22, v27

    #@5e9
    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    #@5ec
    .line 915
    if-eqz v26, :cond_2d

    #@5ee
    .line 916
    const-string/jumbo v3, "  mFile="

    #@5f1
    move-object/from16 v0, p2

    #@5f3
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f6
    move-object/from16 v0, p0

    #@5f8
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@5fa
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@5fd
    move-result-object v3

    #@5fe
    move-object/from16 v0, p2

    #@600
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@603
    goto :goto_7

    #@604
    .line 913
    :cond_31
    const/16 v20, 0x1

    #@606
    goto :goto_8

    #@607
    :cond_32
    move-object/from16 v16, p2

    #@609
    move-object/from16 v17, v14

    #@60b
    move-wide/from16 v18, v12

    #@60d
    move/from16 v20, v27

    #@60f
    .line 919
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    #@612
    goto :goto_7

    #@613
    .line 925
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_33
    const/16 v53, 0x0

    #@615
    .line 926
    .local v53, "sepNeeded":Z
    if-nez v26, :cond_34

    #@617
    if-eqz v47, :cond_42

    #@619
    .line 927
    :cond_34
    move-object/from16 v0, p0

    #@61b
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@61d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@620
    .line 929
    if-eqz v47, :cond_39

    #@622
    const/4 v3, 0x0

    #@623
    :goto_9
    const/4 v4, 0x0

    #@624
    const/4 v5, 0x0

    #@625
    :try_start_b
    move-object/from16 v0, p0

    #@627
    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@62a
    move-result-object v45

    #@62b
    .line 930
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v45, :cond_41

    #@62d
    .line 931
    if-eqz v47, :cond_3a

    #@62f
    const/16 v54, 0x0

    #@631
    .line 932
    .local v54, "start":I
    :goto_a
    if-gez v54, :cond_35

    #@633
    .line 933
    const/16 v54, 0x0

    #@635
    .line 935
    :cond_35
    move/from16 v46, v54

    #@637
    .restart local v46    # "i":I
    :goto_b
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    #@63a
    move-result v3

    #@63b
    move/from16 v0, v46

    #@63d
    if-ge v0, v3, :cond_41

    #@63f
    .line 938
    :try_start_c
    new-instance v43, Landroid/util/AtomicFile;

    #@641
    new-instance v4, Ljava/io/File;

    #@643
    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@646
    move-result-object v3

    #@647
    check-cast v3, Ljava/lang/String;

    #@649
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@64c
    move-object/from16 v0, v43

    #@64e
    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@651
    .line 939
    .restart local v43    # "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    #@653
    const/4 v3, 0x0

    #@654
    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    #@657
    .line 940
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    #@659
    move-object/from16 v1, v43

    #@65b
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    #@65e
    .line 941
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@660
    if-eqz v3, :cond_3b

    #@662
    .line 942
    if-nez v47, :cond_36

    #@664
    if-eqz v23, :cond_37

    #@666
    :cond_36
    const-string/jumbo v3, "err,"

    #@669
    move-object/from16 v0, p2

    #@66b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66e
    .line 943
    :cond_37
    const-string/jumbo v3, "Failure reading "

    #@671
    move-object/from16 v0, p2

    #@673
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@676
    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@679
    move-result-object v3

    #@67a
    check-cast v3, Ljava/lang/String;

    #@67c
    move-object/from16 v0, p2

    #@67e
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@681
    .line 944
    const-string/jumbo v3, "; "

    #@684
    move-object/from16 v0, p2

    #@686
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@689
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@68b
    move-object/from16 v0, p2

    #@68d
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@690
    .line 946
    new-instance v4, Ljava/io/File;

    #@692
    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@695
    move-result-object v3

    #@696
    check-cast v3, Ljava/lang/String;

    #@698
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@69b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    #@69e
    .line 935
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v43    # "file":Landroid/util/AtomicFile;
    :cond_38
    :goto_c
    add-int/lit8 v46, v46, 0x1

    #@6a0
    goto :goto_b

    #@6a1
    .line 929
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "i":I
    .end local v54    # "start":I
    :cond_39
    const/4 v3, 0x1

    #@6a2
    goto :goto_9

    #@6a3
    .line 931
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3a
    :try_start_d
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    #@6a6
    move-result v3

    #@6a7
    sub-int v54, v3, v50

    #@6a9
    .restart local v54    # "start":I
    goto :goto_a

    #@6aa
    .line 949
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v43    # "file":Landroid/util/AtomicFile;
    .restart local v46    # "i":I
    :cond_3b
    :try_start_e
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@6ad
    move-result-object v3

    #@6ae
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@6b1
    move-result-object v44

    #@6b2
    .line 950
    .restart local v44    # "fileStr":Ljava/lang/String;
    const-string/jumbo v3, ".ci"

    #@6b5
    move-object/from16 v0, v44

    #@6b7
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6ba
    move-result v37

    #@6bb
    .line 951
    .restart local v37    # "checkedIn":Z
    if-nez v47, :cond_3c

    #@6bd
    if-eqz v23, :cond_3d

    #@6bf
    .line 953
    :cond_3c
    move-object/from16 v0, p2

    #@6c1
    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@6c4
    .line 974
    :goto_d
    if-eqz v47, :cond_38

    #@6c6
    .line 976
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@6c9
    move-result-object v3

    #@6ca
    new-instance v4, Ljava/io/File;

    #@6cc
    .line 977
    new-instance v5, Ljava/lang/StringBuilder;

    #@6ce
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6d1
    move-object/from16 v0, v44

    #@6d3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d6
    move-result-object v5

    #@6d7
    const-string/jumbo v16, ".ci"

    #@6da
    move-object/from16 v0, v16

    #@6dc
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6df
    move-result-object v5

    #@6e0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e3
    move-result-object v5

    #@6e4
    .line 976
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6e7
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    #@6ea
    goto :goto_c

    #@6eb
    .line 979
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    :catch_3
    move-exception v40

    #@6ec
    .line 980
    .local v40, "e":Ljava/lang/Throwable;
    :try_start_f
    const-string/jumbo v3, "**** FAILURE DUMPING STATE: "

    #@6ef
    move-object/from16 v0, p2

    #@6f1
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f4
    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f7
    move-result-object v3

    #@6f8
    check-cast v3, Ljava/lang/String;

    #@6fa
    move-object/from16 v0, p2

    #@6fc
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6ff
    .line 981
    move-object/from16 v0, v40

    #@701
    move-object/from16 v1, p2

    #@703
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    #@706
    goto :goto_c

    #@707
    .line 985
    .end local v40    # "e":Ljava/lang/Throwable;
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "i":I
    .end local v54    # "start":I
    :catchall_8
    move-exception v3

    #@708
    .line 986
    move-object/from16 v0, p0

    #@70a
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@70c
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@70f
    .line 985
    throw v3

    #@710
    .line 955
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v37    # "checkedIn":Z
    .restart local v43    # "file":Landroid/util/AtomicFile;
    .restart local v44    # "fileStr":Ljava/lang/String;
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v46    # "i":I
    .restart local v54    # "start":I
    :cond_3d
    if-eqz v53, :cond_3f

    #@712
    .line 956
    :try_start_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@715
    .line 960
    :goto_e
    const-string/jumbo v3, "COMMITTED STATS FROM "

    #@718
    move-object/from16 v0, p2

    #@71a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71d
    .line 961
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@71f
    move-object/from16 v0, p2

    #@721
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@724
    .line 962
    if-eqz v37, :cond_3e

    #@726
    const-string/jumbo v3, " (checked in)"

    #@729
    move-object/from16 v0, p2

    #@72b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72e
    .line 963
    :cond_3e
    const-string/jumbo v3, ":"

    #@731
    move-object/from16 v0, p2

    #@733
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@736
    .line 967
    if-eqz v25, :cond_40

    #@738
    .line 968
    const/16 v20, 0x0

    #@73a
    const/16 v21, 0x0

    #@73c
    move-object/from16 v16, p2

    #@73e
    move-object/from16 v17, v14

    #@740
    move-wide/from16 v18, v12

    #@742
    move/from16 v22, v27

    #@744
    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    #@747
    goto/16 :goto_d

    #@749
    .line 958
    :cond_3f
    const/16 v53, 0x1

    #@74b
    goto :goto_e

    #@74c
    :cond_40
    move-object/from16 v16, p2

    #@74e
    move-object/from16 v17, v14

    #@750
    move-wide/from16 v18, v12

    #@752
    move/from16 v20, v27

    #@754
    .line 971
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    #@757
    goto/16 :goto_d

    #@759
    .line 986
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    .end local v46    # "i":I
    .end local v54    # "start":I
    :cond_41
    move-object/from16 v0, p0

    #@75b
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@75d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@760
    .line 989
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_42
    if-nez v47, :cond_44

    #@762
    .line 990
    move-object/from16 v0, p0

    #@764
    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@766
    monitor-enter v4

    #@767
    .line 991
    if-eqz v23, :cond_45

    #@769
    .line 992
    :try_start_11
    move-object/from16 v0, p0

    #@76b
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@76d
    move-object/from16 v0, p2

    #@76f
    invoke-virtual {v3, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    #@772
    :goto_f
    monitor-exit v4

    #@773
    .line 1010
    if-nez v38, :cond_44

    #@775
    .line 1011
    if-eqz v53, :cond_43

    #@777
    .line 1012
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@77a
    .line 1014
    :cond_43
    const-string/jumbo v3, "AGGREGATED OVER LAST 24 HOURS:"

    #@77d
    move-object/from16 v0, p2

    #@77f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@782
    .line 1015
    const-wide/16 v18, 0x18

    #@784
    move-object/from16 v16, p0

    #@786
    move-object/from16 v17, p2

    #@788
    move-wide/from16 v20, v12

    #@78a
    move-object/from16 v22, v14

    #@78c
    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    #@78f
    .line 1017
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@792
    .line 1018
    const-string/jumbo v3, "AGGREGATED OVER LAST 3 HOURS:"

    #@795
    move-object/from16 v0, p2

    #@797
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@79a
    .line 1019
    const-wide/16 v18, 0x3

    #@79c
    move-object/from16 v16, p0

    #@79e
    move-object/from16 v17, p2

    #@7a0
    move-wide/from16 v20, v12

    #@7a2
    move-object/from16 v22, v14

    #@7a4
    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    #@7a7
    .line 631
    :cond_44
    return-void

    #@7a8
    .line 994
    :cond_45
    if-eqz v53, :cond_46

    #@7aa
    .line 995
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@7ad
    .line 997
    :cond_46
    const-string/jumbo v3, "CURRENT STATS:"

    #@7b0
    move-object/from16 v0, p2

    #@7b2
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b5
    .line 998
    if-nez v24, :cond_47

    #@7b7
    if-eqz v25, :cond_4a

    #@7b9
    .line 999
    :cond_47
    move-object/from16 v0, p0

    #@7bb
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@7bd
    move-object/from16 v29, v0

    #@7bf
    if-eqz v25, :cond_49

    #@7c1
    const/16 v34, 0x0

    #@7c3
    :goto_10
    move-object/from16 v30, p2

    #@7c5
    move-object/from16 v31, v14

    #@7c7
    move-wide/from16 v32, v12

    #@7c9
    move/from16 v35, v26

    #@7cb
    move/from16 v36, v27

    #@7cd
    invoke-virtual/range {v29 .. v36}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    #@7d0
    .line 1001
    if-eqz v26, :cond_48

    #@7d2
    .line 1002
    const-string/jumbo v3, "  mFile="

    #@7d5
    move-object/from16 v0, p2

    #@7d7
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7da
    move-object/from16 v0, p0

    #@7dc
    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    #@7de
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@7e1
    move-result-object v3

    #@7e2
    move-object/from16 v0, p2

    #@7e4
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@7e7
    .line 1007
    :cond_48
    :goto_11
    const/16 v53, 0x1

    #@7e9
    goto :goto_f

    #@7ea
    .line 999
    :cond_49
    const/16 v34, 0x1

    #@7ec
    goto :goto_10

    #@7ed
    .line 1005
    :cond_4a
    move-object/from16 v0, p0

    #@7ef
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@7f1
    move-object/from16 v17, v0

    #@7f3
    move-object/from16 v18, p2

    #@7f5
    move-object/from16 v19, v14

    #@7f7
    move-wide/from16 v20, v12

    #@7f9
    move/from16 v22, v27

    #@7fb
    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    #@7fe
    goto :goto_11

    #@7ff
    .line 990
    :catchall_9
    move-exception v3

    #@800
    monitor-exit v4

    #@801
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
    .line 350
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    #@3
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@6
    move-result-object v3

    #@7
    .line 351
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    #@9
    array-length v6, v3

    #@a
    if-gt v6, p1, :cond_1

    #@c
    .line 352
    :cond_0
    return-object v7

    #@d
    .line 354
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    #@f
    array-length v6, v3

    #@10
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    .line 355
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
    .line 357
    .local v0, "currentFile":Ljava/lang/String;
    const/4 v5, 0x0

    #@1e
    .local v5, "i":I
    :goto_0
    array-length v6, v3

    #@1f
    if-ge v5, v6, :cond_5

    #@21
    .line 358
    aget-object v1, v3, v5

    #@23
    .line 359
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 361
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
    .line 357
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@34
    goto :goto_0

    #@35
    .line 365
    :cond_3
    if-nez p2, :cond_4

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_2

    #@3d
    .line 369
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_1

    #@41
    .line 371
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStr":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@44
    .line 372
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
    .line 405
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 406
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    #@6
    .line 407
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
    .line 408
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
    .line 409
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
    .line 407
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 408
    :cond_0
    const/4 v0, 0x0

    #@29
    .local v0, "c":C
    goto :goto_1

    #@2a
    .line 412
    .end local v0    # "c":C
    :cond_1
    const/16 v8, 0x2c

    #@2c
    if-ne v0, v8, :cond_4

    #@2e
    const/4 v3, 0x1

    #@2f
    .line 413
    .local v3, "isSep":Z
    :goto_3
    if-nez v5, :cond_5

    #@31
    .line 415
    const/4 v8, 0x0

    #@32
    aput-boolean v3, p3, v8

    #@34
    .line 420
    :cond_2
    add-int/lit8 v8, v2, -0x1

    #@36
    if-ge v5, v8, :cond_7

    #@38
    .line 421
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 422
    .local v7, "str":Ljava/lang/String;
    const/4 v4, 0x0

    #@3d
    .local v4, "j":I
    :goto_4
    array-length v8, p0

    #@3e
    if-ge v4, v8, :cond_3

    #@40
    .line 423
    aget-object v8, p0, v4

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_6

    #@48
    .line 424
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    .line 425
    const/4 v7, 0x0

    #@50
    .line 429
    .end local v7    # "str":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_7

    #@52
    .line 430
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
    .line 431
    const/4 v8, 0x0

    #@71
    return-object v8

    #@72
    .line 412
    .end local v3    # "isSep":Z
    .end local v4    # "j":I
    :cond_4
    const/4 v3, 0x0

    #@73
    .restart local v3    # "isSep":Z
    goto :goto_3

    #@74
    .line 416
    :cond_5
    if-eqz v0, :cond_2

    #@76
    const/4 v8, 0x0

    #@77
    aget-boolean v8, p3, v8

    #@79
    if-eq v8, v3, :cond_2

    #@7b
    .line 417
    const-string/jumbo v8, "inconsistent separators (can\'t mix \',\' with \'+\')"

    #@7e
    const/4 v9, 0x0

    #@7f
    aput-object v8, p4, v9

    #@81
    .line 418
    const/4 v8, 0x0

    #@82
    return-object v8

    #@83
    .line 422
    .restart local v4    # "j":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@85
    goto :goto_4

    #@86
    .line 434
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v2, 0x1

    #@88
    goto :goto_2

    #@89
    .line 437
    .end local v3    # "isSep":Z
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@8c
    move-result v8

    #@8d
    new-array v1, v8, [I

    #@8f
    .line 438
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
    .line 439
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
    .line 438
    add-int/lit8 v2, v2, 0x1

    #@a5
    goto :goto_5

    #@a6
    .line 441
    :cond_9
    return-object v1
.end method

.method private updateFile()V
    .locals 5

    #@0
    .prologue
    .line 251
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
    .line 252
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@14
    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@16
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    .line 252
    const-string/jumbo v4, ".bin"

    #@1d
    .line 251
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
    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    #@33
    .line 250
    return-void
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z

    #@0
    .prologue
    .line 209
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 210
    return-void

    #@5
    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    #@7
    .line 213
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    #@8
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    #@a
    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    #@d
    .line 208
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
    .line 177
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

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
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(JJJJJ)V

    #@e
    .line 176
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 615
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
    .line 617
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
    .line 618
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v3

    #@1b
    .line 617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 618
    const-string/jumbo v3, ", uid="

    #@22
    .line 617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v3

    #@2a
    .line 617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 619
    const-string/jumbo v3, " without permission "

    #@31
    .line 617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 619
    const-string/jumbo v3, "android.permission.DUMP"

    #@38
    .line 617
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
    .line 620
    return-void

    #@44
    .line 623
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@47
    move-result-wide v0

    #@48
    .line 625
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 614
    return-void

    #@4f
    .line 626
    :catchall_0
    move-exception v2

    #@50
    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 626
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
    .line 390
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@2
    .line 391
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
    .line 390
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    #@11
    move-result-object v1

    #@12
    .line 392
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    if-lez v0, :cond_1

    #@18
    .line 393
    if-eqz p2, :cond_0

    #@1a
    .line 394
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
    .line 396
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    #@2d
    .line 398
    const/4 v0, 0x1

    #@2e
    return v0

    #@2f
    .line 400
    :cond_1
    const/4 v0, 0x0

    #@30
    return v0
.end method

.method public getCurrentMemoryState()I
    .locals 2

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v0

    #@3
    .line 550
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 549
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
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
    .line 445
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@5
    .line 446
    const-string/jumbo v8, "android.permission.PACKAGE_USAGE_STATS"

    #@8
    .line 445
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@e
    move-result-object v0

    #@f
    .line 448
    .local v0, "current":Landroid/os/Parcel;
    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@11
    monitor-enter v8

    #@12
    .line 449
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@15
    move-result-wide v4

    #@16
    .line 450
    .local v4, "now":J
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b
    move-result-wide v10

    #@1c
    iput-wide v10, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@1e
    .line 451
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@20
    iput-wide v4, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@22
    .line 452
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@24
    const/4 v9, 0x0

    #@25
    invoke-virtual {v7, v0, v4, v5, v9}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v8

    #@29
    .line 454
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2b
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@2e
    .line 456
    if-eqz p1, :cond_0

    #@30
    .line 457
    const/4 v7, 0x0

    #@31
    const/4 v8, 0x0

    #@32
    const/4 v9, 0x1

    #@33
    :try_start_1
    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@36
    move-result-object v2

    #@37
    .line 458
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    #@39
    .line 459
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3c
    move-result v7

    #@3d
    add-int/lit8 v3, v7, -0x1

    #@3f
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    #@41
    .line 462
    :try_start_2
    new-instance v8, Ljava/io/File;

    #@43
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    check-cast v7, Ljava/lang/String;

    #@49
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4c
    const/high16 v7, 0x10000000

    #@4e
    .line 461
    invoke-static {v8, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@51
    move-result-object v6

    #@52
    .line 463
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@55
    .line 459
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@57
    goto :goto_0

    #@58
    .line 448
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "now":J
    :catchall_0
    move-exception v7

    #@59
    monitor-exit v8

    #@5a
    throw v7

    #@5b
    .line 464
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "now":J
    :catch_0
    move-exception v1

    #@5c
    .line 465
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v8, "ProcessStatsService"

    #@5f
    new-instance v7, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v9, "Failure opening procstat file "

    #@67
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6e
    move-result-object v7

    #@6f
    check-cast v7, Ljava/lang/String;

    #@71
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    invoke-static {v8, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7c
    goto :goto_1

    #@7d
    .line 470
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_1
    move-exception v7

    #@7e
    .line 471
    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@80
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@83
    .line 470
    throw v7

    #@84
    .line 471
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@86
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@89
    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    #@8c
    move-result-object v7

    #@8d
    return-object v7
.end method

.method public getMemFactorLocked()I
    .locals 2

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@2
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@9
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

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
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

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
    .line 477
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
    .line 478
    const-string/jumbo v20, "android.permission.PACKAGE_USAGE_STATS"

    #@f
    const/16 v21, 0x0

    #@11
    .line 477
    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@17
    move-result-object v6

    #@18
    .line 481
    .local v6, "current":Landroid/os/Parcel;
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@1c
    move-object/from16 v20, v0

    #@1e
    monitor-enter v20

    #@1f
    .line 482
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@22
    move-result-wide v14

    #@23
    .line 483
    .local v14, "now":J
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@27
    move-object/from16 v19, v0

    #@29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2c
    move-result-wide v22

    #@2d
    move-wide/from16 v0, v22

    #@2f
    move-object/from16 v2, v19

    #@31
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@33
    .line 484
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@37
    move-object/from16 v19, v0

    #@39
    move-object/from16 v0, v19

    #@3b
    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@3d
    .line 485
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@41
    move-object/from16 v19, v0

    #@43
    const/16 v21, 0x0

    #@45
    move-object/from16 v0, v19

    #@47
    move/from16 v1, v21

    #@49
    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    #@4c
    .line 486
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@50
    move-object/from16 v19, v0

    #@52
    move-object/from16 v0, v19

    #@54
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@56
    move-wide/from16 v22, v0

    #@58
    .line 487
    move-object/from16 v0, p0

    #@5a
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@5c
    move-object/from16 v19, v0

    #@5e
    move-object/from16 v0, v19

    #@60
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@62
    move-wide/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    .line 486
    sub-long v4, v22, v24

    #@66
    .local v4, "curTime":J
    monitor-exit v20

    #@67
    .line 489
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6b
    move-object/from16 v19, v0

    #@6d
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@70
    .line 491
    cmp-long v19, v4, p1

    #@72
    if-gez v19, :cond_2

    #@74
    .line 493
    const/16 v19, 0x0

    #@76
    const/16 v20, 0x0

    #@78
    const/16 v21, 0x1

    #@7a
    :try_start_1
    move-object/from16 v0, p0

    #@7c
    move/from16 v1, v19

    #@7e
    move/from16 v2, v20

    #@80
    move/from16 v3, v21

    #@82
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@85
    move-result-object v10

    #@86
    .line 494
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    #@88
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@8b
    move-result v19

    #@8c
    if-lez v19, :cond_2

    #@8e
    .line 495
    const/16 v19, 0x0

    #@90
    move/from16 v0, v19

    #@92
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@95
    .line 496
    sget-object v19, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@97
    move-object/from16 v0, v19

    #@99
    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v17

    #@9d
    check-cast v17, Lcom/android/internal/app/ProcessStats;

    #@9f
    .line 497
    .local v17, "stats":Lcom/android/internal/app/ProcessStats;
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    #@a2
    .line 498
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@a5
    move-result v19

    #@a6
    add-int/lit8 v11, v19, -0x1

    #@a8
    .line 499
    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_1

    #@aa
    move-object/from16 v0, v17

    #@ac
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@ae
    move-wide/from16 v20, v0

    #@b0
    .line 500
    move-object/from16 v0, v17

    #@b2
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@b4
    move-wide/from16 v22, v0

    #@b6
    .line 499
    sub-long v20, v20, v22

    #@b8
    cmp-long v19, v20, p1

    #@ba
    if-gez v19, :cond_1

    #@bc
    .line 501
    new-instance v9, Landroid/util/AtomicFile;

    #@be
    new-instance v20, Ljava/io/File;

    #@c0
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c3
    move-result-object v19

    #@c4
    check-cast v19, Ljava/lang/String;

    #@c6
    move-object/from16 v0, v20

    #@c8
    move-object/from16 v1, v19

    #@ca
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@cd
    move-object/from16 v0, v20

    #@cf
    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@d2
    .line 502
    .local v9, "file":Landroid/util/AtomicFile;
    add-int/lit8 v11, v11, -0x1

    #@d4
    .line 503
    new-instance v12, Lcom/android/internal/app/ProcessStats;

    #@d6
    const/16 v19, 0x0

    #@d8
    move/from16 v0, v19

    #@da
    invoke-direct {v12, v0}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    #@dd
    .line 504
    .local v12, "moreStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    #@df
    invoke-virtual {v0, v12, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    #@e2
    .line 505
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@e4
    move-object/from16 v19, v0

    #@e6
    if-nez v19, :cond_0

    #@e8
    .line 506
    move-object/from16 v0, v17

    #@ea
    invoke-virtual {v0, v12}, Lcom/android/internal/app/ProcessStats;->add(Lcom/android/internal/app/ProcessStats;)V

    #@ed
    .line 507
    new-instance v16, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    .line 508
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v19, "Added stats: "

    #@f5
    move-object/from16 v0, v16

    #@f7
    move-object/from16 v1, v19

    #@f9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    .line 509
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    #@fe
    move-object/from16 v19, v0

    #@100
    move-object/from16 v0, v16

    #@102
    move-object/from16 v1, v19

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    .line 510
    const-string/jumbo v19, ", over "

    #@10a
    move-object/from16 v0, v16

    #@10c
    move-object/from16 v1, v19

    #@10e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    .line 511
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@113
    move-wide/from16 v20, v0

    #@115
    .line 512
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@117
    move-wide/from16 v22, v0

    #@119
    .line 511
    sub-long v20, v20, v22

    #@11b
    move-wide/from16 v0, v20

    #@11d
    move-object/from16 v2, v16

    #@11f
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@122
    .line 513
    const-string/jumbo v19, "ProcessStatsService"

    #@125
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v20

    #@129
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@12c
    goto/16 :goto_0

    #@12e
    .line 540
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :catch_0
    move-exception v7

    #@12f
    .line 541
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v19, "ProcessStatsService"

    #@132
    const-string/jumbo v20, "Failed building output pipe"

    #@135
    move-object/from16 v0, v19

    #@137
    move-object/from16 v1, v20

    #@139
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13c
    .line 543
    move-object/from16 v0, p0

    #@13e
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@140
    move-object/from16 v19, v0

    #@142
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@145
    .line 545
    const/16 v19, 0x0

    #@147
    return-object v19

    #@148
    .line 481
    .end local v4    # "curTime":J
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "now":J
    :catchall_0
    move-exception v19

    #@149
    monitor-exit v20

    #@14a
    throw v19

    #@14b
    .line 515
    .restart local v4    # "curTime":J
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .restart local v14    # "now":J
    .restart local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_0
    :try_start_3
    const-string/jumbo v20, "ProcessStatsService"

    #@14e
    new-instance v19, Ljava/lang/StringBuilder;

    #@150
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v21, "Failure reading "

    #@156
    move-object/from16 v0, v19

    #@158
    move-object/from16 v1, v21

    #@15a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v21

    #@15e
    add-int/lit8 v19, v11, 0x1

    #@160
    move/from16 v0, v19

    #@162
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@165
    move-result-object v19

    #@166
    check-cast v19, Ljava/lang/String;

    #@168
    move-object/from16 v0, v21

    #@16a
    move-object/from16 v1, v19

    #@16c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v19

    #@170
    const-string/jumbo v21, "; "

    #@173
    move-object/from16 v0, v19

    #@175
    move-object/from16 v1, v21

    #@177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v19

    #@17b
    .line 516
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@17d
    move-object/from16 v21, v0

    #@17f
    .line 515
    move-object/from16 v0, v19

    #@181
    move-object/from16 v1, v21

    #@183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v19

    #@187
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v19

    #@18b
    move-object/from16 v0, v20

    #@18d
    move-object/from16 v1, v19

    #@18f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@192
    goto/16 :goto_0

    #@194
    .line 542
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :catchall_1
    move-exception v19

    #@195
    .line 543
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@199
    move-object/from16 v20, v0

    #@19b
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19e
    .line 542
    throw v19

    #@19f
    .line 520
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_1
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@1a2
    move-result-object v6

    #@1a3
    .line 521
    const/16 v19, 0x0

    #@1a5
    move-object/from16 v0, v17

    #@1a7
    move/from16 v1, v19

    #@1a9
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@1ac
    .line 524
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_2
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    #@1af
    move-result-object v13

    #@1b0
    .line 525
    .local v13, "outData":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    #@1b3
    .line 526
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@1b6
    move-result-object v8

    #@1b7
    .line 527
    .local v8, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v18, Lcom/android/server/am/ProcessStatsService$3;

    #@1b9
    const-string/jumbo v19, "ProcessStats pipe output"

    #@1bc
    move-object/from16 v0, v18

    #@1be
    move-object/from16 v1, p0

    #@1c0
    move-object/from16 v2, v19

    #@1c2
    invoke-direct {v0, v1, v2, v8, v13}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    #@1c5
    .line 538
    .local v18, "thr":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    #@1c8
    .line 539
    const/16 v19, 0x0

    #@1ca
    aget-object v19, v8, v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1cc
    .line 543
    move-object/from16 v0, p0

    #@1ce
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1d0
    move-object/from16 v20, v0

    #@1d2
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d5
    .line 539
    return-object v19
.end method

.method public isMemFactorLowered()Z
    .locals 1

    #@0
    .prologue
    .line 122
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
    .line 101
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 102
    :catch_0
    move-exception v0

    #@6
    .line 103
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 104
    const-string/jumbo v1, "ProcessStatsService"

    #@d
    const-string/jumbo v2, "Process Stats Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 106
    :cond_0
    throw v0
.end method

.method performWriteState()V
    .locals 6

    #@0
    .prologue
    .line 260
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@5
    .line 262
    .local v0, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    #@7
    .line 263
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    #@8
    iput-boolean v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 264
    if-nez v0, :cond_0

    #@c
    monitor-exit v5

    #@d
    .line 265
    return-void

    #@e
    .line 267
    :cond_0
    const/4 v4, 0x0

    #@f
    :try_start_1
    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@11
    .line 268
    const/4 v4, 0x0

    #@12
    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    #@14
    .line 269
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v5

    #@1a
    .line 272
    const/4 v3, 0x0

    #@1b
    .line 274
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@1e
    move-result-object v3

    #@1f
    .line 275
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    #@26
    .line 276
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    #@29
    .line 277
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 284
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    #@32
    .line 285
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@34
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@37
    .line 256
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@38
    .line 260
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .line 279
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    :catch_0
    move-exception v1

    #@3c
    .line 280
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "ProcessStatsService"

    #@3f
    const-string/jumbo v5, "Error writing process statistics"

    #@42
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 281
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@48
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 284
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    #@4e
    .line 285
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@50
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@53
    goto :goto_0

    #@54
    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    #@55
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 284
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    #@5b
    .line 285
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5d
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@60
    .line 282
    throw v4
.end method

.method readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 291
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@4
    move-result-object v1

    #@5
    .line 292
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    #@8
    .line 293
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    #@b
    .line 294
    iget-object v2, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 295
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
    iget-object v4, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

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
    .line 338
    return v5

    #@2c
    .line 340
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@2d
    .line 341
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
    iput-object v2, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    #@43
    .line 342
    const-string/jumbo v2, "ProcessStatsService"

    #@46
    const-string/jumbo v3, "Error reading process statistics"

    #@49
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 343
    return v5

    #@4d
    .line 345
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
    .line 126
    move-object/from16 v0, p0

    #@2
    iget v14, v0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    #@4
    move/from16 v0, p1

    #@6
    if-ge v0, v14, :cond_3

    #@8
    const/4 v14, 0x1

    #@9
    :goto_0
    move-object/from16 v0, p0

    #@b
    iput-boolean v14, v0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    #@d
    .line 127
    move/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    iput v0, v1, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    #@13
    .line 128
    if-eqz p2, :cond_0

    #@15
    .line 129
    add-int/lit8 p1, p1, 0x4

    #@17
    .line 131
    :cond_0
    move-object/from16 v0, p0

    #@19
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@1b
    iget v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@1d
    move/from16 v0, p1

    #@1f
    if-eq v0, v14, :cond_b

    #@21
    .line 132
    move-object/from16 v0, p0

    #@23
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@25
    iget v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@27
    const/4 v15, -0x1

    #@28
    if-eq v14, v15, :cond_1

    #@2a
    .line 133
    move-object/from16 v0, p0

    #@2c
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@2e
    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@34
    iget v15, v15, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@36
    aget-wide v16, v14, v15

    #@38
    .line 134
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@3c
    move-object/from16 v18, v0

    #@3e
    move-object/from16 v0, v18

    #@40
    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@42
    move-wide/from16 v18, v0

    #@44
    sub-long v18, p3, v18

    #@46
    .line 133
    add-long v16, v16, v18

    #@48
    aput-wide v16, v14, v15

    #@4a
    .line 136
    :cond_1
    move-object/from16 v0, p0

    #@4c
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@4e
    move/from16 v0, p1

    #@50
    iput v0, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    #@52
    .line 137
    move-object/from16 v0, p0

    #@54
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@56
    move-wide/from16 v0, p3

    #@58
    iput-wide v0, v14, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    #@5a
    .line 139
    move-object/from16 v0, p0

    #@5c
    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@5e
    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@60
    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    #@63
    move-result-object v9

    #@64
    .line 140
    .local v9, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@67
    move-result v14

    #@68
    add-int/lit8 v4, v14, -0x1

    #@6a
    .local v4, "ipkg":I
    :goto_1
    if-ltz v4, :cond_a

    #@6c
    .line 141
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6f
    move-result-object v12

    #@70
    check-cast v12, Landroid/util/SparseArray;

    #@72
    .line 142
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    #@75
    move-result v14

    #@76
    add-int/lit8 v6, v14, -0x1

    #@78
    .local v6, "iuid":I
    :goto_2
    if-ltz v6, :cond_9

    #@7a
    .line 143
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@7d
    move-result-object v13

    #@7e
    check-cast v13, Landroid/util/SparseArray;

    #@80
    .line 144
    .local v13, "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    #@83
    move-result v14

    #@84
    add-int/lit8 v7, v14, -0x1

    #@86
    .local v7, "iver":I
    :goto_3
    if-ltz v7, :cond_8

    #@88
    .line 145
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@8b
    move-result-object v8

    #@8c
    check-cast v8, Lcom/android/internal/app/ProcessStats$PackageState;

    #@8e
    .line 146
    .local v8, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v11, v8, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    #@90
    .line 147
    .local v11, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@93
    move-result v14

    #@94
    add-int/lit8 v5, v14, -0x1

    #@96
    .local v5, "isvc":I
    :goto_4
    if-ltz v5, :cond_7

    #@98
    .line 148
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9b
    move-result-object v10

    #@9c
    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    #@9e
    .line 149
    .local v10, "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isRestarting()Z

    #@a1
    move-result v14

    #@a2
    if-eqz v14, :cond_4

    #@a4
    .line 150
    const/4 v14, 0x1

    #@a5
    move/from16 v0, p1

    #@a7
    move-wide/from16 v1, p3

    #@a9
    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    #@ac
    .line 147
    :cond_2
    :goto_5
    add-int/lit8 v5, v5, -0x1

    #@ae
    goto :goto_4

    #@af
    .line 126
    .end local v4    # "ipkg":I
    .end local v5    # "isvc":I
    .end local v6    # "iuid":I
    .end local v7    # "iver":I
    .end local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    .end local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_3
    const/4 v14, 0x0

    #@b0
    goto/16 :goto_0

    #@b2
    .line 151
    .restart local v4    # "ipkg":I
    .restart local v5    # "isvc":I
    .restart local v6    # "iuid":I
    .restart local v7    # "iver":I
    .restart local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    .restart local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .restart local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_4
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    #@b5
    move-result v14

    #@b6
    if-eqz v14, :cond_2

    #@b8
    .line 152
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@ba
    const/4 v15, -0x1

    #@bb
    if-eq v14, v15, :cond_5

    #@bd
    .line 153
    const/4 v14, 0x1

    #@be
    move/from16 v0, p1

    #@c0
    move-wide/from16 v1, p3

    #@c2
    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@c5
    .line 155
    :cond_5
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@c7
    const/4 v15, -0x1

    #@c8
    if-eq v14, v15, :cond_6

    #@ca
    .line 156
    const/4 v14, 0x1

    #@cb
    move/from16 v0, p1

    #@cd
    move-wide/from16 v1, p3

    #@cf
    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    #@d2
    .line 158
    :cond_6
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@d4
    const/4 v15, -0x1

    #@d5
    if-eq v14, v15, :cond_2

    #@d7
    .line 159
    const/4 v14, 0x1

    #@d8
    move/from16 v0, p1

    #@da
    move-wide/from16 v1, p3

    #@dc
    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    #@df
    goto :goto_5

    #@e0
    .line 144
    .end local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    #@e2
    goto :goto_3

    #@e3
    .line 142
    .end local v5    # "isvc":I
    .end local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    :cond_8
    add-int/lit8 v6, v6, -0x1

    #@e5
    goto :goto_2

    #@e6
    .line 140
    .end local v7    # "iver":I
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_9
    add-int/lit8 v4, v4, -0x1

    #@e8
    goto :goto_1

    #@e9
    .line 166
    .end local v6    # "iuid":I
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_a
    const/4 v14, 0x1

    #@ea
    return v14

    #@eb
    .line 168
    .end local v4    # "ipkg":I
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    :cond_b
    const/4 v14, 0x0

    #@ec
    return v14
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 181
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
    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v0

    #@e
    .line 183
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@10
    iget-wide v2, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    #@12
    sget-wide v4, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    #@14
    add-long/2addr v2, v4

    #@15
    .line 182
    cmp-long v0, v0, v2

    #@17
    if-lez v0, :cond_0

    #@19
    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c
    move-result-wide v0

    #@1d
    .line 185
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@1f
    iget-wide v2, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    #@21
    sget-wide v4, Lcom/android/internal/app/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    #@23
    add-long/2addr v2, v4

    #@24
    .line 184
    cmp-long v0, v0, v2

    #@26
    if-lez v0, :cond_0

    #@28
    .line 186
    iput-boolean v6, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    #@2a
    .line 188
    :cond_0
    return v6

    #@2b
    .line 190
    :cond_1
    const/4 v0, 0x0

    #@2c
    return v0
.end method

.method public shutdownLocked()V
    .locals 2

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "ProcessStatsService"

    #@3
    const-string/jumbo v1, "Writing process stats before shutdown..."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 195
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@b
    iget v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@d
    or-int/lit8 v1, v1, 0x2

    #@f
    iput v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@11
    .line 196
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    #@14
    .line 197
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    #@17
    .line 193
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
    .line 376
    const/4 v2, 0x1

    #@4
    invoke-direct {p0, v6, v5, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    #@7
    move-result-object v1

    #@8
    .line 377
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@a
    .line 378
    return-void

    #@b
    .line 380
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-le v2, v6, :cond_1

    #@11
    .line 381
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 382
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
    .line 383
    new-instance v2, Ljava/io/File;

    #@33
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@39
    goto :goto_0

    #@3a
    .line 375
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public writeStateAsyncLocked()V
    .locals 1

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    #@4
    .line 200
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    #@0
    .prologue
    .line 218
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 219
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 220
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@9
    if-eqz v2, :cond_1

    #@b
    iget-boolean v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 231
    :goto_0
    if-eqz p2, :cond_0

    #@11
    .line 232
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@13
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    #@16
    .line 233
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    #@19
    .line 235
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c
    move-result-wide v4

    #@1d
    iput-wide v4, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    #@1f
    .line 236
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
    .line 237
    if-nez p1, :cond_3

    #@47
    .line 238
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
    .line 243
    return-void

    #@55
    .line 221
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@58
    move-result-object v2

    #@59
    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@5b
    .line 222
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@5d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@60
    move-result-wide v4

    #@61
    iput-wide v4, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    #@63
    .line 223
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@65
    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    #@67
    .line 224
    if-eqz p2, :cond_2

    #@69
    .line 225
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@6b
    iget v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@6d
    or-int/lit8 v4, v4, 0x1

    #@6f
    iput v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@71
    .line 227
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@73
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    #@75
    const/4 v5, 0x0

    #@76
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@79
    .line 228
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
    .line 229
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@88
    goto :goto_0

    #@89
    .line 218
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
    .line 247
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->performWriteState()V

    #@90
    .line 217
    return-void
.end method

.method public writeStateSyncLocked()V
    .locals 1

    #@0
    .prologue
    .line 205
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    #@4
    .line 204
    return-void
.end method
