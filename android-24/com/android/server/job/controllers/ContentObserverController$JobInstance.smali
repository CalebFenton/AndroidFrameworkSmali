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
    .locals 8
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ContentObserverController;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 261
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 252
    new-instance v5, Ljava/util/ArrayList;

    #@8
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v5, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    #@d
    .line 262
    iput-object p2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    #@f
    .line 263
    new-instance v5, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    #@11
    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    #@14
    iput-object v5, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@16
    .line 264
    new-instance v5, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    #@18
    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    #@1b
    iput-object v5, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    #@1d
    .line 265
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    #@24
    move-result-object v3

    #@25
    .line 266
    .local v3, "uris":[Landroid/app/job/JobInfo$TriggerContentUri;
    if-eqz v3, :cond_2

    #@27
    .line 267
    array-length v5, v3

    #@28
    :goto_0
    if-ge v4, v5, :cond_2

    #@2a
    aget-object v2, v3, v4

    #@2c
    .line 268
    .local v2, "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    iget-object v6, p1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/ArrayMap;

    #@2e
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    #@34
    .line 269
    .local v1, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    if-nez v1, :cond_0

    #@36
    .line 270
    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    #@38
    .end local v1    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v6, p1, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@3a
    invoke-direct {v1, p1, v6, v2}, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;)V

    #@3d
    .line 271
    .restart local v1    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v6, p1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/ArrayMap;

    #@3f
    invoke-virtual {v6, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 272
    invoke-virtual {v2}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    #@45
    move-result v6

    #@46
    and-int/lit8 v6, v6, 0x1

    #@48
    if-eqz v6, :cond_1

    #@4a
    const/4 v0, 0x1

    #@4b
    .line 278
    .local v0, "andDescendants":Z
    :goto_1
    iget-object v6, p1, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v6

    #@51
    .line 279
    invoke-virtual {v2}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    #@54
    move-result-object v7

    #@55
    .line 278
    invoke-virtual {v6, v7, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@58
    .line 290
    .end local v0    # "andDescendants":Z
    :cond_0
    iget-object v6, v1, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@5a
    invoke-virtual {v6, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5d
    .line 291
    iget-object v6, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62
    .line 267
    add-int/lit8 v4, v4, 0x1

    #@64
    goto :goto_0

    #@65
    .line 272
    :cond_1
    const/4 v0, 0x0

    #@66
    .restart local v0    # "andDescendants":Z
    goto :goto_1

    #@67
    .line 261
    .end local v0    # "andDescendants":Z
    .end local v1    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v2    # "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    :cond_2
    return-void
.end method


# virtual methods
.method detachLocked()V
    .locals 5

    #@0
    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 337
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 338
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    #@11
    .line 339
    .local v2, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@13
    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@16
    .line 340
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@18
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 344
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@20
    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@29
    .line 345
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@2b
    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/ArrayMap;

    #@2d
    iget-object v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    #@2f
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 337
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 335
    .end local v2    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    :cond_1
    return-void
.end method

.method scheduleLocked()V
    .locals 4

    #@0
    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 315
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@7
    .line 316
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
    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@18
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@1a
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1f
    .line 319
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
    .line 321
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@2b
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@2d
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@32
    .line 313
    :goto_0
    return-void

    #@33
    .line 323
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
    .line 297
    const/4 v0, 0x0

    #@1
    .line 298
    .local v0, "reportChange":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@3
    iget-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 299
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 300
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
    .line 301
    const/4 v0, 0x1

    #@14
    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit v2

    #@18
    .line 308
    if-eqz v0, :cond_2

    #@1a
    .line 309
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@1c
    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@1e
    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@21
    .line 296
    :cond_2
    return-void

    #@22
    .line 298
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
    .line 328
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 329
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@6
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@8
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@d
    .line 330
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@f
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    #@11
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@16
    .line 331
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    #@19
    .line 327
    :cond_0
    return-void
.end method
