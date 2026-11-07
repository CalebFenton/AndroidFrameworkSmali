.class public Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
.super Ljava/lang/Object;
.source "TaskRunnerImpl.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/task/TaskRunner;


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;,
        Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist sCleaners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDidOneTimeInitialization:Z

.field private volatile blacklist mNativeTaskRunnerAndroid:J

.field private blacklist mPreNativeDelayedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPreNativeTaskLock:Ljava/lang/Object;

.field private blacklist mPreNativeTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRunPreNativeTaskClosure:Ljava/lang/Runnable;

.field private final blacklist mTaskRunnerType:I

.field private final blacklist mTaskTraits:I

.field private final blacklist mTraceEvent:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativeTaskRunnerAndroid(Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsQueue()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->sQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    nop

    .line 37
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->sQueue:Ljava/lang/ref/ReferenceQueue;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->sCleaners:Ljava/util/Set;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "traits"    # I

    .line 127
    const-string v0, "TaskRunnerImpl"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;-><init>(ILjava/lang/String;I)V

    .line 128
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->destroyGarbageCollectedTaskRunners()V

    .line 129
    return-void
.end method

.method protected constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 6
    .param p1, "traits"    # I
    .param p2, "traceCategory"    # Ljava/lang/String;
    .param p3, "taskRunnerType"    # I

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mRunPreNativeTaskClosure:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    .line 139
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mTaskTraits:I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PreNativeTask.run"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mTraceEvent:Ljava/lang/String;

    .line 141
    iput p3, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mTaskRunnerType:I

    .line 142
    return-void
.end method

.method private static blacklist destroyGarbageCollectedTaskRunners()V
    .registers 3

    .line 114
    nop

    :goto_1
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->sQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;

    .line 115
    .local v0, "cleaner":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;
    if-nez v0, :cond_c

    return-void

    .line 116
    :cond_c
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;->destroy()V

    .line 117
    sget-object v1, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->sCleaners:Ljava/util/Set;

    monitor-enter v1

    .line 118
    :try_start_12
    sget-object v2, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->sCleaners:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v1

    .line 120
    .end local v0    # "cleaner":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;
    goto :goto_1

    .line 119
    .restart local v0    # "cleaner":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private blacklist oneTimeInitialization()V
    .registers 2

    .line 185
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mDidOneTimeInitialization:Z

    if-eqz v0, :cond_5

    return-void

    .line 186
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mDidOneTimeInitialization:Z

    .line 187
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->registerPreNativeTaskRunner(Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 188
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->initNativeTaskRunner()V

    goto :goto_20

    .line 190
    :cond_12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    .line 193
    :goto_20
    return-void
.end method


# virtual methods
.method blacklist clearTaskQueueForTesting()I
    .registers 5

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "taskCount":I
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_4
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    if-eqz v2, :cond_20

    .line 71
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v0, v2, v3

    .line 72
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 73
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 75
    :cond_20
    monitor-exit v1

    .line 76
    return v0

    .line 75
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public final whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 146
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->postDelayedTask(Ljava/lang/Runnable;J)V

    .line 147
    return-void
.end method

.method blacklist initNativeTaskRunner()V
    .registers 12

    .line 239
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->get()Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mTaskRunnerType:I

    iget v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mTaskTraits:I

    invoke-interface {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;->init(II)J

    move-result-wide v4

    .line 240
    .local v4, "nativeTaskRunnerAndroid":J
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_f
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 242
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Runnable;

    .line 243
    .local v6, "task":Ljava/lang/Runnable;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->get()Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v3

    .line 245
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 244
    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v9}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;->postDelayedTask(JLjava/lang/Runnable;JLjava/lang/String;)V

    .line 246
    .end local v6    # "task":Ljava/lang/Runnable;
    goto :goto_1a

    .line 247
    :cond_39
    iput-object v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    .line 249
    :cond_3b
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    if-eqz v0, :cond_70

    .line 250
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    move-object v10, v3

    .line 251
    .local v10, "task":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Long;>;"
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->get()Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v3

    iget-object v6, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Runnable;

    iget-object v7, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 255
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 256
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 252
    invoke-interface/range {v3 .. v9}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;->postDelayedTask(JLjava/lang/Runnable;JLjava/lang/String;)V

    .line 257
    .end local v10    # "task":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Long;>;"
    goto :goto_45

    .line 258
    :cond_6e
    iput-object v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    .line 263
    :cond_70
    nop

    .line 264
    iput-wide v4, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    .line 265
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_f .. :try_end_74} :catchall_89

    .line 266
    sget-object v2, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->sCleaners:Ljava/util/Set;

    monitor-enter v2

    .line 267
    :try_start_77
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->sCleaners:Ljava/util/Set;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;-><init>(Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_86

    .line 273
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->destroyGarbageCollectedTaskRunners()V

    .line 274
    return-void

    .line 268
    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0

    .line 265
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0
.end method

.method public final blacklist postDelayedTask(Ljava/lang/Runnable;J)V
    .registers 11
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 151
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    if-eqz v0, :cond_f

    .line 152
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;-><init>()V

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->populateTaskOrigin(Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    move-object v3, p1

    goto :goto_10

    .line 151
    :cond_f
    move-object v3, p1

    .line 155
    .end local p1    # "task":Ljava/lang/Runnable;
    .local v3, "task":Ljava/lang/Runnable;
    :goto_10
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2c

    .line 156
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->get()Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 157
    move-wide v4, p2

    .end local p2    # "delay":J
    .local v4, "delay":J
    invoke-interface/range {v0 .. v6}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;->postDelayedTask(JLjava/lang/Runnable;JLjava/lang/String;)V

    .line 159
    move-wide p1, v4

    .end local v4    # "delay":J
    .local p1, "delay":J
    return-void

    .line 161
    .end local p1    # "delay":J
    .restart local p2    # "delay":J
    :cond_2c
    move-wide p1, p2

    .end local p2    # "delay":J
    .restart local p1    # "delay":J
    iget-object p3, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    monitor-enter p3

    .line 162
    :try_start_30
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->oneTimeInitialization()V

    .line 163
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_50

    .line 164
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->get()Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    .line 166
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_73

    .line 165
    move-wide v4, p1

    .end local p1    # "delay":J
    .restart local v4    # "delay":J
    :try_start_48
    invoke-interface/range {v0 .. v6}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;->postDelayedTask(JLjava/lang/Runnable;JLjava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4d

    .line 167
    .end local v4    # "delay":J
    .restart local p1    # "delay":J
    :try_start_4b
    monitor-exit p3

    return-void

    .line 180
    .end local p1    # "delay":J
    .restart local v4    # "delay":J
    :catchall_4d
    move-exception v0

    move-wide p1, v4

    .end local v4    # "delay":J
    .restart local p1    # "delay":J
    goto :goto_74

    .line 173
    :cond_50
    cmp-long v0, p1, v4

    if-nez v0, :cond_5d

    .line 174
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->schedulePreNativeTask()V

    goto :goto_71

    .line 176
    :cond_5d
    invoke-virtual {p0, v3, p1, p2}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->schedulePreNativeDelayedTask(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_71

    .line 177
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .local v0, "preNativeDelayedTask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Long;>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v0    # "preNativeDelayedTask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Long;>;"
    :cond_71
    :goto_71
    monitor-exit p3

    .line 181
    return-void

    .line 180
    :catchall_73
    move-exception v0

    :goto_74
    monitor-exit p3
    :try_end_75
    .catchall {:try_start_4b .. :try_end_75} :catchall_73

    throw v0
.end method

.method protected blacklist runPreNativeTask()V
    .registers 4

    .line 217
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mTraceEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 219
    .local v0, "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_29

    .line 220
    :try_start_9
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    if-nez v2, :cond_14

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_26

    .line 231
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 220
    :cond_13
    return-void

    .line 221
    :cond_14
    :try_start_14
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 222
    .local v2, "task":Ljava/lang/Runnable;
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_26

    .line 230
    :try_start_1d
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_29

    .line 231
    .end local v2    # "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 232
    .end local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_25
    return-void

    .line 222
    .restart local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    .end local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
    :try_start_28
    throw v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 217
    .restart local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
    :catchall_29
    move-exception v1

    if-eqz v0, :cond_34

    :try_start_2c
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw v1
.end method

.method protected blacklist schedulePreNativeDelayedTask(Ljava/lang/Runnable;J)Z
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist schedulePreNativeTask()V
    .registers 3

    .line 200
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->getPrenativeThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->mRunPreNativeTaskClosure:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method
