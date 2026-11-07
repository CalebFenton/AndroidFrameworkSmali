.class public final Lcom/android/internal/app/procstats/AssociationState;
.super Ljava/lang/Object;
.source "AssociationState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/AssociationState$SourceKey;,
        Lcom/android/internal/app/procstats/AssociationState$SourceState;,
        Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;
    }
.end annotation


# static fields
.field static final blacklist ASSOCIATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"

.field private static final blacklist VALIDATE_TIMES:Z = false

.field private static final blacklist sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

.field private blacklist mProc:Lcom/android/internal/app/procstats/ProcessState;

.field private final blacklist mProcessName:Ljava/lang/String;

.field private final blacklist mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field final blacklist mSources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTotalActiveCount:I

.field private blacklist mTotalActiveDuration:J

.field private blacklist mTotalActiveNesting:I

.field private blacklist mTotalActiveStartUptime:J

.field private blacklist mTotalCount:I

.field private blacklist mTotalDuration:J

.field private blacklist mTotalNesting:I

.field private blacklist mTotalStartUptime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTotalActiveCount(Lcom/android/internal/app/procstats/AssociationState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalActiveDuration(Lcom/android/internal/app/procstats/AssociationState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalDuration(Lcom/android/internal/app/procstats/AssociationState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalStartUptime(Lcom/android/internal/app/procstats/AssociationState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalActiveCount(Lcom/android/internal/app/procstats/AssociationState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalActiveDuration(Lcom/android/internal/app/procstats/AssociationState;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalDuration(Lcom/android/internal/app/procstats/AssociationState;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 557
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 793
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/AssociationState$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/AssociationState;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 7
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "packageState"    # Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "proc"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    .line 563
    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 564
    iput-object p2, p0, Lcom/android/internal/app/procstats/AssociationState;->mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 565
    iput-object p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mName:Ljava/lang/String;

    .line 566
    iput-object p4, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessName:Ljava/lang/String;

    .line 567
    iput-object p5, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 568
    return-void
.end method

.method static blacklist createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;
    .registers 21
    .param p0, "now"    # J
    .param p2, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;"
        }
    .end annotation

    .line 815
    .local p4, "inSources":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceState;>;"
    move-object/from16 v0, p4

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 816
    .local v1, "numOfSources":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 817
    .local v2, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;>;>;"
    const/4 v3, 0x0

    .local v3, "isrc":I
    :goto_c
    if-ge v3, v1, :cond_56

    .line 818
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 819
    .local v7, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    new-instance v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    invoke-direct {v4, v7}, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;-><init>(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    .line 820
    .local v4, "cont":Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;
    iget-wide v5, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 821
    .local v5, "duration":J
    iget v8, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v8, :cond_27

    .line 822
    iget-wide v8, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v8, p0, v8

    add-long/2addr v5, v8

    move-wide v14, v5

    goto :goto_28

    .line 821
    :cond_27
    move-wide v14, v5

    .line 824
    .end local v5    # "duration":J
    .local v14, "duration":J
    :goto_28
    iput-wide v14, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    .line 825
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v10, p0

    move-wide/from16 v8, p2

    invoke-static/range {v5 .. v13}, Lcom/android/internal/app/procstats/AssociationState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZZ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    .line 826
    iget-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-gez v5, :cond_45

    .line 827
    iget-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    neg-long v5, v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    .line 829
    :cond_45
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v4    # "cont":Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;
    .end local v7    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v14    # "duration":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 831
    .end local v3    # "isrc":I
    :cond_56
    sget-object v3, Lcom/android/internal/app/procstats/AssociationState;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 832
    return-object v2
.end method

.method static blacklist dumpActiveDurationSummary(Ljava/io/PrintWriter;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZ)V
    .registers 16
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "src"    # Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .param p2, "totalTime"    # J
    .param p4, "now"    # J
    .param p6, "dumpAll"    # Z

    .line 1005
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local p2    # "totalTime":J
    .end local p4    # "now":J
    .local v2, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .local v3, "totalTime":J
    .local v5, "now":J
    invoke-static/range {v0 .. v8}, Lcom/android/internal/app/procstats/AssociationState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZZ)J

    move-result-wide p1

    .line 1006
    .local p1, "duration":J
    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-gez p5, :cond_13

    const/4 p5, 0x1

    goto :goto_14

    :cond_13
    const/4 p5, 0x0

    .line 1007
    .local p5, "isRunning":Z
    :goto_14
    if-eqz p5, :cond_17

    .line 1008
    neg-long p1, p1

    .line 1010
    :cond_17
    if-eqz p6, :cond_22

    .line 1011
    invoke-static {p1, p2, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1012
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_28

    .line 1014
    :cond_22
    const-string/jumbo v0, "time "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    :goto_28
    long-to-double v0, p1

    long-to-double v7, v3

    div-double/2addr v0, v7

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 1017
    iget-wide v0, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long p3, v0, p3

    if-lez p3, :cond_39

    .line 1018
    const-string p3, " (running)"

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    :cond_39
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1021
    return-void
.end method

.method static blacklist dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V
    .registers 31
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "prefixInner"    # Ljava/lang/String;
    .param p3, "prefixInnerInner"    # Ljava/lang/String;
    .param p5, "now"    # J
    .param p7, "totalTime"    # J
    .param p9, "reqPackage"    # Ljava/lang/String;
    .param p10, "dumpDetails"    # Z
    .param p11, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;JJ",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 899
    .local p4, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-wide/from16 v2, p7

    move-object/from16 v11, p9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 900
    .local v12, "NSRC":I
    const/4 v1, 0x0

    move v13, v1

    .local v13, "isrc":I
    :goto_10
    if-ge v13, v12, :cond_1c2

    .line 901
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 902
    .local v14, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    .line 903
    .local v15, "cont":Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;
    iget-object v1, v15, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 904
    .local v1, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    const-string v4, "<- "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    iget-object v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    iget v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-static {v0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 909
    iget-object v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    const-string v5, " ("

    const-string v6, ")"

    if-eqz v4, :cond_54

    .line 910
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    iget-object v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    :cond_54
    if-eqz v11, :cond_6f

    iget-object v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    iget-object v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    .line 918
    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 919
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 920
    move/from16 v18, v12

    move/from16 v16, v13

    goto/16 :goto_1b8

    .line 922
    :cond_6f
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    const-string v7, ": time "

    const-string v8, " / "

    const-wide/16 v16, 0x0

    const-string v10, ": "

    if-nez v4, :cond_9a

    iget-object v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-nez v4, :cond_9a

    move/from16 v18, v12

    .end local v12    # "NSRC":I
    .local v18, "NSRC":I
    iget-wide v11, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    cmp-long v4, v11, v16

    if-nez v4, :cond_9c

    iget-wide v11, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v4, v11, v16

    if-eqz v4, :cond_93

    goto :goto_9c

    :cond_93
    move-object v11, v7

    move-object v12, v8

    move/from16 v16, v13

    move-object v13, v6

    goto/16 :goto_12a

    .end local v18    # "NSRC":I
    .restart local v12    # "NSRC":I
    :cond_9a
    move/from16 v18, v12

    .line 925
    .end local v12    # "NSRC":I
    .restart local v18    # "NSRC":I
    :cond_9c
    :goto_9c
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    const-string v4, "   Active count "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 928
    if-eqz p10, :cond_119

    .line 929
    if-eqz p11, :cond_d0

    .line 930
    iget-object v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v4, :cond_b7

    .line 931
    const-string v4, " (multi-state)"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d0

    .line 932
    :cond_b7
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ltz v4, :cond_cb

    .line 933
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d0

    .line 937
    :cond_cb
    const-string v4, " (*UNKNOWN STATE*)"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 940
    :cond_d0
    :goto_d0
    if-eqz p11, :cond_de

    .line 941
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    iget-wide v4, v15, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 943
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e1

    .line 945
    :cond_de
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    :goto_e1
    iget-wide v4, v15, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    long-to-double v4, v4

    long-to-double v11, v2

    div-double/2addr v4, v11

    invoke-static {v0, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 948
    iget-wide v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v4, v4, v16

    if-eqz v4, :cond_f4

    .line 949
    const-string v4, " (running)"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    :cond_f4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 952
    iget-object v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v4, :cond_111

    .line 953
    move-wide v3, v2

    move-object v11, v7

    move-object v12, v8

    move/from16 v16, v13

    move/from16 v7, p10

    move/from16 v8, p11

    move-object v2, v1

    move-object v13, v6

    move-object/from16 v1, p3

    move-wide/from16 v5, p5

    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v13    # "isrc":I
    .local v2, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .local v16, "isrc":I
    invoke-static/range {v0 .. v8}, Lcom/android/internal/app/procstats/AssociationState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZZ)J

    move-object v1, v2

    move-wide/from16 v2, p7

    .end local v2    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .restart local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    goto :goto_12a

    .line 952
    .end local v16    # "isrc":I
    .restart local v13    # "isrc":I
    :cond_111
    move-object v11, v7

    move-object v12, v8

    move/from16 v16, v13

    move-object v13, v6

    .end local v13    # "isrc":I
    .restart local v16    # "isrc":I
    move-wide/from16 v2, p7

    goto :goto_12a

    .line 956
    .end local v16    # "isrc":I
    .restart local v13    # "isrc":I
    :cond_119
    move-object v11, v7

    move-object v12, v8

    move/from16 v16, v13

    move-object v13, v6

    .end local v13    # "isrc":I
    .restart local v16    # "isrc":I
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 957
    move-wide/from16 v4, p5

    move-wide/from16 v2, p7

    move/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/internal/app/procstats/AssociationState;->dumpActiveDurationSummary(Ljava/io/PrintWriter;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZ)V

    .line 960
    :goto_12a
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    const-string v4, "   Total count "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 963
    if-eqz p11, :cond_145

    .line 964
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 965
    iget-wide v4, v15, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 966
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_148

    .line 968
    :cond_145
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    :goto_148
    iget-wide v4, v15, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    long-to-double v4, v4

    long-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v0, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 971
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    const/4 v5, -0x1

    if-lez v4, :cond_183

    .line 972
    const-string v4, " (running"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 973
    if-eqz p11, :cond_166

    .line 974
    const-string v4, " nest="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 977
    :cond_166
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-eq v4, v5, :cond_180

    .line 978
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    const-string v4, " #"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 983
    :cond_180
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 985
    :cond_183
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 986
    if-eqz p11, :cond_1b8

    .line 987
    iget-boolean v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-eqz v4, :cond_199

    .line 988
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    const-string v4, "   mInTrackingList="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 990
    iget-boolean v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 992
    :cond_199
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-eq v4, v5, :cond_1b8

    .line 993
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 994
    const-string v4, "   mProcState="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 995
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    const-string v4, " mProcStateSeq="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 900
    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v14    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v15    # "cont":Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;
    :cond_1b8
    :goto_1b8
    add-int/lit8 v13, v16, 0x1

    move-object/from16 v10, p4

    move-object/from16 v11, p9

    move/from16 v12, v18

    .end local v16    # "isrc":I
    .restart local v13    # "isrc":I
    goto/16 :goto_10

    .line 1001
    .end local v13    # "isrc":I
    .end local v18    # "NSRC":I
    .restart local v12    # "NSRC":I
    :cond_1c2
    return-void
.end method

.method static blacklist dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZZ)J
    .registers 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "src"    # Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .param p3, "overallTime"    # J
    .param p5, "now"    # J
    .param p7, "dumpDetails"    # Z
    .param p8, "dumpAll"    # Z

    .line 1025
    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    .line 1026
    .local v1, "totalTime":J
    const/4 v3, 0x0

    .line 1027
    .local v3, "isRunning":Z
    const/4 v4, 0x0

    .local v4, "iprocstate":I
    :goto_6
    const/16 v5, 0x10

    if-ge v4, v5, :cond_74

    .line 1029
    iget-object v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_18

    .line 1030
    iget-object v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v8, v4

    invoke-virtual {v5, v8}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v8

    .local v8, "time":J
    goto :goto_20

    .line 1032
    .end local v8    # "time":J
    :cond_18
    iget v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v5, v4, :cond_1f

    iget-wide v8, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    goto :goto_20

    :cond_1f
    move-wide v8, v6

    .line 1035
    .restart local v8    # "time":J
    :goto_20
    iget-wide v10, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v5, v10, v6

    if-eqz v5, :cond_33

    iget v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v5, v4, :cond_33

    .line 1036
    const-string v5, " (running)"

    .line 1037
    .local v5, "running":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1038
    iget-wide v10, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v10, p5, v10

    add-long/2addr v8, v10

    goto :goto_34

    .line 1040
    .end local v5    # "running":Ljava/lang/String;
    :cond_33
    const/4 v5, 0x0

    .line 1042
    .restart local v5    # "running":Ljava/lang/String;
    :goto_34
    cmp-long v6, v8, v6

    if-eqz v6, :cond_6f

    .line 1043
    if-eqz p0, :cond_6b

    .line 1044
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    sget-object v6, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    const-string v6, ": "

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    if-eqz p8, :cond_54

    .line 1048
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1049
    const-string v6, " / "

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5a

    .line 1051
    :cond_54
    const-string/jumbo v6, "time "

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    :goto_5a
    long-to-double v6, v8

    move-wide/from16 v10, p3

    long-to-double v12, v10

    div-double/2addr v6, v12

    invoke-static {p0, v6, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 1054
    if-eqz v5, :cond_67

    .line 1055
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    :cond_67
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_6d

    .line 1043
    :cond_6b
    move-wide/from16 v10, p3

    .line 1059
    :goto_6d
    add-long/2addr v1, v8

    goto :goto_71

    .line 1042
    :cond_6f
    move-wide/from16 v10, p3

    .line 1027
    .end local v5    # "running":Ljava/lang/String;
    .end local v8    # "time":J
    :goto_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_74
    move-wide/from16 v10, p3

    .line 1062
    .end local v4    # "iprocstate":I
    if-eqz v3, :cond_7a

    neg-long v4, v1

    goto :goto_7b

    :cond_7a
    move-wide v4, v1

    :goto_7b
    return-wide v4
.end method

.method static synthetic blacklist lambda$static$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 9
    .param p0, "o1"    # Landroid/util/Pair;
    .param p1, "o2"    # Landroid/util/Pair;

    .line 795
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    .line 796
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1

    .line 798
    :cond_25
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_48

    .line 799
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    return v1

    .line 801
    :cond_48
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v3, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    if-eq v0, v3, :cond_67

    .line 802
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v3, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    if-ge v0, v3, :cond_65

    goto :goto_66

    :cond_65
    move v1, v2

    :goto_66
    return v1

    .line 804
    :cond_67
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v1, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    if-eq v0, v1, :cond_88

    .line 805
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v1, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 806
    .local v0, "diff":I
    if-eqz v0, :cond_88

    .line 807
    return v0

    .line 810
    .end local v0    # "diff":I
    :cond_88
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/AssociationState;)V
    .registers 12
    .param p1, "other"    # Lcom/android/internal/app/procstats/AssociationState;

    .line 629
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    .line 630
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 631
    .local v0, "origDuration":J
    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    iget-wide v4, p1, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 632
    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    iget v3, p1, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    .line 633
    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    iget-wide v4, p1, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 634
    iget-object v2, p1, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "isrc":I
    :goto_26
    if-ltz v2, :cond_59

    .line 635
    iget-object v3, p1, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 636
    .local v3, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v4, p1, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 637
    .local v4, "otherSrc":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    iget-object v5, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 638
    .local v5, "mySrc":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    const/4 v6, 0x0

    .line 639
    .local v6, "newSrc":Z
    if-nez v5, :cond_53

    .line 640
    new-instance v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v8, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v9, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-direct {v7, v8, p0, v9, v3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    move-object v5, v7

    .line 641
    iget-object v7, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const/4 v6, 0x1

    .line 674
    :cond_53
    invoke-virtual {v5, v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    .line 634
    .end local v3    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v4    # "otherSrc":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v5    # "mySrc":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v6    # "newSrc":Z
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 676
    .end local v2    # "isrc":I
    :cond_59
    return-void
.end method

.method public blacklist commitStateTime(J)V
    .registers 7
    .param p1, "nowUptime"    # J

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 764
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "isrc":I
    :goto_e
    if-ltz v0, :cond_1e

    .line 765
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 766
    .local v1, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->commitStateTime(J)V

    .line 764
    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 768
    .end local v0    # "isrc":I
    :cond_1e
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-lez v0, :cond_2d

    .line 769
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 770
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    .line 772
    :cond_2d
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-lez v0, :cond_3c

    .line 773
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 774
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    .line 777
    :cond_3c
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .registers 39
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "now"    # J

    .line 1123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v7, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1125
    .local v9, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1127
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1128
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/procstats/AssociationState;->getTotalDuration(J)J

    move-result-wide v2

    const-wide v13, 0x10300000004L

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1129
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    const-wide v3, 0x10500000005L

    if-eqz v2, :cond_45

    .line 1130
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1131
    nop

    .line 1132
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/procstats/AssociationState;->getActiveDuration(J)J

    move-result-wide v5

    .line 1131
    const-wide v3, 0x10300000006L

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1135
    :cond_45
    iget-object v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1136
    .local v2, "NSRC":I
    const/4 v3, 0x0

    .local v3, "isrc":I
    :goto_4c
    if-ge v3, v2, :cond_1a6

    .line 1137
    iget-object v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 1138
    .local v4, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v5, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 1139
    .local v5, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    const-wide v13, 0x20b00000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1140
    .local v13, "sourceToken":J
    const-wide v11, 0x10900000002L

    iget-object v6, v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1141
    const-wide v11, 0x10900000007L

    iget-object v6, v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1142
    const-wide v11, 0x10500000001L

    iget v6, v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1143
    iget v6, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1144
    iget-wide v11, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 1145
    .local v11, "duration":J
    iget v6, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v6, :cond_9e

    .line 1146
    move v6, v2

    move/from16 v19, v3

    .end local v2    # "NSRC":I
    .end local v3    # "isrc":I
    .local v6, "NSRC":I
    .local v19, "isrc":I
    iget-wide v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v2, v7, v2

    add-long/2addr v11, v2

    goto :goto_a1

    .line 1145
    .end local v6    # "NSRC":I
    .end local v19    # "isrc":I
    .restart local v2    # "NSRC":I
    .restart local v3    # "isrc":I
    :cond_9e
    move v6, v2

    move/from16 v19, v3

    .line 1148
    .end local v2    # "NSRC":I
    .end local v3    # "isrc":I
    .restart local v6    # "NSRC":I
    .restart local v19    # "isrc":I
    :goto_a1
    const-wide v2, 0x10300000004L

    invoke-virtual {v1, v2, v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1149
    iget v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    if-eqz v2, :cond_ba

    .line 1150
    iget v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    move-object/from16 v20, v4

    const-wide v3, 0x10500000005L

    .end local v4    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .local v20, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_c1

    .line 1149
    .end local v20    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .restart local v4    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    :cond_ba
    move-object/from16 v20, v4

    const-wide v3, 0x10500000005L

    .line 1153
    .end local v4    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .restart local v20    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    :goto_c1
    iget-wide v3, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v21, 0x0

    cmp-long v2, v3, v21

    if-eqz v2, :cond_ce

    iget-wide v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v2, v7, v2

    goto :goto_d0

    :cond_ce
    move-wide/from16 v2, v21

    :goto_d0
    move-wide/from16 v23, v2

    .line 1154
    .local v23, "timeNow":J
    iget-object v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v25, v2

    if-eqz v25, :cond_158

    .line 1155
    iget-object v4, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v4

    .line 1156
    .local v4, "N":I
    const/16 v21, 0x0

    move/from16 v15, v21

    .local v15, "i":I
    :goto_e2
    if-ge v15, v4, :cond_145

    .line 1157
    iget-object v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v15}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1158
    .local v2, "dkey":I
    iget-object v3, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v11

    .line 1159
    iget v3, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v2, v3, :cond_f6

    .line 1160
    add-long v11, v11, v23

    .line 1162
    :cond_f6
    move-object v3, v5

    .end local v5    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .local v3, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v5

    .line 1163
    .local v5, "procState":I
    move/from16 v16, v2

    move-object/from16 v21, v3

    move v8, v6

    const-wide v2, 0x20b00000006L

    .end local v2    # "dkey":I
    .end local v3    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v6    # "NSRC":I
    .local v8, "NSRC":I
    .local v16, "dkey":I
    .local v21, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1165
    .local v6, "stateToken":J
    move/from16 v22, v4

    .end local v4    # "N":I
    .local v22, "N":I
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    move-wide/from16 v29, v6

    .end local v6    # "stateToken":J
    .local v29, "stateToken":J
    const/4 v6, 0x1

    move-wide/from16 v31, v2

    const-wide v2, 0x10e00000001L

    move-wide/from16 v17, v9

    move-wide/from16 v25, v13

    move-object/from16 v7, v21

    const-wide v13, 0x10300000002L

    const-wide v27, 0x10500000005L

    move v10, v8

    move-wide/from16 v8, v29

    const-wide v29, 0x10300000004L

    .end local v9    # "token":J
    .end local v13    # "sourceToken":J
    .end local v21    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v29    # "stateToken":J
    .local v7, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .local v8, "stateToken":J
    .local v10, "NSRC":I
    .local v17, "token":J
    .local v25, "sourceToken":J
    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    .line 1168
    invoke-virtual {v1, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1170
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1156
    .end local v5    # "procState":I
    .end local v8    # "stateToken":J
    .end local v16    # "dkey":I
    add-int/lit8 v15, v15, 0x1

    move-object v5, v7

    move v6, v10

    move-wide/from16 v9, v17

    move/from16 v4, v22

    move-wide/from16 v13, v25

    move-wide/from16 v7, p4

    goto :goto_e2

    .end local v7    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v10    # "NSRC":I
    .end local v17    # "token":J
    .end local v22    # "N":I
    .end local v25    # "sourceToken":J
    .restart local v4    # "N":I
    .local v5, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .local v6, "NSRC":I
    .restart local v9    # "token":J
    .restart local v13    # "sourceToken":J
    :cond_145
    move/from16 v22, v4

    move-object v7, v5

    move-wide/from16 v17, v9

    move-wide/from16 v25, v13

    const-wide v27, 0x10500000005L

    const-wide v29, 0x10300000004L

    move v10, v6

    .line 1172
    .end local v4    # "N":I
    .end local v5    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v6    # "NSRC":I
    .end local v9    # "token":J
    .end local v13    # "sourceToken":J
    .end local v15    # "i":I
    .restart local v7    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .restart local v10    # "NSRC":I
    .restart local v17    # "token":J
    .restart local v25    # "sourceToken":J
    goto :goto_191

    .line 1173
    .end local v7    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v10    # "NSRC":I
    .end local v17    # "token":J
    .end local v25    # "sourceToken":J
    .restart local v5    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .restart local v6    # "NSRC":I
    .restart local v9    # "token":J
    .restart local v13    # "sourceToken":J
    :cond_158
    move-object v7, v5

    move-wide/from16 v17, v9

    move-wide/from16 v25, v13

    const-wide v13, 0x10300000002L

    const-wide v27, 0x10500000005L

    const-wide v29, 0x10300000004L

    move v10, v6

    .end local v5    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v6    # "NSRC":I
    .end local v9    # "token":J
    .end local v13    # "sourceToken":J
    .restart local v7    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .restart local v10    # "NSRC":I
    .restart local v17    # "token":J
    .restart local v25    # "sourceToken":J
    iget-wide v2, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long v11, v2, v23

    .line 1174
    cmp-long v2, v11, v21

    if-eqz v2, :cond_191

    .line 1175
    const-wide v2, 0x20b00000006L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1177
    .restart local v8    # "stateToken":J
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    iget v5, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    const/4 v6, 0x1

    const-wide v2, 0x10e00000001L

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    .line 1180
    invoke-virtual {v1, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1182
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1185
    .end local v8    # "stateToken":J
    :cond_191
    :goto_191
    move-wide/from16 v2, v25

    .end local v25    # "sourceToken":J
    .local v2, "sourceToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1136
    .end local v2    # "sourceToken":J
    .end local v7    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v11    # "duration":J
    .end local v20    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v23    # "timeNow":J
    add-int/lit8 v3, v19, 0x1

    move-wide/from16 v7, p4

    move v2, v10

    move-wide/from16 v9, v17

    move-wide/from16 v13, v29

    const-wide v11, 0x10500000003L

    .end local v19    # "isrc":I
    .local v3, "isrc":I
    goto/16 :goto_4c

    .end local v10    # "NSRC":I
    .end local v17    # "token":J
    .local v2, "NSRC":I
    .restart local v9    # "token":J
    :cond_1a6
    move-wide/from16 v17, v9

    move v10, v2

    .line 1188
    .end local v2    # "NSRC":I
    .end local v3    # "isrc":I
    .end local v9    # "token":J
    .restart local v10    # "NSRC":I
    .restart local v17    # "token":J
    move-wide/from16 v2, v17

    .end local v17    # "token":J
    .local v2, "token":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1189
    return-void
.end method

.method public blacklist dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V
    .registers 31
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p6, "now"    # J
    .param p8, "totalTime"    # J
    .param p10, "reqPackage"    # Ljava/lang/String;
    .param p11, "dumpDetails"    # Z
    .param p12, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;JJ",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 838
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/internal/app/procstats/AssociationState$SourceKey;Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 839
    .local v4, "prefixInnerInner":Ljava/lang/String;
    iget-wide v10, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 840
    .local v10, "totalDuration":J
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-lez v2, :cond_28

    .line 841
    iget-wide v12, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    sub-long v12, v6, v12

    add-long/2addr v10, v12

    .line 843
    :cond_28
    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    const-string v5, " / "

    const-string v14, ": "

    const-string v15, ": time "

    if-gtz v2, :cond_3c

    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    if-eqz v2, :cond_39

    goto :goto_3c

    :cond_39
    move-wide/from16 v16, v12

    goto :goto_63

    .line 844
    :cond_3c
    :goto_3c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    const-string v2, "Active count "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 847
    if-eqz p12, :cond_55

    .line 848
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 850
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_58

    .line 852
    :cond_55
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 854
    :goto_58
    move-wide/from16 v16, v12

    long-to-double v12, v10

    long-to-double v2, v8

    div-double/2addr v12, v2

    invoke-static {v1, v12, v13}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 855
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 857
    :goto_63
    if-eqz p12, :cond_83

    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-eqz v2, :cond_83

    .line 858
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    const-string v2, "mTotalActiveNesting="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 860
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 861
    const-string v2, " mTotalActiveStartUptime="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 862
    iget-wide v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    invoke-static {v2, v3, v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 863
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 865
    :cond_83
    iget-wide v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 866
    .end local v10    # "totalDuration":J
    .local v2, "totalDuration":J
    iget v10, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-lez v10, :cond_8e

    .line 867
    iget-wide v10, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    sub-long v10, v6, v10

    add-long/2addr v2, v10

    .line 869
    :cond_8e
    cmp-long v10, v2, v16

    if-gtz v10, :cond_96

    iget v10, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    if-eqz v10, :cond_bb

    .line 870
    :cond_96
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    const-string v10, "Total count "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 872
    iget v10, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 873
    if-eqz p12, :cond_af

    .line 874
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 876
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b2

    .line 878
    :cond_af
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    :goto_b2
    long-to-double v10, v2

    long-to-double v12, v8

    div-double/2addr v10, v12

    invoke-static {v1, v10, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 881
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 883
    :cond_bb
    if-eqz p12, :cond_db

    iget v5, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-eqz v5, :cond_db

    .line 884
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    const-string v5, "mTotalNesting="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    iget v5, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 887
    const-string v5, " mTotalStartUptime="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    iget-wide v10, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    invoke-static {v10, v11, v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 889
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 892
    :cond_db
    move-object/from16 v5, p5

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide v13, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .end local v2    # "totalDuration":J
    .local v13, "totalDuration":J
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/procstats/AssociationState;->dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    .line 894
    return-void
.end method

.method public blacklist dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "associationName"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 1067
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1068
    .local v2, "NSRC":I
    const/4 v3, 0x0

    .local v3, "isrc":I
    :goto_b
    if-ge v3, v2, :cond_f9

    .line 1069
    iget-object v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 1070
    .local v4, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v5, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 1071
    .local v5, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    const-string v6, "pkgasc"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    move/from16 v7, p3

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    move-wide/from16 v8, p4

    invoke-virtual {v1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 1078
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    iget-object v11, v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget v11, v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1084
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget v11, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1086
    iget-wide v11, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 1087
    .local v11, "duration":J
    iget v13, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v13, :cond_65

    .line 1088
    iget-wide v13, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v13, p7, v13

    add-long/2addr v11, v13

    .line 1090
    :cond_65
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 1092
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget v13, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 1094
    iget-wide v13, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_80

    iget-wide v13, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v13, p7, v13

    goto :goto_81

    :cond_80
    move-wide v13, v15

    .line 1095
    .local v13, "timeNow":J
    :goto_81
    move-wide/from16 v17, v15

    iget-object v15, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v15, :cond_cf

    .line 1096
    iget-object v15, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v15

    .line 1097
    .local v15, "N":I
    const/16 v17, 0x0

    move/from16 v0, v17

    .local v0, "i":I
    :goto_91
    if-ge v0, v15, :cond_c8

    .line 1098
    move/from16 v19, v2

    .end local v2    # "NSRC":I
    .local v19, "NSRC":I
    iget-object v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1099
    .local v2, "dkey":I
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    iget-object v0, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v11

    .line 1100
    iget v0, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v2, v0, :cond_a8

    .line 1101
    add-long/2addr v11, v13

    .line 1103
    :cond_a8
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v0

    .line 1104
    .local v0, "procState":I
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    move/from16 v18, v2

    .end local v2    # "dkey":I
    .local v18, "dkey":I
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    move/from16 v20, v3

    const/4 v3, 0x1

    .end local v3    # "isrc":I
    .local v20, "isrc":I
    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1106
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1107
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 1097
    .end local v0    # "procState":I
    .end local v18    # "dkey":I
    add-int/lit8 v0, v17, 0x1

    move/from16 v2, v19

    move/from16 v3, v20

    .end local v17    # "i":I
    .local v0, "i":I
    goto :goto_91

    .end local v19    # "NSRC":I
    .end local v20    # "isrc":I
    .local v2, "NSRC":I
    .restart local v3    # "isrc":I
    :cond_c8
    move/from16 v17, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1109
    .end local v0    # "i":I
    .end local v2    # "NSRC":I
    .end local v3    # "isrc":I
    .end local v15    # "N":I
    .restart local v19    # "NSRC":I
    .restart local v20    # "isrc":I
    goto :goto_ee

    .line 1110
    .end local v19    # "NSRC":I
    .end local v20    # "isrc":I
    .restart local v2    # "NSRC":I
    .restart local v3    # "isrc":I
    :cond_cf
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "NSRC":I
    .end local v3    # "isrc":I
    .restart local v19    # "NSRC":I
    .restart local v20    # "isrc":I
    iget-wide v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long v11, v2, v13

    .line 1111
    cmp-long v0, v11, v17

    if-eqz v0, :cond_ee

    .line 1112
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    iget v2, v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1114
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1115
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 1118
    :cond_ee
    :goto_ee
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1068
    .end local v4    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v5    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v11    # "duration":J
    .end local v13    # "timeNow":J
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    .end local v20    # "isrc":I
    .restart local v3    # "isrc":I
    goto/16 :goto_b

    .line 1120
    .end local v3    # "isrc":I
    .end local v19    # "NSRC":I
    .restart local v2    # "NSRC":I
    :cond_f9
    return-void
.end method

.method public blacklist getActiveDuration(J)J
    .registers 7
    .param p1, "now"    # J

    .line 600
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 601
    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-lez v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    sub-long v2, p1, v2

    goto :goto_d

    :cond_b
    const-wide/16 v2, 0x0

    :goto_d
    add-long/2addr v0, v2

    .line 600
    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcess()Lcom/android/internal/app/procstats/ProcessState;
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTotalDuration(J)J
    .registers 7
    .param p1, "now"    # J

    .line 595
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 596
    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-lez v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    sub-long v2, p1, v2

    goto :goto_d

    :cond_b
    const-wide/16 v2, 0x0

    :goto_d
    add-long/2addr v0, v2

    .line 595
    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 571
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    return v0
.end method

.method public blacklist hasProcessOrPackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "procName"    # Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 781
    return v1

    .line 783
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 784
    .local v0, "NSRC":I
    const/4 v2, 0x0

    .local v2, "isrc":I
    :goto_11
    if-ge v2, v0, :cond_30

    .line 785
    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 786
    .local v3, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v4, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_2f

    .line 784
    .end local v3    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 787
    .restart local v3    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    :cond_2f
    :goto_2f
    return v1

    .line 790
    .end local v2    # "isrc":I
    .end local v3    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    :cond_30
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isInUse()Z
    .registers 2

    .line 679
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist readFromParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 10
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "in"    # Landroid/os/Parcel;
    .param p3, "parcelVersion"    # I

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 733
    .local v0, "NSRC":I
    if-ltz v0, :cond_46

    const v1, 0x186a0

    if-le v0, v1, :cond_24

    goto :goto_46

    .line 736
    :cond_24
    const/4 v1, 0x0

    .local v1, "isrc":I
    :goto_25
    if-ge v1, v0, :cond_44

    .line 737
    new-instance v2, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)V

    .line 738
    .local v2, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    new-instance v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-direct {v3, v4, p0, v5, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 739
    .local v3, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v3, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "errMsg":Ljava/lang/String;
    if-eqz v4, :cond_3c

    .line 741
    return-object v4

    .line 757
    :cond_3c
    iget-object v5, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .end local v2    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v3    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v4    # "errMsg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 759
    .end local v1    # "isrc":I
    :cond_44
    const/4 v1, 0x0

    return-object v1

    .line 734
    :cond_46
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Association with bad src count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist resetSafely(J)V
    .registers 8
    .param p1, "now"    # J

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 684
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 685
    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    goto :goto_44

    .line 688
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "isrc":I
    :goto_19
    if-ltz v0, :cond_35

    .line 689
    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 690
    .local v3, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 691
    invoke-virtual {v3, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    goto :goto_32

    .line 693
    :cond_2d
    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 688
    .end local v3    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 696
    .end local v0    # "isrc":I
    :cond_35
    iput v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    .line 697
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    .line 698
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-lez v0, :cond_42

    .line 699
    iput v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    .line 700
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    goto :goto_44

    .line 702
    :cond_42
    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    .line 705
    :goto_44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 706
    return-void
.end method

.method public blacklist setProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 2
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 591
    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 592
    return-void
.end method

.method public blacklist startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .registers 10
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 606
    sget-object v0, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    monitor-enter v0

    .line 607
    :try_start_3
    sget-object v1, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iput p1, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    .line 608
    sget-object v1, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iput-object p2, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    .line 609
    sget-object v1, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iput-object p3, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    .line 610
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 611
    .local v1, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_4c

    .line 612
    if-nez v1, :cond_30

    .line 613
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    .local v0, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    new-instance v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-direct {v2, v3, p0, v4, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    move-object v1, v2

    .line 615
    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .end local v0    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    :cond_30
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->start()J

    move-result-wide v2

    .line 618
    .local v2, "now":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4b

    .line 619
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    .line 620
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-ne v0, v4, :cond_4b

    .line 621
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    .line 622
    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    .line 625
    :cond_4b
    return-object v1

    .line 611
    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .end local v2    # "now":J
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssociationState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 1194
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    return-object v0
.end method

.method public blacklist writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;J)V
    .registers 10
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "nowUptime"    # J

    .line 709
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 711
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 713
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 714
    .local v0, "NSRC":I
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v1, 0x0

    .local v1, "isrc":I
    :goto_1e
    if-ge v1, v0, :cond_3a

    .line 716
    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 717
    .local v2, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 718
    .local v3, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;)V

    .line 719
    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 715
    .end local v2    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v3    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 721
    .end local v1    # "isrc":I
    :cond_3a
    return-void
.end method
