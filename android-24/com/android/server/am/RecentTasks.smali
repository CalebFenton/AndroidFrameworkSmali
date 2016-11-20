.class Lcom/android/server/am/RecentTasks;
.super Ljava/util/ArrayList;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RecentTasks$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final MAX_RECENT_BITMAPS:I = 0x3

.field private static final MOVE_AFFILIATED_TASKS_TO_FRONT:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static sTaskRecordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTaskPersister:Lcom/android/server/am/TaskPersister;

.field private final mTmpActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mTmpAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@5
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    sget-object v1, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/server/am/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    #@1c
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    sget-object v1, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    sput-object v0, Lcom/android/server/am/RecentTasks;->TAG_TASKS:Ljava/lang/String;

    #@33
    .line 699
    new-instance v0, Lcom/android/server/am/RecentTasks$1;

    #@35
    invoke-direct {v0}, Lcom/android/server/am/RecentTasks$1;-><init>()V

    #@38
    sput-object v0, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    #@3a
    .line 59
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "mStackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 93
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@4
    .line 76
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@6
    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@9
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@b
    .line 83
    new-instance v1, Landroid/util/SparseArray;

    #@d
    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    #@10
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@12
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    #@14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@19
    .line 88
    new-instance v1, Ljava/util/HashMap;

    #@1b
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1e
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    #@20
    .line 89
    new-instance v1, Ljava/util/HashMap;

    #@22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    #@27
    .line 90
    new-instance v1, Landroid/content/pm/ActivityInfo;

    #@29
    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@2c
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2e
    .line 91
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    #@30
    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@33
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAppInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    .line 94
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@38
    move-result-object v0

    #@39
    .line 95
    .local v0, "systemDir":Ljava/io/File;
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3b
    .line 96
    new-instance v1, Lcom/android/server/am/TaskPersister;

    #@3d
    invoke-direct {v1, v0, p2, p1, p0}, Lcom/android/server/am/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V

    #@40
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@42
    .line 97
    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setRecentTasks(Lcom/android/server/am/RecentTasks;)V

    #@45
    .line 93
    return-void
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 121
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@a
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@c
    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@13
    .line 122
    sget-object v0, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Loaded persisted task ids for user "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 117
    :cond_0
    return-void
.end method

