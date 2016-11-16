.class final Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
.super Ljava/lang/Object;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JobInstance"
.end annotation


# instance fields
.field mChangedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mChangedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final mExecuteRunner:Ljava/lang/Runnable;

.field final mJobStatus:Lcom/android/server/job/controllers/JobStatus;

.field final mMyObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeoutRunner:Ljava/lang/Runnable;

.field mTriggerPending:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ContentObserverController;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 272
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 262
    new-instance v7, Ljava/util/ArrayList;

    #@8
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v7, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    #@d
    .line 273
    iput-object p2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@f
    .line 274
    new-instance v7, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    #@11
    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    #@14
    iput-object v7, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@16
    .line 275
    new-instance v7, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    #@18
    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    #@1b
    iput-object v7, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    #@1d
    .line 276
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    #@24
    move-result-object v5

    #@25
    .line 277
    .local v5, "uris":[Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    #@28
    move-result v3

    #@29
    .line 279
    .local v3, "sourceUserId":I
    iget-object v7, p1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/util/ArrayMap;

    #@31
    .line 280
    .local v2, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    if-nez v2, :cond_0

    #@33
    .line 281
    new-instance v2, Landroid/util/ArrayMap;

    #@35
    .end local v2    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@38
    .line 282
    .restart local v2    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    iget-object v7, p1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v7, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    .line 284
    :cond_0
    if-eqz v5, :cond_3

    #@3f
    .line 285
    array-length v7, v5

    #@40
    :goto_0
    if-ge v6, v7, :cond_3

    #@42
    aget-object v4, v5, v6

    #@44
    .line 286
    .local v4, "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    #@4a
    .line 287
    .local v1, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    if-nez v1, :cond_1

    #@4c
    .line 288
    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    #@4e
    .end local v1    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v8, p1, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@50
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    #@53
    move-result v9

    #@54
    invoke-direct {v1, p1, v8, v4, v9}, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V

    #@57
    .line 289
    .restart local v1    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 290
    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    #@5d
    move-result v8

    #@5e
    and-int/lit8 v8, v8, 0x1

    #@60
    if-eqz v8, :cond_2

    #@62
    const/4 v0, 0x1

    #@63
    .line 297
    .local v0, "andDescendants":Z
    :goto_1
    iget-object v8, p1, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    #@65
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@68
    move-result-object v8

    #@69
    .line 298
    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    #@6c
    move-result-object v9

    #@6d
    .line 297
    invoke-virtual {v8, v9, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@70
    .line 311
    .end local v0    # "andDescendants":Z
    :cond_1
    iget-object v8, v1, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@72
    invoke-virtual {v8, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@75
    .line 312
    iget-object v8, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a
    .line 285
    add-int/lit8 v6, v6, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 290
    :cond_2
    const/4 v0, 0x0

    #@7e
    .restart local v0    # "andDescendants":Z
    goto :goto_1

    #@7f
    .line 272
    .end local v0    # "andDescendants":Z
    .end local v1    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v4    # "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    :cond_3
    return-void
.end method


# virtual methods
.method detachLocked()V
    .locals 6

    #@0
    .prologue
    .line 357
    iget-object v4, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 358
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 359
    iget-object v4, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    #@11
    .line 360
    .local v2, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@13
    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@16
    .line 361
    iget-object v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@18
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 365
    iget-object v4, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@20
    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@29
    .line 367
    iget-object v4, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@2b
    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    #@2d
    iget v5, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    #@2f
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/util/ArrayMap;

    #@35
    .line 368
    .local v3, "observerOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    if-eqz v3, :cond_0

    #@37
    .line 369
    iget-object v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    #@39
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 358
    .end local v3    # "observerOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 356
    .end local v2    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    :cond_1
    return-void
.end method

.method scheduleLocked()V
    .locals 4

    #@0
    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 336
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@7
    .line 337
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@9
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    #@d
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@f
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    #@12
    move-result-wide v2

    #@13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@16
    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@18
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@1a
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1f
    .line 340
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@21
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@24
    move-result v0

    #@25
    const/16 v1, 0x28

    #@27
    if-lt v0, v1, :cond_1

    #@29
    .line 342
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@2b
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@2d
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@32
    .line 334
    :goto_0
    return-void

    #@33
    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@35
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@37
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@39
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@3b
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    #@3e
    move-result-wide v2

    #@3f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@42
    goto :goto_0
.end method

.method trigger()V
    .locals 4

    #@0
    .prologue
    .line 318
    const/4 v0, 0x0

    #@1
    .line 319
    .local v0, "reportChange":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@3
    iget-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 320
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 321
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@c
    const/4 v3, 0x1

    #@d
    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 322
    const/4 v0, 0x1

    #@14
    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit v2

    #@18
    .line 329
    if-eqz v0, :cond_2

    #@1a
    .line 330
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@1c
    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@1e
    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@21
    .line 317
    :cond_2
    return-void

    #@22
    .line 319
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method unscheduleLocked()V
    .locals 2

    #@0
    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 350
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@6
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@8
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@d
    .line 351
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@f
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@11
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@16
    .line 352
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@19
    .line 348
    :cond_0
    return-void
.end method
