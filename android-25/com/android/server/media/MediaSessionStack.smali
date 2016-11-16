.class Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final TRANSITION_PRIORITY_STATES:[I


# instance fields
.field private mCachedActiveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedTransportControlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

.field private final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 41
    const/4 v0, 0x4

    #@1
    .line 42
    const/4 v1, 0x5

    #@2
    .line 43
    const/16 v2, 0x9

    #@4
    .line 44
    const/16 v3, 0xa

    #@6
    .line 40
    filled-new-array {v0, v1, v2, v3}, [I

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    #@c
    .line 50
    const/4 v0, 0x6

    #@d
    .line 51
    const/16 v1, 0x8

    #@f
    .line 52
    const/4 v2, 0x3

    #@10
    .line 49
    filled-new-array {v0, v1, v2}, [I

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    #@16
    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@a
    .line 35
    return-void
.end method

.method private clearCache()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 402
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    #@3
    .line 403
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    #@5
    .line 404
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@7
    .line 405
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    #@9
    .line 406
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    #@b
    .line 401
    return-void
.end method

.method private containsState(I[I)Z
    .locals 2
    .param p1, "state"    # I
    .param p2, "states"    # [I

    #@0
    .prologue
    .line 393
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 394
    aget v1, p2, v0

    #@6
    if-ne v1, p1, :cond_0

    #@8
    .line 395
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 393
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 398
    :cond_1
    const/4 v1, 0x0

    #@e
    return v1
.end method

.method private getPriorityListLocked(ZII)Ljava/util/ArrayList;
    .locals 2
    .param p1, "activeOnly"    # Z
    .param p2, "withFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 304
    .local v0, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c
    .line 305
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZILjava/util/List;)Ljava/util/ArrayList;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private getPriorityListLocked(ZILjava/util/List;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "activeOnly"    # Z
    .param p2, "withFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 322
    .local p3, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 323
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v3, 0x0

    #@6
    .line 324
    .local v3, "lastLocalIndex":I
    const/4 v2, 0x0

    #@7
    .line 325
    .local v2, "lastActiveIndex":I
    const/4 v4, 0x0

    #@8
    .line 327
    .local v4, "lastPublishedIndex":I
    const/4 v8, -0x1

    #@9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v8

    #@d
    invoke-interface {p3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_2

    #@13
    const/4 v0, 0x0

    #@14
    .line 328
    .local v0, "filterUser":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v7

    #@1a
    .line 329
    .local v7, "size":I
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_7

    #@1d
    .line 330
    iget-object v8, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    #@25
    .line 332
    .local v6, "session":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v0, :cond_0

    #@27
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@2a
    move-result v8

    #@2b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v8

    #@2f
    invoke-interface {p3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_1

    #@35
    .line 336
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    #@38
    move-result-wide v8

    #@39
    int-to-long v10, p2

    #@3a
    and-long/2addr v8, v10

    #@3b
    int-to-long v10, p2

    #@3c
    cmp-long v8, v8, v10

    #@3e
    if-eqz v8, :cond_3

    #@40
    .line 329
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_1

    #@43
    .line 327
    .end local v0    # "filterUser":Z
    .end local v1    # "i":I
    .end local v6    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v7    # "size":I
    :cond_2
    const/4 v0, 0x1

    #@44
    .restart local v0    # "filterUser":Z
    goto :goto_0

    #@45
    .line 340
    .restart local v1    # "i":I
    .restart local v6    # "session":Lcom/android/server/media/MediaSessionRecord;
    .restart local v7    # "size":I
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    #@48
    move-result v8

    #@49
    if-nez v8, :cond_4

    #@4b
    .line 341
    if-nez p1, :cond_1

    #@4d
    .line 344
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    goto :goto_2

    #@51
    .line 349
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    #@54
    move-result v8

    #@55
    if-eqz v8, :cond_5

    #@57
    .line 352
    const/4 v8, 0x0

    #@58
    invoke-virtual {v5, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@5b
    .line 353
    add-int/lit8 v3, v3, 0x1

    #@5d
    .line 354
    add-int/lit8 v2, v2, 0x1

    #@5f
    .line 355
    add-int/lit8 v4, v4, 0x1

    #@61
    goto :goto_2

    #@62
    .line 356
    :cond_5
    const/4 v8, 0x1

    #@63
    invoke-virtual {v6, v8}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    #@66
    move-result v8

    #@67
    if-eqz v8, :cond_6

    #@69
    .line 360
    invoke-virtual {v5, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@6c
    .line 361
    add-int/lit8 v3, v3, 0x1

    #@6e
    .line 362
    add-int/lit8 v2, v2, 0x1

    #@70
    .line 363
    add-int/lit8 v4, v4, 0x1

    #@72
    goto :goto_2

    #@73
    .line 373
    :cond_6
    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@76
    .line 374
    add-int/lit8 v4, v4, 0x1

    #@78
    goto :goto_2

    #@79
    .line 378
    .end local v6    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_7
    return-object v5
.end method

.method private static isFromMostRecentApp(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 8
    .param p0, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 77
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v3

    #@5
    .line 81
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@8
    move-result v4

    #@9
    .line 77
    const/4 v5, 0x1

    #@a
    .line 78
    const/16 v6, 0xf

    #@c
    .line 77
    invoke-interface {v3, v5, v6, v4}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    .line 82
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v2, :cond_0

    #@16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 92
    :cond_0
    return v7

    #@1d
    .line 83
    :cond_1
    const/4 v3, 0x0

    #@1e
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    #@24
    .line 84
    .local v1, "recentTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    #@26
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@29
    move-result v4

    #@2a
    if-ne v3, v4, :cond_0

    #@2c
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 85
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@32
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 86
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result v3

    #@42
    return v3

    #@43
    .line 89
    .end local v1    # "recentTask":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_0
    move-exception v0

    #@44
    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    return v7
.end method

.method private shouldUpdatePriority(II)Z
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 382
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    #@3
    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 383
    return v1

    #@a
    .line 385
    :cond_0
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    #@c
    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 386
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    #@14
    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    #@17
    move-result v0

    #@18
    .line 385
    if-eqz v0, :cond_1

    #@1a
    .line 387
    return v1

    #@1b
    .line 389
    :cond_1
    const/4 v0, 0x0

    #@1c
    return v0
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;Z)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "fromForegroundUser"    # Z

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 103
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    #@8
    .line 104
    if-eqz p2, :cond_0

    #@a
    invoke-static {p1}, Lcom/android/server/media/MediaSessionStack;->isFromMostRecentApp(Lcom/android/server/media/MediaSessionRecord;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 105
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@12
    .line 101
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 289
    const/4 v5, -0x1

    #@2
    .line 288
    invoke-direct {p0, v6, v6, v5}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    #@5
    move-result-object v4

    #@6
    .line 290
    .local v4, "sortedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 291
    .local v0, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    const-string/jumbo v6, "Global priority session is "

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    iget-object v6, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27
    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    const-string/jumbo v6, "Sessions Stack - have "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, " sessions:"

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    const-string/jumbo v6, "  "

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    .line 294
    .local v2, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    #@5e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@60
    .line 295
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    #@66
    .line 296
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3, p1, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@69
    .line 297
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6c
    .line 294
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 287
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 170
    const/4 v0, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    #@c
    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    #@e
    return-object v0
.end method

.method public getDefaultMediaButtonSession(Ljava/util/List;Z)Lcom/android/server/media/MediaSessionRecord;
    .locals 6
    .param p2, "includeNotPlaying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lcom/android/server/media/MediaSessionRecord;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 219
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@5
    if-eqz v2, :cond_0

    #@7
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 220
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@11
    return-object v2

    #@12
    .line 222
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 223
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@18
    return-object v2

    #@19
    .line 225
    :cond_1
    invoke-direct {p0, v5, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZILjava/util/List;)Ljava/util/ArrayList;

    #@1c
    move-result-object v1

    #@1d
    .line 227
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v2

    #@21
    if-lez v2, :cond_3

    #@23
    .line 228
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    #@29
    .line 229
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_4

    #@2f
    .line 232
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@31
    .line 233
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@33
    .line 242
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    #@35
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@37
    if-nez v2, :cond_3

    #@39
    .line 245
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@3b
    .line 248
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_3
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@3d
    return-object v2

    #@3e
    .line 234
    .restart local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@40
    if-eqz v2, :cond_2

    #@42
    .line 235
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_5

    #@4a
    .line 236
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@4c
    iput-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@4e
    goto :goto_0

    #@4f
    .line 239
    :cond_5
    iput-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@51
    goto :goto_0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 271
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    #@5
    move-result-object v2

    #@6
    .line 273
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    .line 274
    .local v3, "size":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@d
    .line 275
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    #@13
    .line 276
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    #@16
    move-result v4

    #@17
    const/4 v5, 0x2

    #@18
    if-ne v4, v5, :cond_0

    #@1a
    .line 277
    return-object v1

    #@1b
    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 280
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    const/4 v4, 0x0

    #@1f
    return-object v4
.end method

.method public getDefaultSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 199
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 200
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    #@8
    return-object v1

    #@9
    .line 202
    :cond_0
    const/4 v1, 0x1

    #@a
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    #@d
    move-result-object v0

    #@e
    .line 203
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v1

    #@12
    if-lez v1, :cond_1

    #@14
    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    #@1a
    return-object v1

    #@1b
    .line 206
    :cond_1
    return-object v3
.end method

.method public getDefaultVolumeSession(Ljava/util/List;)Lcom/android/server/media/MediaSessionRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/media/MediaSessionRecord;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 252
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@4
    if-eqz v4, :cond_0

    #@6
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@8
    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 253
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@10
    return-object v4

    #@11
    .line 255
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    #@13
    if-eqz v4, :cond_1

    #@15
    .line 256
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    #@17
    return-object v4

    #@18
    .line 258
    :cond_1
    const/4 v4, 0x1

    #@19
    invoke-direct {p0, v4, v6, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZILjava/util/List;)Ljava/util/ArrayList;

    #@1c
    move-result-object v2

    #@1d
    .line 259
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v3

    #@21
    .line 260
    .local v3, "size":I
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@24
    .line 261
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    #@2a
    .line 262
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1, v6}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_2

    #@30
    .line 263
    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    #@32
    .line 264
    return-object v1

    #@33
    .line 260
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 267
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_3
    return-object v5
.end method

.method public getTransportControlSessions(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 186
    const/4 v0, 0x1

    #@5
    .line 187
    const/4 v1, 0x2

    #@6
    .line 186
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    #@c
    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    #@e
    return-object v0
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@8
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 131
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 132
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@c
    .line 133
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@11
    .line 134
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    #@14
    .line 137
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@16
    .line 138
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 139
    :cond_0
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 141
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    #@21
    .line 143
    :cond_1
    return v1
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    #@3
    move-result-wide v0

    #@4
    const-wide/32 v2, 0x10000

    #@7
    and-long/2addr v0, v2

    #@8
    const-wide/16 v2, 0x0

    #@a
    cmp-long v0, v0, v2

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 154
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@10
    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    #@13
    .line 152
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 116
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@7
    if-ne p1, v0, :cond_0

    #@9
    .line 117
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@c
    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    #@f
    .line 114
    return-void
.end method
