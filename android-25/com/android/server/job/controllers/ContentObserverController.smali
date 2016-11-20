.class public Lcom/android/server/job/controllers/ContentObserverController;
.super Lcom/android/server/job/controllers/StateController;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ContentObserverController$JobInstance;,
        Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;,
        Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_URIS_REPORTED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Content"

.field private static final URIS_URGENT_THRESHOLD:I = 0x28

.field private static volatile sController:Lcom/android/server/job/controllers/ContentObserverController;

.field private static final sCreationLock:Ljava/lang/Object;


# instance fields
.field final mHandler:Landroid/os/Handler;

.field mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/ContentObserverController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@3
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Ljava/util/List;

    #@a
    .line 69
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 68
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    #@11
    .line 91
    new-instance v0, Landroid/os/Handler;

    #@13
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@1c
    .line 89
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ContentObserverController;
    .locals 4
    .param p0, "taskManagerService"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 73
    sget-object v1, Lcom/android/server/job/controllers/ContentObserverController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 74
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/ContentObserverController;->sController:Lcom/android/server/job/controllers/ContentObserverController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 75
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController;

    #@9
    .line 76
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    .line 75
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@14
    sput-object v0, Lcom/android/server/job/controllers/ContentObserverController;->sController:Lcom/android/server/job/controllers/ContentObserverController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 79
    sget-object v0, Lcom/android/server/job/controllers/ContentObserverController;->sController:Lcom/android/server/job/controllers/ContentObserverController;

    #@19
    return-object v0

    #@1a
    .line 73
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public static getForTesting(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)Lcom/android/server/job/controllers/ContentObserverController;
    .locals 2
    .param p0, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 85
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController;

    #@2
    new-instance v1, Ljava/lang/Object;

    #@4
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@7
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@a
    return-object v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    #@0
    .prologue
    .line 378
    const-string/jumbo v19, "Content:"

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v19

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 379
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Ljava/util/List;

    #@e
    move-object/from16 v19, v0

    #@10
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v7

    #@14
    .line 380
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v19

    #@18
    if-eqz v19, :cond_1

    #@1a
    .line 381
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v9

    #@1e
    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    #@20
    .line 382
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v0, p2

    #@22
    invoke-virtual {v9, v0}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@25
    move-result v19

    #@26
    if-eqz v19, :cond_0

    #@28
    .line 385
    const-string/jumbo v19, "  #"

    #@2b
    move-object/from16 v0, p1

    #@2d
    move-object/from16 v1, v19

    #@2f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 386
    move-object/from16 v0, p1

    #@34
    invoke-virtual {v9, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@37
    .line 387
    const-string/jumbo v19, " from "

    #@3a
    move-object/from16 v0, p1

    #@3c
    move-object/from16 v1, v19

    #@3e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    .line 388
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@44
    move-result v19

    #@45
    move-object/from16 v0, p1

    #@47
    move/from16 v1, v19

    #@49
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@4c
    .line 389
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@4f
    goto :goto_0

    #@50
    .line 391
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    #@54
    move-object/from16 v19, v0

    #@56
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@59
    move-result v5

    #@5a
    .line 392
    .local v5, "N":I
    if-lez v5, :cond_b

    #@5c
    .line 393
    const-string/jumbo v19, "  Observers:"

    #@5f
    move-object/from16 v0, p1

    #@61
    move-object/from16 v1, v19

    #@63
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 394
    const/16 v18, 0x0

    #@68
    .local v18, "userIdx":I
    :goto_1
    move/from16 v0, v18

    #@6a
    if-ge v0, v5, :cond_b

    #@6c
    .line 395
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    #@70
    move-object/from16 v19, v0

    #@72
    move-object/from16 v0, v19

    #@74
    move/from16 v1, v18

    #@76
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@79
    move-result v17

    #@7a
    .line 397
    .local v17, "userId":I
    move-object/from16 v0, p0

    #@7c
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    #@7e
    move-object/from16 v19, v0

    #@80
    move-object/from16 v0, v19

    #@82
    move/from16 v1, v17

    #@84
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v14

    #@88
    check-cast v14, Landroid/util/ArrayMap;

    #@8a
    .line 398
    .local v14, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@8d
    move-result v11

    #@8e
    .line 399
    .local v11, "numbOfObserversPerUser":I
    const/4 v13, 0x0

    #@8f
    .local v13, "observerIdx":I
    :goto_2
    if-ge v13, v11, :cond_a

    #@91
    .line 400
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@94
    move-result-object v12

    #@95
    check-cast v12, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    #@97
    .line 401
    .local v12, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v0, v12, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@99
    move-object/from16 v19, v0

    #@9b
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    #@9e
    move-result v4

    #@9f
    .line 402
    .local v4, "M":I
    const/4 v15, 0x0

    #@a0
    .line 403
    .local v15, "shouldDump":Z
    const/4 v8, 0x0

    #@a1
    .local v8, "j":I
    :goto_3
    if-ge v8, v4, :cond_2

    #@a3
    .line 404
    iget-object v0, v12, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@a5
    move-object/from16 v19, v0

    #@a7
    move-object/from16 v0, v19

    #@a9
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@ac
    move-result-object v6

    #@ad
    check-cast v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@af
    .line 405
    .local v6, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@b1
    move-object/from16 v19, v0

    #@b3
    move-object/from16 v0, v19

    #@b5
    move/from16 v1, p2

    #@b7
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@ba
    move-result v19

    #@bb
    if-eqz v19, :cond_4

    #@bd
    .line 406
    const/4 v15, 0x1

    #@be
    .line 410
    .end local v6    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_2
    if-nez v15, :cond_5

    #@c0
    .line 399
    :cond_3
    add-int/lit8 v13, v13, 0x1

    #@c2
    goto :goto_2

    #@c3
    .line 403
    .restart local v6    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@c5
    goto :goto_3

    #@c6
    .line 413
    .end local v6    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_5
    const-string/jumbo v19, "    "

    #@c9
    move-object/from16 v0, p1

    #@cb
    move-object/from16 v1, v19

    #@cd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0
    .line 414
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d3
    move-result-object v16

    #@d4
    check-cast v16, Landroid/app/job/JobInfo$TriggerContentUri;

    #@d6
    .line 415
    .local v16, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual/range {v16 .. v16}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    #@d9
    move-result-object v19

    #@da
    move-object/from16 v0, p1

    #@dc
    move-object/from16 v1, v19

    #@de
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@e1
    .line 416
    const-string/jumbo v19, " 0x"

    #@e4
    move-object/from16 v0, p1

    #@e6
    move-object/from16 v1, v19

    #@e8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eb
    .line 417
    invoke-virtual/range {v16 .. v16}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    #@ee
    move-result v19

    #@ef
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f2
    move-result-object v19

    #@f3
    move-object/from16 v0, p1

    #@f5
    move-object/from16 v1, v19

    #@f7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa
    .line 418
    const-string/jumbo v19, " ("

    #@fd
    move-object/from16 v0, p1

    #@ff
    move-object/from16 v1, v19

    #@101
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@104
    .line 419
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@107
    move-result v19

    #@108
    move-object/from16 v0, p1

    #@10a
    move/from16 v1, v19

    #@10c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@10f
    .line 420
    const-string/jumbo v19, "):"

    #@112
    move-object/from16 v0, p1

    #@114
    move-object/from16 v1, v19

    #@116
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@119
    .line 421
    const-string/jumbo v19, "      Jobs:"

    #@11c
    move-object/from16 v0, p1

    #@11e
    move-object/from16 v1, v19

    #@120
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@123
    .line 422
    const/4 v8, 0x0

    #@124
    :goto_4
    if-ge v8, v4, :cond_3

    #@126
    .line 423
    iget-object v0, v12, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@128
    move-object/from16 v19, v0

    #@12a
    move-object/from16 v0, v19

    #@12c
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12f
    move-result-object v6

    #@130
    check-cast v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@132
    .line 424
    .restart local v6    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    const-string/jumbo v19, "        #"

    #@135
    move-object/from16 v0, p1

    #@137
    move-object/from16 v1, v19

    #@139
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    .line 425
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@13e
    move-object/from16 v19, v0

    #@140
    move-object/from16 v0, v19

    #@142
    move-object/from16 v1, p1

    #@144
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@147
    .line 426
    const-string/jumbo v19, " from "

    #@14a
    move-object/from16 v0, p1

    #@14c
    move-object/from16 v1, v19

    #@14e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@151
    .line 427
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@153
    move-object/from16 v19, v0

    #@155
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@158
    move-result v19

    #@159
    move-object/from16 v0, p1

    #@15b
    move/from16 v1, v19

    #@15d
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@160
    .line 428
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@162
    move-object/from16 v19, v0

    #@164
    if-eqz v19, :cond_8

    #@166
    .line 429
    const-string/jumbo v19, ":"

    #@169
    move-object/from16 v0, p1

    #@16b
    move-object/from16 v1, v19

    #@16d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@170
    .line 430
    iget-boolean v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@172
    move/from16 v19, v0

    #@174
    if-eqz v19, :cond_6

    #@176
    .line 431
    const-string/jumbo v19, "          Trigger pending: update="

    #@179
    move-object/from16 v0, p1

    #@17b
    move-object/from16 v1, v19

    #@17d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@180
    .line 433
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@182
    move-object/from16 v19, v0

    #@184
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    #@187
    move-result-wide v20

    #@188
    .line 432
    move-wide/from16 v0, v20

    #@18a
    move-object/from16 v2, p1

    #@18c
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@18f
    .line 434
    const-string/jumbo v19, ", max="

    #@192
    move-object/from16 v0, p1

    #@194
    move-object/from16 v1, v19

    #@196
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@199
    .line 436
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@19b
    move-object/from16 v19, v0

    #@19d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    #@1a0
    move-result-wide v20

    #@1a1
    .line 435
    move-wide/from16 v0, v20

    #@1a3
    move-object/from16 v2, p1

    #@1a5
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1a8
    .line 437
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1ab
    .line 439
    :cond_6
    const-string/jumbo v19, "          Changed Authorities:"

    #@1ae
    move-object/from16 v0, p1

    #@1b0
    move-object/from16 v1, v19

    #@1b2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b5
    .line 440
    const/4 v10, 0x0

    #@1b6
    .local v10, "k":I
    :goto_5
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@1b8
    move-object/from16 v19, v0

    #@1ba
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    #@1bd
    move-result v19

    #@1be
    move/from16 v0, v19

    #@1c0
    if-ge v10, v0, :cond_7

    #@1c2
    .line 441
    const-string/jumbo v19, "          "

    #@1c5
    move-object/from16 v0, p1

    #@1c7
    move-object/from16 v1, v19

    #@1c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cc
    .line 442
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@1ce
    move-object/from16 v19, v0

    #@1d0
    move-object/from16 v0, v19

    #@1d2
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1d5
    move-result-object v19

    #@1d6
    check-cast v19, Ljava/lang/String;

    #@1d8
    move-object/from16 v0, p1

    #@1da
    move-object/from16 v1, v19

    #@1dc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1df
    .line 440
    add-int/lit8 v10, v10, 0x1

    #@1e1
    goto :goto_5

    #@1e2
    .line 444
    :cond_7
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@1e4
    move-object/from16 v19, v0

    #@1e6
    if-eqz v19, :cond_9

    #@1e8
    .line 445
    const-string/jumbo v19, "          Changed URIs:"

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    move-object/from16 v1, v19

    #@1ef
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f2
    .line 446
    const/4 v10, 0x0

    #@1f3
    :goto_6
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@1f5
    move-object/from16 v19, v0

    #@1f7
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    #@1fa
    move-result v19

    #@1fb
    move/from16 v0, v19

    #@1fd
    if-ge v10, v0, :cond_9

    #@1ff
    .line 447
    const-string/jumbo v19, "          "

    #@202
    move-object/from16 v0, p1

    #@204
    move-object/from16 v1, v19

    #@206
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@209
    .line 448
    iget-object v0, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@20b
    move-object/from16 v19, v0

    #@20d
    move-object/from16 v0, v19

    #@20f
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@212
    move-result-object v19

    #@213
    move-object/from16 v0, p1

    #@215
    move-object/from16 v1, v19

    #@217
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@21a
    .line 446
    add-int/lit8 v10, v10, 0x1

    #@21c
    goto :goto_6

    #@21d
    .line 452
    .end local v10    # "k":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@220
    .line 422
    :cond_9
    add-int/lit8 v8, v8, 0x1

    #@222
    goto/16 :goto_4

    #@224
    .line 394
    .end local v4    # "M":I
    .end local v6    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    .end local v8    # "j":I
    .end local v12    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v15    # "shouldDump":Z
    .end local v16    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    :cond_a
    add-int/lit8 v18, v18, 0x1

    #@226
    goto/16 :goto_1

    #@228
    .line 377
    .end local v11    # "numbOfObserversPerUser":I
    .end local v13    # "observerIdx":I
    .end local v14    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v17    # "userId":I
    .end local v18    # "userIdx":I
    :cond_b
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 8
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 96
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_7

    #@7
    .line 97
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@9
    if-nez v5, :cond_0

    #@b
    .line 98
    new-instance v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@d
    invoke-direct {v5, p0, p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    #@10
    iput-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@12
    .line 103
    :cond_0
    iget-object v5, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Ljava/util/List;

    #@14
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 104
    const/4 v2, 0x0

    #@18
    .line 107
    .local v2, "havePendingUris":Z
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@1a
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@1c
    if-eqz v5, :cond_1

    #@1e
    .line 108
    const/4 v2, 0x1

    #@1f
    .line 112
    :cond_1
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@21
    if-eqz v5, :cond_6

    #@23
    .line 113
    const/4 v2, 0x1

    #@24
    .line 114
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@26
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@28
    if-nez v5, :cond_2

    #@2a
    .line 115
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@2c
    .line 116
    new-instance v6, Landroid/util/ArraySet;

    #@2e
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@31
    .line 115
    iput-object v6, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@33
    .line 118
    :cond_2
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@35
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v1

    #@39
    .local v1, "auth$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_3

    #@3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/lang/String;

    #@45
    .line 119
    .local v0, "auth":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@47
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@49
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 121
    .end local v0    # "auth":Ljava/lang/String;
    :cond_3
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@4f
    if-eqz v5, :cond_5

    #@51
    .line 122
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@53
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@55
    if-nez v5, :cond_4

    #@57
    .line 123
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@59
    new-instance v6, Landroid/util/ArraySet;

    #@5b
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@5e
    iput-object v6, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@60
    .line 125
    :cond_4
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@62
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v4

    #@66
    .local v4, "uri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v5

    #@6a
    if-eqz v5, :cond_5

    #@6c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v3

    #@70
    check-cast v3, Landroid/net/Uri;

    #@72
    .line 126
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@74
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@76
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@79
    goto :goto_1

    #@7a
    .line 129
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uri$iterator":Ljava/util/Iterator;
    :cond_5
    iput-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@7c
    .line 130
    iput-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@7e
    .line 132
    .end local v1    # "auth$iterator":Ljava/util/Iterator;
    :cond_6
    iput-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@80
    .line 133
    iput-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@82
    .line 134
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    #@85
    .line 136
    .end local v2    # "havePendingUris":Z
    :cond_7
    if-eqz p2, :cond_8

    #@87
    iget-object v5, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@89
    if-eqz v5, :cond_8

    #@8b
    .line 138
    iget-object v5, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@8d
    invoke-virtual {v5}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    #@90
    .line 139
    iput-object v7, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@92
    .line 95
    :cond_8
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 159
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 160
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 161
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@d
    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    #@10
    .line 162
    if-eqz p2, :cond_3

    #@12
    .line 163
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 164
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@18
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 170
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 171
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@22
    invoke-direct {v0, p0, p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    #@25
    iput-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@27
    .line 173
    :cond_0
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@29
    .line 174
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@2b
    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@2d
    .line 173
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@2f
    .line 175
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@31
    .line 176
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@33
    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@35
    .line 175
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@37
    .line 177
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@39
    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@3b
    .line 178
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@3d
    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@3f
    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Ljava/util/List;

    #@41
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@44
    .line 158
    :cond_2
    return-void

    #@45
    .line 186
    :cond_3
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@47
    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    #@4a
    .line 187
    iput-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@4c
    goto :goto_0
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 145
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 146
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 147
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@d
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@f
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@11
    .line 149
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@13
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@15
    .line 148
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@17
    .line 150
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@19
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@1b
    .line 151
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@1d
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@1f
    .line 144
    :cond_0
    return-void
.end method

.method public rescheduleForFailure(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "newJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 199
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 200
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@9
    move-result v0

    #@a
    .line 199
    if-eqz v0, :cond_0

    #@c
    .line 201
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v1

    #@f
    .line 205
    :try_start_0
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@11
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@13
    .line 206
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@15
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 198
    :cond_0
    return-void

    #@19
    .line 201
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method
