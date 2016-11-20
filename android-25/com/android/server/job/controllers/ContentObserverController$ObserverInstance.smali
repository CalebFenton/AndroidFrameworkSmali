.class final Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
.super Landroid/database/ContentObserver;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ObserverInstance"
.end annotation


# instance fields
.field final mJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/ContentObserverController$JobInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mUri:Landroid/app/job/JobInfo$TriggerContentUri;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ContentObserverController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uri"    # Landroid/app/job/JobInfo$TriggerContentUri;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@2
    .line 218
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 214
    new-instance v0, Landroid/util/ArraySet;

    #@7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@c
    .line 219
    iput-object p3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    #@e
    .line 220
    iput p4, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    #@10
    .line 217
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 229
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    #@2
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@a
    move-result v0

    #@b
    .line 231
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@e
    .line 232
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    #@10
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    #@16
    .line 233
    .local v2, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 234
    new-instance v3, Landroid/util/ArraySet;

    #@1c
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@1f
    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@21
    .line 236
    :cond_0
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@23
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@26
    move-result v3

    #@27
    const/16 v5, 0x32

    #@29
    if-ge v3, v5, :cond_1

    #@2b
    .line 237
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    #@2d
    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@30
    .line 239
    :cond_1
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@32
    if-nez v3, :cond_2

    #@34
    .line 240
    new-instance v3, Landroid/util/ArraySet;

    #@36
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@39
    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@3b
    .line 242
    :cond_2
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    #@3d
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@44
    .line 243
    invoke-virtual {v2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->scheduleLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 231
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_0

    #@4a
    .end local v2    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_3
    monitor-exit v4

    #@4b
    .line 224
    return-void

    #@4c
    .line 229
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@4d
    monitor-exit v4

    #@4e
    throw v3
.end method
