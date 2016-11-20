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

.field mObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;"
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
    .line 58
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/ContentObserverController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@3
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Ljava/util/List;

    #@a
    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/ArrayMap;

    #@11
    .line 84
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
    .line 82
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ContentObserverController;
    .locals 4
    .param p0, "taskManagerService"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 66
    sget-object v1, Lcom/android/server/job/controllers/ContentObserverController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 67
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/ContentObserverController;->sController:Lcom/android/server/job/controllers/ContentObserverController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 68
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController;

    #@9
    .line 69
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    .line 68
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@14
    sput-object v0, Lcom/android/server/job/controllers/ContentObserverController;->sController:Lcom/android/server/job/controllers/ContentObserverController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 72
    sget-object v0, Lcom/android/server/job/controllers/ContentObserverController;->sController:Lcom/android/server/job/controllers/ContentObserverController;

    #@19
    return-object v0

    #@1a
    .line 66
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
    .line 78
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
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    #@0
    .prologue
    .line 353
    const-string/jumbo v13, "Content:"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 354
    move-object/from16 v0, p0

    #@a
    iget-object v13, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Ljava/util/List;

    #@c
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v6

    #@10
    .line 355
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v13

    #@14
    if-eqz v13, :cond_1

    #@16
    .line 356
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v8

    #@1a
    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    #@1c
    .line 357
    .local v8, "js":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v0, p2

    #@1e
    invoke-virtual {v8, v0}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@21
    move-result v13

    #@22
    if-eqz v13, :cond_0

    #@24
    .line 360
    const-string/jumbo v13, "  #"

    #@27
    move-object/from16 v0, p1

    #@29
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 361
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v8, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@31
    .line 362
    const-string/jumbo v13, " from "

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    .line 363
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@3c
    move-result v13

    #@3d
    move-object/from16 v0, p1

    #@3f
    invoke-static {v0, v13}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@42
    .line 364
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@45
    goto :goto_0

    #@46
    .line 366
    .end local v8    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    move-object/from16 v0, p0

    #@48
    iget-object v13, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/ArrayMap;

    #@4a
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    #@4d
    move-result v3

    #@4e
    .line 367
    .local v3, "N":I
    if-lez v3, :cond_a

    #@50
    .line 368
    const-string/jumbo v13, "  Observers:"

    #@53
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 369
    const/4 v4, 0x0

    #@59
    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_a

    #@5b
    .line 370
    move-object/from16 v0, p0

    #@5d
    iget-object v13, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/ArrayMap;

    #@5f
    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@62
    move-result-object v10

    #@63
    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    #@65
    .line 371
    .local v10, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v13, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@67
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@6a
    move-result v2

    #@6b
    .line 372
    .local v2, "M":I
    const/4 v11, 0x0

    #@6c
    .line 373
    .local v11, "shouldDump":Z
    const/4 v7, 0x0

    #@6d
    .local v7, "j":I
    :goto_2
    if-ge v7, v2, :cond_2

    #@6f
    .line 374
    iget-object v13, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@71
    invoke-virtual {v13, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@74
    move-result-object v5

    #@75
    check-cast v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@77
    .line 375
    .local v5, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@79
    move/from16 v0, p2

    #@7b
    invoke-virtual {v13, v0}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@7e
    move-result v13

    #@7f
    if-eqz v13, :cond_4

    #@81
    .line 376
    const/4 v11, 0x1

    #@82
    .line 380
    .end local v5    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_2
    if-nez v11, :cond_5

    #@84
    .line 369
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@86
    goto :goto_1

    #@87
    .line 373
    .restart local v5    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@89
    goto :goto_2

    #@8a
    .line 383
    .end local v5    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_5
    const-string/jumbo v13, "    "

    #@8d
    move-object/from16 v0, p1

    #@8f
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 384
    move-object/from16 v0, p0

    #@94
    iget-object v13, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/ArrayMap;

    #@96
    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@99
    move-result-object v12

    #@9a
    check-cast v12, Landroid/app/job/JobInfo$TriggerContentUri;

    #@9c
    .line 385
    .local v12, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v12}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    #@9f
    move-result-object v13

    #@a0
    move-object/from16 v0, p1

    #@a2
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@a5
    .line 386
    const-string/jumbo v13, " 0x"

    #@a8
    move-object/from16 v0, p1

    #@aa
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    .line 387
    invoke-virtual {v12}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    #@b0
    move-result v13

    #@b1
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b4
    move-result-object v13

    #@b5
    move-object/from16 v0, p1

    #@b7
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ba
    .line 388
    const-string/jumbo v13, " ("

    #@bd
    move-object/from16 v0, p1

    #@bf
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    .line 389
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@c5
    move-result v13

    #@c6
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@cb
    .line 390
    const-string/jumbo v13, "):"

    #@ce
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d3
    .line 391
    const-string/jumbo v13, "      Jobs:"

    #@d6
    move-object/from16 v0, p1

    #@d8
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@db
    .line 392
    const/4 v7, 0x0

    #@dc
    :goto_3
    if-ge v7, v2, :cond_3

    #@de
    .line 393
    iget-object v13, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@e0
    invoke-virtual {v13, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@e3
    move-result-object v5

    #@e4
    check-cast v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@e6
    .line 394
    .restart local v5    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    const-string/jumbo v13, "        #"

    #@e9
    move-object/from16 v0, p1

    #@eb
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    .line 395
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@f0
    move-object/from16 v0, p1

    #@f2
    invoke-virtual {v13, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@f5
    .line 396
    const-string/jumbo v13, " from "

    #@f8
    move-object/from16 v0, p1

    #@fa
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd
    .line 397
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@ff
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@102
    move-result v13

    #@103
    move-object/from16 v0, p1

    #@105
    invoke-static {v0, v13}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@108
    .line 398
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@10a
    if-eqz v13, :cond_8

    #@10c
    .line 399
    const-string/jumbo v13, ":"

    #@10f
    move-object/from16 v0, p1

    #@111
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@114
    .line 400
    iget-boolean v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@116
    if-eqz v13, :cond_6

    #@118
    .line 401
    const-string/jumbo v13, "          Trigger pending: update="

    #@11b
    move-object/from16 v0, p1

    #@11d
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    .line 403
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@122
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    #@125
    move-result-wide v14

    #@126
    .line 402
    move-object/from16 v0, p1

    #@128
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@12b
    .line 404
    const-string/jumbo v13, ", max="

    #@12e
    move-object/from16 v0, p1

    #@130
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@133
    .line 406
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@135
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    #@138
    move-result-wide v14

    #@139
    .line 405
    move-object/from16 v0, p1

    #@13b
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@13e
    .line 407
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@141
    .line 409
    :cond_6
    const-string/jumbo v13, "          Changed Authorities:"

    #@144
    move-object/from16 v0, p1

    #@146
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@149
    .line 410
    const/4 v9, 0x0

    #@14a
    .local v9, "k":I
    :goto_4
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@14c
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@14f
    move-result v13

    #@150
    if-ge v9, v13, :cond_7

    #@152
    .line 411
    const-string/jumbo v13, "          "

    #@155
    move-object/from16 v0, p1

    #@157
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15a
    .line 412
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@15c
    invoke-virtual {v13, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@15f
    move-result-object v13

    #@160
    check-cast v13, Ljava/lang/String;

    #@162
    move-object/from16 v0, p1

    #@164
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@167
    .line 410
    add-int/lit8 v9, v9, 0x1

    #@169
    goto :goto_4

    #@16a
    .line 414
    :cond_7
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@16c
    if-eqz v13, :cond_9

    #@16e
    .line 415
    const-string/jumbo v13, "          Changed URIs:"

    #@171
    move-object/from16 v0, p1

    #@173
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@176
    .line 416
    const/4 v9, 0x0

    #@177
    :goto_5
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@179
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@17c
    move-result v13

    #@17d
    if-ge v9, v13, :cond_9

    #@17f
    .line 417
    const-string/jumbo v13, "          "

    #@182
    move-object/from16 v0, p1

    #@184
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@187
    .line 418
    iget-object v13, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@189
    invoke-virtual {v13, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@18c
    move-result-object v13

    #@18d
    move-object/from16 v0, p1

    #@18f
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@192
    .line 416
    add-int/lit8 v9, v9, 0x1

    #@194
    goto :goto_5

    #@195
    .line 422
    .end local v9    # "k":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@198
    .line 392
    :cond_9
    add-int/lit8 v7, v7, 0x1

    #@19a
    goto/16 :goto_3

    #@19c
    .line 352
    .end local v2    # "M":I
    .end local v4    # "i":I
    .end local v5    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    .end local v7    # "j":I
    .end local v10    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v11    # "shouldDump":Z
    .end local v12    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    :cond_a
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
    .line 89
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_7

    #@7
    .line 90
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@9
    if-nez v5, :cond_0

    #@b
    .line 91
    new-instance v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@d
    invoke-direct {v5, p0, p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    #@10
    iput-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@12
    .line 96
    :cond_0
    iget-object v5, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Ljava/util/List;

    #@14
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 97
    const/4 v2, 0x0

    #@18
    .line 100
    .local v2, "havePendingUris":Z
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@1a
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@1c
    if-eqz v5, :cond_1

    #@1e
    .line 101
    const/4 v2, 0x1

    #@1f
    .line 105
    :cond_1
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@21
    if-eqz v5, :cond_6

    #@23
    .line 106
    const/4 v2, 0x1

    #@24
    .line 107
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@26
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@28
    if-nez v5, :cond_2

    #@2a
    .line 108
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@2c
    .line 109
    new-instance v6, Landroid/util/ArraySet;

    #@2e
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@31
    .line 108
    iput-object v6, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@33
    .line 111
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
    .line 112
    .local v0, "auth":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@47
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@49
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 114
    .end local v0    # "auth":Ljava/lang/String;
    :cond_3
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@4f
    if-eqz v5, :cond_5

    #@51
    .line 115
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@53
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@55
    if-nez v5, :cond_4

    #@57
    .line 116
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@59
    new-instance v6, Landroid/util/ArraySet;

    #@5b
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@5e
    iput-object v6, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@60
    .line 118
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
    .line 119
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@74
    iget-object v5, v5, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@76
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@79
    goto :goto_1

    #@7a
    .line 122
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uri$iterator":Ljava/util/Iterator;
    :cond_5
    iput-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@7c
    .line 123
    iput-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@7e
    .line 125
    .end local v1    # "auth$iterator":Ljava/util/Iterator;
    :cond_6
    iput-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@80
    .line 126
    iput-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@82
    .line 127
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    #@85
    .line 129
    .end local v2    # "havePendingUris":Z
    :cond_7
    if-eqz p2, :cond_8

    #@87
    iget-object v5, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@89
    if-eqz v5, :cond_8

    #@8b
    .line 131
    iget-object v5, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@8d
    invoke-virtual {v5}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    #@90
    .line 132
    iput-object v7, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@92
    .line 88
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
    .line 152
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 153
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 154
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@d
    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    #@10
    .line 155
    if-eqz p2, :cond_3

    #@12
    .line 156
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 157
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@18
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 163
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 164
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@22
    invoke-direct {v0, p0, p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    #@25
    iput-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@27
    .line 166
    :cond_0
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@29
    .line 167
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@2b
    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@2d
    .line 166
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@2f
    .line 168
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@31
    .line 169
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@33
    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@35
    .line 168
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@37
    .line 170
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@39
    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@3b
    .line 171
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@3d
    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@3f
    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Ljava/util/List;

    #@41
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@44
    .line 151
    :cond_2
    return-void

    #@45
    .line 179
    :cond_3
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@47
    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    #@4a
    .line 180
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
    .line 138
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 139
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 140
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@d
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@f
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@11
    .line 142
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@13
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@15
    .line 141
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@17
    .line 143
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@19
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@1b
    .line 144
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@1d
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@1f
    .line 137
    :cond_0
    return-void
.end method

.method public rescheduleForFailure(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "newJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 192
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 193
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@9
    move-result v0

    #@a
    .line 192
    if-eqz v0, :cond_0

    #@c
    .line 194
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v1

    #@f
    .line 198
    :try_start_0
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@11
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@13
    .line 199
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@15
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 191
    :cond_0
    return-void

    #@19
    .line 194
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method
