.class public Lcom/android/internal/compat/ChangeReporter;
.super Ljava/lang/Object;
.source "ChangeReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/ChangeReporter$ChangeReport;,
        Lcom/android/internal/compat/ChangeReporter$Source;,
        Lcom/android/internal/compat/ChangeReporter$State;
    }
.end annotation


# static fields
.field private static final blacklist NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/compat/ChangeReporter$ChangeReport;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist SOURCE_APP_PROCESS:I = 0x1

.field public static final blacklist SOURCE_SYSTEM_SERVER:I = 0x2

.field public static final blacklist SOURCE_UNKNOWN_SOURCE:I = 0x0

.field public static final blacklist STATE_DISABLED:I = 0x2

.field public static final blacklist STATE_ENABLED:I = 0x1

.field public static final blacklist STATE_LOGGED:I = 0x3

.field public static final blacklist STATE_UNKNOWN_STATE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CompatChangeReporter"


# instance fields
.field private blacklist mDebugLogAll:Z

.field private final blacklist mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/compat/ChangeReporter$ChangeReport;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSource:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/android/internal/compat/ChangeReporter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/compat/ChangeReporter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/compat/ChangeReporter;->NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "source"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    .line 86
    return-void
.end method

.method private blacklist checkAndSetIsAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "changeReport"    # Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    .line 222
    .local v0, "isAlreadyReported":Z
    if-nez v0, :cond_9

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/internal/compat/ChangeReporter;->markAsReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)V

    .line 225
    :cond_9
    return v0
.end method

.method private blacklist debugLog(IJI)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "changeId"    # J
    .param p4, "state"    # I

    .line 262
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Lcom/android/internal/compat/ChangeReporter;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 262
    const-string v1, "Compat change id reported: %d; UID %d; state: %s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    const/4 v2, 0x2

    const-string v3, "CompatChangeReporter"

    if-ne v1, v2, :cond_21

    .line 265
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 267
    :cond_21
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_24
    return-void
.end method

.method private blacklist isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "report"    # Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    .line 229
    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 2
    .param p0, "uid"    # Ljava/lang/Integer;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private blacklist markAsReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "report"    # Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    .line 246
    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/internal/compat/ChangeReporter;->NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method private blacklist shouldWriteToDebug(ZIZ)Z
    .registers 9
    .param p1, "isAlreadyReported"    # Z
    .param p2, "state"    # I
    .param p3, "isLoggableBySdk"    # Z

    .line 167
    iget-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 169
    :cond_6
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return v0

    .line 174
    :cond_a
    invoke-static {}, Lcom/android/internal/compat/flags/Flags;->skipOldAndDisabledCompatLogging()Z

    move-result v2

    .line 175
    .local v2, "skipLoggingFlag":Z
    if-eqz v2, :cond_22

    const-string v3, "CompatChangeReporter"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_22

    .line 178
    :cond_1a
    if-eqz p3, :cond_20

    const/4 v3, 0x2

    if-eq p2, v3, :cond_20

    goto :goto_21

    :cond_20
    move v1, v0

    :goto_21
    return v1

    .line 175
    :cond_22
    :goto_22
    return v1
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 278
    packed-switch p0, :pswitch_data_10

    .line 286
    const-string v0, "UNKNOWN"

    return-object v0

    .line 280
    :pswitch_6
    const-string v0, "LOGGED"

    return-object v0

    .line 284
    :pswitch_9
    const-string v0, "DISABLED"

    return-object v0

    .line 282
    :pswitch_c
    const-string v0, "ENABLED"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method blacklist isAlreadyReported(IJI)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "changeId"    # J
    .param p4, "state"    # I

    .line 242
    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    return v0
.end method

.method public blacklist reportChange(IJI)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "changeId"    # J
    .param p4, "state"    # I

    .line 123
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    .end local p1    # "uid":I
    .end local p2    # "changeId":J
    .end local p4    # "state":I
    .local v1, "uid":I
    .local v2, "changeId":J
    .local v4, "state":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZZ)V

    .line 124
    return-void
.end method

.method public blacklist reportChange(IJIZZ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "changeId"    # J
    .param p4, "state"    # I
    .param p5, "isKnownSystemApp"    # Z
    .param p6, "isLoggableBySdk"    # Z

    .line 103
    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->checkAndSetIsAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    .line 105
    .local v0, "isAlreadyReported":Z
    invoke-virtual {p0, p5, v0}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToStatsLog(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 106
    const/16 v2, 0xe4

    iget v7, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    move v3, p1

    move-wide v4, p2

    move v6, p4

    .end local p1    # "uid":I
    .end local p2    # "changeId":J
    .end local p4    # "state":I
    .local v3, "uid":I
    .local v4, "changeId":J
    .local v6, "state":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJII)V

    goto :goto_1d

    .line 105
    .end local v3    # "uid":I
    .end local v4    # "changeId":J
    .end local v6    # "state":I
    .restart local p1    # "uid":I
    .restart local p2    # "changeId":J
    .restart local p4    # "state":I
    :cond_1a
    move v3, p1

    move-wide v4, p2

    move v6, p4

    .line 109
    .end local p1    # "uid":I
    .end local p2    # "changeId":J
    .end local p4    # "state":I
    .restart local v3    # "uid":I
    .restart local v4    # "changeId":J
    .restart local v6    # "state":I
    :goto_1d
    invoke-direct {p0, v0, v6, p6}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToDebug(ZIZ)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 110
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/internal/compat/ChangeReporter;->debugLog(IJI)V

    .line 112
    :cond_26
    return-void
.end method

.method public blacklist resetReportedChanges(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 258
    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method

.method blacklist shouldWriteToDebug(IJI)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "changeId"    # J
    .param p4, "state"    # I

    .line 192
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    .end local p1    # "uid":I
    .end local p2    # "changeId":J
    .end local p4    # "state":I
    .local v1, "uid":I
    .local v2, "changeId":J
    .local v4, "state":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToDebug(IJIZ)Z

    move-result p1

    return p1
.end method

.method blacklist shouldWriteToDebug(IJIZ)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "changeId"    # J
    .param p4, "state"    # I
    .param p5, "isLoggableBySdk"    # Z

    .line 208
    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    .line 208
    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToDebug(ZIZ)Z

    move-result v0

    return v0
.end method

.method blacklist shouldWriteToStatsLog(ZZ)Z
    .registers 4
    .param p1, "isKnownSystemApp"    # Z
    .param p2, "isAlreadyReported"    # Z

    .line 151
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist startDebugLogAll()V
    .registers 2

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    .line 131
    return-void
.end method

.method public blacklist stopDebugLogAll()V
    .registers 2

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    .line 138
    return-void
.end method