.method private final moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, -0x1

    #@2
    .line 383
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@5
    move-result v4

    #@6
    .line 384
    .local v4, "recentsCount":I
    move-object v6, p1

    #@7
    .line 385
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    move v7, p2

    #@8
    .line 386
    .local v7, "topIndex":I
    :goto_0
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@a
    if-eqz v8, :cond_0

    #@c
    if-lez v7, :cond_0

    #@e
    .line 387
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@10
    .line 388
    add-int/lit8 v7, v7, -0x1

    #@12
    goto :goto_0

    #@13
    .line 393
    :cond_0
    iget v8, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@15
    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@17
    if-ne v8, v9, :cond_5

    #@19
    const/4 v5, 0x1

    #@1a
    .line 394
    .local v5, "sane":Z
    :goto_1
    move v1, v7

    #@1b
    .line 395
    .local v1, "endIndex":I
    move-object v3, v6

    #@1c
    .line 396
    .local v3, "prev":Lcom/android/server/am/TaskRecord;
    :cond_1
    if-ge v1, v4, :cond_3

    #@1e
    .line 397
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@24
    .line 400
    .local v0, "cur":Lcom/android/server/am/TaskRecord;
    if-ne v0, v6, :cond_6

    #@26
    .line 402
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@28
    if-nez v8, :cond_2

    #@2a
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@2c
    if-eq v8, v10, :cond_8

    #@2e
    .line 403
    :cond_2
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@30
    new-instance v9, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v10, "Bad chain @"

    #@38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    .line 404
    const-string/jumbo v10, ": first task has next affiliate: "

    #@43
    .line 403
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 405
    const/4 v5, 0x0

    #@53
    .line 459
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    #@55
    .line 460
    if-ge v1, p2, :cond_4

    #@57
    .line 461
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@59
    new-instance v9, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v10, "Bad chain @"

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    .line 462
    const-string/jumbo v10, ": did not extend to task "

    #@6c
    .line 461
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    .line 462
    const-string/jumbo v10, " @"

    #@77
    .line 461
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v9

    #@83
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 463
    const/4 v5, 0x0

    #@87
    .line 466
    :cond_4
    if-eqz v5, :cond_d

    #@89
    .line 469
    move v2, v7

    #@8a
    .local v2, "i":I
    :goto_3
    if-gt v2, v1, :cond_c

    #@8c
    .line 472
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@8f
    move-result-object v0

    #@90
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@92
    .line 473
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    sub-int v8, v2, v7

    #@94
    invoke-virtual {p0, v8, v0}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    #@97
    .line 469
    add-int/lit8 v2, v2, 0x1

    #@99
    goto :goto_3

    #@9a
    .line 393
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v5    # "sane":Z
    :cond_5
    const/4 v5, 0x0

    #@9b
    .restart local v5    # "sane":Z
    goto/16 :goto_1

    #@9d
    .line 410
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "endIndex":I
    .restart local v3    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@9f
    if-ne v8, v3, :cond_7

    #@a1
    .line 411
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@a3
    iget v9, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    #@a5
    if-eq v8, v9, :cond_8

    #@a7
    .line 412
    :cond_7
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@a9
    new-instance v9, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v10, "Bad chain @"

    #@b1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v9

    #@b9
    .line 413
    const-string/jumbo v10, ": middle task "

    #@bc
    .line 412
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    .line 413
    const-string/jumbo v10, " @"

    #@c7
    .line 412
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v9

    #@cb
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v9

    #@cf
    .line 414
    const-string/jumbo v10, " has bad next affiliate "

    #@d2
    .line 412
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v9

    #@d6
    .line 415
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@d8
    .line 412
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v9

    #@dc
    .line 415
    const-string/jumbo v10, " id "

    #@df
    .line 412
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v9

    #@e3
    .line 415
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@e5
    .line 412
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v9

    #@e9
    .line 416
    const-string/jumbo v10, ", expected "

    #@ec
    .line 412
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v9

    #@f4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v9

    #@f8
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@fb
    .line 417
    const/4 v5, 0x0

    #@fc
    .line 418
    goto/16 :goto_2

    #@fe
    .line 421
    :cond_8
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@100
    if-ne v8, v10, :cond_9

    #@102
    .line 423
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@104
    if-eqz v8, :cond_3

    #@106
    .line 424
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@108
    new-instance v9, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v10, "Bad chain @"

    #@110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v9

    #@114
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@117
    move-result-object v9

    #@118
    .line 425
    const-string/jumbo v10, ": last task "

    #@11b
    .line 424
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v9

    #@11f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v9

    #@123
    .line 425
    const-string/jumbo v10, " has previous affiliate "

    #@126
    .line 424
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v9

    #@12a
    .line 426
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@12c
    .line 424
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v9

    #@130
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v9

    #@134
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@137
    .line 427
    const/4 v5, 0x0

    #@138
    goto/16 :goto_2

    #@13a
    .line 433
    :cond_9
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@13c
    if-nez v8, :cond_a

    #@13e
    .line 434
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@140
    new-instance v9, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v10, "Bad chain @"

    #@148
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v9

    #@14c
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v9

    #@150
    .line 435
    const-string/jumbo v10, ": task "

    #@153
    .line 434
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v9

    #@157
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v9

    #@15b
    .line 435
    const-string/jumbo v10, " has previous affiliate "

    #@15e
    .line 434
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v9

    #@162
    .line 436
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@164
    .line 434
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v9

    #@168
    .line 436
    const-string/jumbo v10, " but should be id "

    #@16b
    .line 434
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v9

    #@16f
    .line 437
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@171
    .line 434
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v9

    #@175
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v9

    #@179
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@17c
    .line 438
    const/4 v5, 0x0

    #@17d
    .line 439
    goto/16 :goto_2

    #@17f
    .line 442
    :cond_a
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@181
    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@183
    if-eq v8, v9, :cond_b

    #@185
    .line 443
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@187
    new-instance v9, Ljava/lang/StringBuilder;

    #@189
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18c
    const-string/jumbo v10, "Bad chain @"

    #@18f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v9

    #@193
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@196
    move-result-object v9

    #@197
    .line 444
    const-string/jumbo v10, ": task "

    #@19a
    .line 443
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v9

    #@19e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v9

    #@1a2
    .line 444
    const-string/jumbo v10, " has affiliated id "

    #@1a5
    .line 443
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v9

    #@1a9
    .line 445
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@1ab
    .line 443
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v9

    #@1af
    .line 445
    const-string/jumbo v10, " but should be "

    #@1b2
    .line 443
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v9

    #@1b6
    .line 446
    iget v10, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@1b8
    .line 443
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v9

    #@1bc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bf
    move-result-object v9

    #@1c0
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1c3
    .line 447
    const/4 v5, 0x0

    #@1c4
    .line 448
    goto/16 :goto_2

    #@1c6
    .line 450
    :cond_b
    move-object v3, v0

    #@1c7
    .line 451
    add-int/lit8 v1, v1, 0x1

    #@1c9
    .line 452
    if-lt v1, v4, :cond_1

    #@1cb
    .line 453
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@1cd
    new-instance v9, Ljava/lang/StringBuilder;

    #@1cf
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1d2
    const-string/jumbo v10, "Bad chain ran off index "

    #@1d5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v9

    #@1d9
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v9

    #@1dd
    .line 454
    const-string/jumbo v10, ": last task "

    #@1e0
    .line 453
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v9

    #@1e4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v9

    #@1e8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v9

    #@1ec
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1ef
    .line 455
    const/4 v5, 0x0

    #@1f0
    .line 456
    goto/16 :goto_2

    #@1f2
    .line 477
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "i":I
    :cond_c
    const/4 v8, 0x1

    #@1f3
    return v8

    #@1f4
    .line 481
    .end local v2    # "i":I
    :cond_d
    return v11
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 12
    .param p1, "start"    # I

    #@0
    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@6
    .line 709
    .local v6, "startTask":Lcom/android/server/am/TaskRecord;
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@8
    .line 712
    .local v0, "affiliateId":I
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@a
    if-ne v9, v0, :cond_0

    #@c
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@e
    if-nez v9, :cond_0

    #@10
    .line 713
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@12
    if-nez v9, :cond_0

    #@14
    .line 717
    const/4 v9, 0x1

    #@15
    iput-boolean v9, v6, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@17
    .line 718
    add-int/lit8 v9, p1, 0x1

    #@19
    return v9

    #@1a
    .line 722
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@1f
    .line 723
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@22
    move-result v9

    #@23
    add-int/lit8 v2, v9, -0x1

    #@25
    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_2

    #@27
    .line 724
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v7

    #@2b
    check-cast v7, Lcom/android/server/am/TaskRecord;

    #@2d
    .line 725
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@2f
    if-ne v9, v0, :cond_1

    #@31
    .line 726
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@34
    .line 727
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 723
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 733
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@3e
    sget-object v10, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    #@40
    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@43
    .line 737
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@45
    const/4 v10, 0x0

    #@46
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@4c
    .line 738
    .local v1, "first":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    #@4d
    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@4f
    .line 739
    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@51
    if-eqz v9, :cond_3

    #@53
    .line 740
    sget-object v9, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@55
    new-instance v10, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v11, "Link error 1 first.next="

    #@5d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v10

    #@61
    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@63
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v10

    #@67
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v10

    #@6b
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 741
    const/4 v9, 0x0

    #@6f
    invoke-virtual {v1, v9}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@72
    .line 742
    const/4 v9, 0x0

    #@73
    invoke-virtual {p0, v1, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@76
    .line 745
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@7b
    move-result v8

    #@7c
    .line 746
    .local v8, "tmpSize":I
    const/4 v2, 0x0

    #@7d
    :goto_1
    add-int/lit8 v9, v8, -0x1

    #@7f
    if-ge v2, v9, :cond_6

    #@81
    .line 747
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@86
    move-result-object v4

    #@87
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@89
    .line 748
    .local v4, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@8b
    add-int/lit8 v10, v2, 0x1

    #@8d
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v5

    #@91
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@93
    .line 749
    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@95
    if-eq v9, v5, :cond_4

    #@97
    .line 750
    sget-object v9, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@99
    new-instance v10, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v11, "Link error 2 next="

    #@a1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v10

    #@a5
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v10

    #@a9
    const-string/jumbo v11, " prev="

    #@ac
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v10

    #@b0
    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@b2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v10

    #@b6
    .line 751
    const-string/jumbo v11, " setting prev="

    #@b9
    .line 750
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v10

    #@bd
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v10

    #@c1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v10

    #@c5
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 752
    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@cb
    .line 753
    const/4 v9, 0x0

    #@cc
    invoke-virtual {p0, v4, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@cf
    .line 755
    :cond_4
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@d1
    if-eq v9, v4, :cond_5

    #@d3
    .line 756
    sget-object v9, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@d5
    new-instance v10, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v11, "Link error 3 prev="

    #@dd
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v10

    #@e1
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v10

    #@e5
    const-string/jumbo v11, " next="

    #@e8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v10

    #@ec
    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@ee
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v10

    #@f2
    .line 757
    const-string/jumbo v11, " setting next="

    #@f5
    .line 756
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v10

    #@f9
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v10

    #@fd
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v10

    #@101
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@104
    .line 758
    invoke-virtual {v5, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@107
    .line 759
    const/4 v9, 0x0

    #@108
    invoke-virtual {p0, v5, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@10b
    .line 761
    :cond_5
    const/4 v9, 0x1

    #@10c
    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@10e
    .line 746
    add-int/lit8 v2, v2, 0x1

    #@110
    goto/16 :goto_1

    #@112
    .line 764
    .end local v4    # "next":Lcom/android/server/am/TaskRecord;
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@114
    add-int/lit8 v10, v8, -0x1

    #@116
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@119
    move-result-object v3

    #@11a
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@11c
    .line 765
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@11e
    if-eqz v9, :cond_7

    #@120
    .line 766
    sget-object v9, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@122
    new-instance v10, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v11, "Link error 4 last.prev="

    #@12a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v10

    #@12e
    iget-object v11, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@130
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v10

    #@134
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v10

    #@138
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    .line 767
    const/4 v9, 0x0

    #@13c
    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@13f
    .line 768
    const/4 v9, 0x0

    #@140
    invoke-virtual {p0, v3, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@143
    .line 772
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@145
    invoke-virtual {p0, p1, v9}, Lcom/android/server/am/RecentTasks;->addAll(ILjava/util/Collection;)Z

    #@148
    .line 773
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@14a
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@14d
    .line 776
    add-int v9, p1, v8

    #@14f
    return v9
.end method

.method private syncPersistentTaskIdsLocked()V
    .locals 6

    #@0
    .prologue
    .line 141
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v0, v3, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 142
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@f
    move-result v2

    #@10
    .line 143
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@12
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 146
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Landroid/util/SparseBooleanArray;

    #@20
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    #@23
    .line 141
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_0

    #@26
    .line 149
    .end local v2    # "userId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@29
    move-result v3

    #@2a
    add-int/lit8 v0, v3, -0x1

    #@2c
    :goto_1
    if-ltz v0, :cond_5

    #@2e
    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@34
    .line 151
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v3, v1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@36
    if-eqz v3, :cond_2

    #@38
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3a
    if-eqz v3, :cond_3

    #@3c
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3e
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_3

    #@44
    .line 149
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@46
    goto :goto_1

    #@47
    .line 154
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@49
    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    #@4b
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v3

    #@4f
    if-nez v3, :cond_4

    #@51
    .line 155
    sget-object v3, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@53
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "No task ids found for userId "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    iget v5, v1, Lcom/android/server/am/TaskRecord;->userId:I

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    const-string/jumbo v5, ". task="

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    .line 156
    const-string/jumbo v5, " mPersistedTaskIds="

    #@73
    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    .line 156
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@79
    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 157
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@86
    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    #@88
    new-instance v5, Landroid/util/SparseBooleanArray;

    #@8a
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    #@8d
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@90
    .line 159
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@92
    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    #@94
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@97
    move-result-object v3

    #@98
    check-cast v3, Landroid/util/SparseBooleanArray;

    #@9a
    iget v4, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@9c
    const/4 v5, 0x1

    #@9d
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@a0
    goto :goto_2

    #@a1
    .line 140
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return-void
.end method

.method private unloadUserRecentsLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 212
    sget-object v0, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Unloading recents for user "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " from memory."

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 213
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@2a
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@2d
    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->removeTasksForUserLocked(I)V

    #@30
    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method final addLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v10, -0x1

    #@2
    const/4 v11, 0x0

    #@3
    .line 485
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@5
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@7
    if-ne v8, v9, :cond_0

    #@9
    .line 486
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@b
    if-eq v8, v10, :cond_1

    #@d
    .line 485
    :cond_0
    const/4 v0, 0x1

    #@e
    .line 489
    .local v0, "isAffiliated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@11
    move-result v5

    #@12
    .line 493
    .local v5, "recentsCount":I
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@14
    if-eqz v8, :cond_3

    #@16
    .line 496
    return-void

    #@17
    .line 487
    .end local v0    # "isAffiliated":Z
    .end local v5    # "recentsCount":I
    :cond_1
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@19
    if-eq v8, v10, :cond_2

    #@1b
    const/4 v0, 0x1

    #@1c
    .restart local v0    # "isAffiliated":Z
    goto :goto_0

    #@1d
    .end local v0    # "isAffiliated":Z
    :cond_2
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "isAffiliated":Z
    goto :goto_0

    #@1f
    .line 499
    .restart local v5    # "recentsCount":I
    :cond_3
    if-nez v0, :cond_4

    #@21
    if-lez v5, :cond_4

    #@23
    invoke-virtual {p0, v11}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v8

    #@27
    if-ne v8, p1, :cond_4

    #@29
    .line 501
    return-void

    #@2a
    .line 505
    :cond_4
    if-eqz v0, :cond_5

    #@2c
    if-lez v5, :cond_5

    #@2e
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@30
    if-eqz v8, :cond_5

    #@32
    .line 506
    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@34
    invoke-virtual {p0, v11}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v8

    #@38
    check-cast v8, Lcom/android/server/am/TaskRecord;

    #@3a
    iget v8, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@3c
    if-ne v9, v8, :cond_5

    #@3e
    .line 509
    return-void

    #@3f
    .line 512
    :cond_5
    const/4 v2, 0x0

    #@40
    .line 516
    .local v2, "needAffiliationFix":Z
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@42
    if-eqz v8, :cond_8

    #@44
    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    #@47
    move-result v6

    #@48
    .line 518
    .local v6, "taskIndex":I
    if-ltz v6, :cond_9

    #@4a
    .line 519
    if-eqz v0, :cond_6

    #@4c
    .line 529
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_7

    #@52
    .line 531
    return-void

    #@53
    .line 521
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@56
    .line 522
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    #@59
    .line 523
    invoke-virtual {p0, p1, v11}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@5c
    .line 526
    return-void

    #@5d
    .line 536
    :cond_7
    const/4 v2, 0x1

    #@5e
    .line 545
    .end local v6    # "taskIndex":I
    :cond_8
    :goto_1
    invoke-virtual {p0, p1, v12}, Lcom/android/server/am/RecentTasks;->trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I

    #@61
    .line 547
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@64
    move-result v5

    #@65
    .line 548
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    #@68
    move-result v1

    #@69
    .line 549
    .local v1, "maxRecents":I
    :goto_2
    if-lt v5, v1, :cond_a

    #@6b
    .line 550
    add-int/lit8 v8, v5, -0x1

    #@6d
    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@70
    move-result-object v7

    #@71
    check-cast v7, Lcom/android/server/am/TaskRecord;

    #@73
    .line 551
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@76
    .line 552
    add-int/lit8 v5, v5, -0x1

    #@78
    goto :goto_2

    #@79
    .line 539
    .end local v1    # "maxRecents":I
    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskIndex":I
    :cond_9
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@7b
    new-instance v9, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v10, "Task with inRecent not in recents: "

    #@83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v9

    #@8f
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 540
    const/4 v2, 0x1

    #@93
    goto :goto_1

    #@94
    .line 554
    .end local v6    # "taskIndex":I
    .restart local v1    # "maxRecents":I
    :cond_a
    iput-boolean v12, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@96
    .line 555
    if-eqz v0, :cond_b

    #@98
    if-eqz v2, :cond_e

    #@9a
    .line 558
    :cond_b
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    #@9d
    .line 606
    :cond_c
    :goto_3
    if-eqz v2, :cond_d

    #@9f
    .line 608
    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@a1
    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    #@a4
    .line 484
    :cond_d
    return-void

    #@a5
    .line 560
    :cond_e
    if-eqz v0, :cond_c

    #@a7
    .line 563
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@a9
    .line 564
    .local v3, "other":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_f

    #@ab
    .line 565
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@ad
    .line 567
    :cond_f
    if-eqz v3, :cond_13

    #@af
    .line 568
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    #@b2
    move-result v4

    #@b3
    .line 569
    .local v4, "otherIndex":I
    if-ltz v4, :cond_12

    #@b5
    .line 572
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@b7
    if-ne v3, v8, :cond_10

    #@b9
    .line 575
    add-int/lit8 v6, v4, 0x1

    #@bb
    .line 583
    .restart local v6    # "taskIndex":I
    :goto_4
    invoke-virtual {p0, v6, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    #@be
    .line 586
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    #@c1
    move-result v8

    #@c2
    if-eqz v8, :cond_11

    #@c4
    .line 588
    return-void

    #@c5
    .line 579
    .end local v6    # "taskIndex":I
    :cond_10
    move v6, v4

    #@c6
    .restart local v6    # "taskIndex":I
    goto :goto_4

    #@c7
    .line 593
    :cond_11
    const/4 v2, 0x1

    #@c8
    goto :goto_3

    #@c9
    .line 597
    .end local v6    # "taskIndex":I
    :cond_12
    const/4 v2, 0x1

    #@ca
    goto :goto_3

    #@cb
    .line 602
    .end local v4    # "otherIndex":I
    :cond_13
    const/4 v2, 0x1

    #@cc
    goto :goto_3
.end method

.method cleanupLocked(I)V
    .locals 12
    .param p1, "userId"    # I

    #@0
    .prologue
    const/high16 v11, 0x800000

    #@2
    const/4 v10, 0x0

    #@3
    .line 280
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@6
    move-result v5

    #@7
    .line 281
    .local v5, "recentsCount":I
    if-nez v5, :cond_0

    #@9
    .line 284
    return-void

    #@a
    .line 287
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@d
    move-result-object v4

    #@e
    .line 288
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    add-int/lit8 v3, v5, -0x1

    #@10
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_d

    #@12
    .line 289
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v6

    #@16
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@18
    .line 290
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    const/4 v7, -0x1

    #@19
    if-eq p1, v7, :cond_2

    #@1b
    iget v7, v6, Lcom/android/server/am/TaskRecord;->userId:I

    #@1d
    if-eq v7, p1, :cond_2

    #@1f
    .line 288
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@21
    goto :goto_0

    #@22
    .line 294
    :cond_2
    iget-boolean v7, v6, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@24
    if-eqz v7, :cond_3

    #@26
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@29
    move-result-object v7

    #@2a
    if-nez v7, :cond_3

    #@2c
    .line 296
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@2f
    .line 297
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@32
    .line 298
    sget-object v7, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@34
    new-instance v8, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v9, "Removing auto-remove without activity: "

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    goto :goto_1

    #@4c
    .line 302
    :cond_3
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@4e
    if-eqz v7, :cond_1

    #@50
    .line 303
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    #@52
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@54
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Landroid/content/pm/ActivityInfo;

    #@5a
    .line 304
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_5

    #@5c
    .line 309
    :try_start_0
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@5e
    .line 310
    const/high16 v8, 0x10000000

    #@60
    .line 309
    invoke-interface {v4, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@63
    move-result-object v0

    #@64
    .line 315
    if-nez v0, :cond_4

    #@66
    .line 316
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpActivityInfo:Landroid/content/pm/ActivityInfo;

    #@68
    .line 318
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    #@6a
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@6c
    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 320
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpActivityInfo:Landroid/content/pm/ActivityInfo;

    #@71
    if-ne v0, v7, :cond_a

    #@73
    .line 324
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    #@75
    .line 325
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@77
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7a
    move-result-object v8

    #@7b
    .line 324
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    #@81
    .line 326
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_7

    #@83
    .line 328
    :try_start_1
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@85
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    .line 329
    const/16 v8, 0x2000

    #@8b
    .line 328
    invoke-interface {v4, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@8e
    move-result-object v1

    #@8f
    .line 334
    if-nez v1, :cond_6

    #@91
    .line 335
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAppInfo:Landroid/content/pm/ApplicationInfo;

    #@93
    .line 337
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    #@95
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@97
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 339
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAppInfo:Landroid/content/pm/ApplicationInfo;

    #@a0
    if-eq v1, v7, :cond_8

    #@a2
    .line 340
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a4
    and-int/2addr v7, v11

    #@a5
    if-nez v7, :cond_9

    #@a7
    .line 342
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@aa
    .line 343
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@ad
    .line 344
    sget-object v7, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@af
    new-instance v8, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v9, "Removing no longer valid recent: "

    #@b7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v8

    #@bb
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v8

    #@bf
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v8

    #@c3
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    goto/16 :goto_1

    #@c8
    .line 350
    :cond_9
    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@ca
    goto/16 :goto_1

    #@cc
    .line 353
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_a
    iget-boolean v7, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    #@ce
    if-eqz v7, :cond_b

    #@d0
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d2
    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@d4
    if-eqz v7, :cond_b

    #@d6
    .line 354
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d8
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    #@da
    and-int/2addr v7, v11

    #@db
    if-nez v7, :cond_c

    #@dd
    .line 363
    :cond_b
    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@df
    goto/16 :goto_1

    #@e1
    .line 367
    :cond_c
    const/4 v7, 0x1

    #@e2
    iput-boolean v7, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@e4
    goto/16 :goto_1

    #@e6
    .line 374
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d
    const/4 v3, 0x0

    #@e7
    .line 375
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@ea
    move-result v5

    #@eb
    .line 376
    :goto_2
    if-ge v3, v5, :cond_e

    #@ed
    .line 377
    invoke-direct {p0, v3}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    #@f0
    move-result v3

    #@f1
    goto :goto_2

    #@f2
    .line 279
    :cond_e
    return-void

    #@f3
    .line 330
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    :catch_0
    move-exception v2

    #@f4
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@f6
    .line 311
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@f7
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method flush()V
    .locals 2

    #@0
    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 184
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 183
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@d
    .line 186
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@f
    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->flush()V

    #@12
    .line 182
    return-void

    #@13
    .line 183
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@18
    throw v0
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method loadUserRecentsLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    #@b
    .line 110
    sget-object v0, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Loading recents for user "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, " into memory."

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 111
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@2d
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(I)Ljava/util/List;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->addAll(Ljava/util/Collection;)Z

    #@34
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    #@37
    .line 113
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@39
    const/4 v1, 0x1

    #@3a
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@3d
    .line 106
    :cond_0
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    #@0
    .prologue
    .line 132
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@8
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 134
    return-void

    #@f
    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    #@12
    .line 137
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@14
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    #@17
    .line 131
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 260
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    #@4
    move-result-object v1

    #@5
    .line 261
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v0, v3, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@d
    .line 262
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@13
    .line 263
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 264
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@19
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    .line 263
    if-eqz v3, :cond_0

    #@23
    .line 265
    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    #@25
    if-ne v3, p3, :cond_0

    #@27
    .line 266
    iget-boolean v3, v2, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    #@29
    if-eq v3, p2, :cond_0

    #@2b
    .line 267
    iput-boolean p2, v2, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    #@2d
    .line 268
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@30
    .line 261
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@32
    goto :goto_0

    #@33
    .line 259
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    return-void
.end method

.method onSystemReadyLocked()V
    .locals 1

    #@0
    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->clear()V

    #@3
    .line 167
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@5
    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->startPersisting()V

    #@8
    .line 165
    return-void
.end method

.method removeTasksForUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 243
    if-gtz p1, :cond_0

    #@2
    .line 244
    sget-object v2, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Can\'t remove recent task on user "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 245
    return-void

    #@1c
    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@1f
    move-result v2

    #@20
    add-int/lit8 v0, v2, -0x1

    #@22
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@24
    .line 249
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@2a
    .line 250
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    #@2c
    if-ne v2, p1, :cond_1

    #@2e
    .line 253
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@31
    .line 254
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@34
    .line 248
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@36
    goto :goto_0

    #@37
    .line 242
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    #@5
    .line 178
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@3
    move-result v1

    #@4
    .line 232
    .local v1, "recentsCount":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 233
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@d
    .line 234
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@f
    if-ne v3, p1, :cond_0

    #@11
    .line 235
    return-object v2

    #@12
    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 238
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v3, 0x0

    #@16
    return-object v3
.end method

.method taskIdTakenForUserLocked(II)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p2}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    #@3
    .line 128
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/util/SparseBooleanArray;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I
    .locals 17
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "doTrim"    # Z

    #@0
    .prologue
    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@3
    move-result v8

    #@4
    .line 618
    .local v8, "recentsCount":I
    move-object/from16 v0, p1

    #@6
    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@8
    .line 619
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_1

    #@a
    invoke-virtual {v5}, Landroid/content/Intent;->isDocument()Z

    #@d
    move-result v2

    #@e
    .line 620
    :goto_0
    move-object/from16 v0, p1

    #@10
    iget v15, v0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    #@12
    add-int/lit8 v6, v15, -0x1

    #@14
    .line 621
    .local v6, "maxRecents":I
    const/4 v4, 0x0

    #@15
    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_12

    #@17
    .line 622
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v4}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v12

    #@1d
    check-cast v12, Lcom/android/server/am/TaskRecord;

    #@1f
    .line 623
    .local v12, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    #@21
    if-eq v0, v12, :cond_6

    #@23
    .line 624
    move-object/from16 v0, p1

    #@25
    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@27
    if-eqz v15, :cond_2

    #@29
    iget-object v15, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2b
    if-eqz v15, :cond_2

    #@2d
    move-object/from16 v0, p1

    #@2f
    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@31
    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@33
    move-object/from16 v16, v0

    #@35
    move-object/from16 v0, v16

    #@37
    if-eq v15, v0, :cond_2

    #@39
    .line 621
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 619
    .end local v4    # "i":I
    .end local v6    # "maxRecents":I
    .end local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    #@3d
    .local v2, "document":Z
    goto :goto_0

    #@3e
    .line 627
    .end local v2    # "document":Z
    .restart local v4    # "i":I
    .restart local v6    # "maxRecents":I
    .restart local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object/from16 v0, p1

    #@40
    iget v15, v0, Lcom/android/server/am/TaskRecord;->userId:I

    #@42
    iget v0, v12, Lcom/android/server/am/TaskRecord;->userId:I

    #@44
    move/from16 v16, v0

    #@46
    move/from16 v0, v16

    #@48
    if-ne v15, v0, :cond_0

    #@4a
    .line 630
    const/4 v15, 0x3

    #@4b
    if-le v4, v15, :cond_3

    #@4d
    .line 631
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->freeLastThumbnail()V

    #@50
    .line 633
    :cond_3
    iget-object v13, v12, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@52
    .line 635
    .local v13, "trIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    #@54
    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@56
    if-eqz v15, :cond_7

    #@58
    move-object/from16 v0, p1

    #@5a
    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@5c
    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@5e
    move-object/from16 v16, v0

    #@60
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v10

    #@64
    .line 636
    :goto_3
    if-eqz v5, :cond_8

    #@66
    invoke-virtual {v5, v13}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@69
    move-result v11

    #@6a
    .line 637
    :goto_4
    const/4 v7, 0x0

    #@6b
    .line 638
    .local v7, "multiTasksAllowed":Z
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    #@6e
    move-result v3

    #@6f
    .line 639
    .local v3, "flags":I
    const/high16 v15, 0x10080000

    #@71
    and-int/2addr v15, v3

    #@72
    if-eqz v15, :cond_4

    #@74
    .line 640
    const/high16 v15, 0x8000000

    #@76
    and-int/2addr v15, v3

    #@77
    if-eqz v15, :cond_4

    #@79
    .line 641
    const/4 v7, 0x1

    #@7a
    .line 643
    :cond_4
    if-eqz v13, :cond_9

    #@7c
    invoke-virtual {v13}, Landroid/content/Intent;->isDocument()Z

    #@7f
    move-result v14

    #@80
    .line 644
    :goto_5
    if-eqz v2, :cond_a

    #@82
    move v1, v14

    #@83
    .line 645
    :goto_6
    if-nez v10, :cond_5

    #@85
    if-eqz v11, :cond_b

    #@87
    .line 649
    :cond_5
    :goto_7
    if-eqz v1, :cond_e

    #@89
    .line 651
    move-object/from16 v0, p1

    #@8b
    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@8d
    if-eqz v15, :cond_c

    #@8f
    .line 652
    iget-object v15, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@91
    if-eqz v15, :cond_c

    #@93
    .line 653
    move-object/from16 v0, p1

    #@95
    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@97
    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@99
    move-object/from16 v16, v0

    #@9b
    invoke-virtual/range {v15 .. v16}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v9

    #@9f
    .line 656
    .local v9, "sameActivity":Z
    :goto_8
    if-eqz v9, :cond_0

    #@a1
    if-eqz v11, :cond_0

    #@a3
    if-nez v7, :cond_0

    #@a5
    .line 659
    if-lez v6, :cond_6

    #@a7
    if-eqz p2, :cond_d

    #@a9
    .line 671
    .end local v3    # "flags":I
    .end local v7    # "multiTasksAllowed":Z
    .end local v9    # "sameActivity":Z
    .end local v13    # "trIntent":Landroid/content/Intent;
    :cond_6
    if-nez p2, :cond_f

    #@ab
    .line 674
    return v4

    #@ac
    .line 635
    .restart local v13    # "trIntent":Landroid/content/Intent;
    :cond_7
    const/4 v10, 0x0

    #@ad
    .local v10, "sameAffinity":Z
    goto :goto_3

    #@ae
    .line 636
    .end local v10    # "sameAffinity":Z
    :cond_8
    const/4 v11, 0x0

    #@af
    .local v11, "sameIntentFilter":Z
    goto :goto_4

    #@b0
    .line 643
    .end local v11    # "sameIntentFilter":Z
    .restart local v3    # "flags":I
    .restart local v7    # "multiTasksAllowed":Z
    :cond_9
    const/4 v14, 0x0

    #@b1
    .local v14, "trIsDocument":Z
    goto :goto_5

    #@b2
    .line 644
    .end local v14    # "trIsDocument":Z
    :cond_a
    const/4 v1, 0x0

    #@b3
    .local v1, "bothDocuments":Z
    goto :goto_6

    #@b4
    .line 645
    .end local v1    # "bothDocuments":Z
    :cond_b
    if-eqz v1, :cond_0

    #@b6
    goto :goto_7

    #@b7
    .line 651
    :cond_c
    const/4 v9, 0x0

    #@b8
    goto :goto_8

    #@b9
    .line 660
    .restart local v9    # "sameActivity":Z
    :cond_d
    add-int/lit8 v6, v6, -0x1

    #@bb
    .line 661
    goto/16 :goto_2

    #@bd
    .line 665
    .end local v9    # "sameActivity":Z
    :cond_e
    if-nez v2, :cond_0

    #@bf
    if-eqz v14, :cond_6

    #@c1
    goto/16 :goto_2

    #@c3
    .line 680
    .end local v3    # "flags":I
    .end local v7    # "multiTasksAllowed":Z
    .end local v13    # "trIntent":Landroid/content/Intent;
    :cond_f
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    #@c6
    .line 681
    move-object/from16 v0, p0

    #@c8
    invoke-virtual {v0, v4}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@cb
    .line 682
    move-object/from16 v0, p1

    #@cd
    if-eq v0, v12, :cond_10

    #@cf
    .line 683
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@d2
    .line 685
    :cond_10
    add-int/lit8 v4, v4, -0x1

    #@d4
    .line 686
    add-int/lit8 v8, v8, -0x1

    #@d6
    .line 687
    move-object/from16 v0, p1

    #@d8
    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@da
    if-nez v15, :cond_11

    #@dc
    .line 690
    move-object/from16 p1, v12

    #@de
    .line 692
    :cond_11
    const/4 v15, 0x0

    #@df
    move-object/from16 v0, p0

    #@e1
    invoke-virtual {v0, v12, v15}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@e4
    goto/16 :goto_2

    #@e6
    .line 695
    .end local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_12
    const/4 v15, -0x1

    #@e7
    return v15
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->unloadUserRecentsLocked(I)V

    #@3
    .line 226
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    #@8
    .line 227
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->unloadUserDataFromMemory(I)V

    #@d
    .line 224
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .locals 6

    #@0
    .prologue
    .line 195
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@5
    move-result v5

    #@6
    new-array v4, v5, [I

    #@8
    .line 196
    .local v4, "usersWithRecentsLoaded":[I
    const/4 v1, 0x0

    #@9
    .line 197
    .local v1, "len":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v5, v4

    #@b
    if-ge v0, v5, :cond_1

    #@d
    .line 198
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@f
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@12
    move-result v3

    #@13
    .line 199
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    #@15
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_0

    #@1b
    .line 200
    add-int/lit8 v2, v1, 0x1

    #@1d
    .end local v1    # "len":I
    .local v2, "len":I
    aput v3, v4, v1

    #@1f
    move v1, v2

    #@20
    .line 197
    .end local v2    # "len":I
    .restart local v1    # "len":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 203
    .end local v3    # "userId":I
    :cond_1
    array-length v5, v4

    #@24
    if-ge v1, v5, :cond_2

    #@26
    .line 205
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@29
    move-result-object v5

    #@2a
    return-object v5

    #@2b
    .line 207
    :cond_2
    return-object v4
.end method
