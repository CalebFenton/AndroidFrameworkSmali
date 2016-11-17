.class public Lcom/android/server/media/MediaSessionStack;
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

.method public constructor <init>()V
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
    .line 394
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    #@3
    .line 395
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    #@5
    .line 396
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    #@7
    .line 397
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    #@9
    .line 398
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    #@b
    .line 393
    return-void
.end method

.method private containsState(I[I)Z
    .locals 2
    .param p1, "state"    # I
    .param p2, "states"    # [I

    #@0
    .prologue
    .line 385
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 386
    aget v1, p2, v0

    #@6
    if-ne v1, p1, :cond_0

    #@8
    .line 387
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 390
    :cond_1
    const/4 v1, 0x0

    #@e
    return v1
.end method

.method private getPriorityListLocked(ZII)Ljava/util/ArrayList;
    .locals 12
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
    .line 315
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 316
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v2, 0x0

    #@6
    .line 317
    .local v2, "lastLocalIndex":I
    const/4 v1, 0x0

    #@7
    .line 318
    .local v1, "lastActiveIndex":I
    const/4 v3, 0x0

    #@8
    .line 320
    .local v3, "lastPublishedIndex":I
    iget-object v7, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v6

    #@e
    .line 321
    .local v6, "size":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_5

    #@11
    .line 322
    iget-object v7, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    #@19
    .line 324
    .local v5, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v7, -0x1

    #@1a
    if-eq p3, v7, :cond_1

    #@1c
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@1f
    move-result v7

    #@20
    if-eq p3, v7, :cond_1

    #@22
    .line 321
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 328
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    #@28
    move-result-wide v8

    #@29
    int-to-long v10, p2

    #@2a
    and-long/2addr v8, v10

    #@2b
    int-to-long v10, p2

    #@2c
    cmp-long v7, v8, v10

    #@2e
    if-nez v7, :cond_0

    #@30
    .line 332
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    #@33
    move-result v7

    #@34
    if-nez v7, :cond_2

    #@36
    .line 333
    if-nez p1, :cond_0

    #@38
    .line 336
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_1

    #@3c
    .line 341
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_3

    #@42
    .line 344
    const/4 v7, 0x0

    #@43
    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@46
    .line 345
    add-int/lit8 v2, v2, 0x1

    #@48
    .line 346
    add-int/lit8 v1, v1, 0x1

    #@4a
    .line 347
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 348
    :cond_3
    const/4 v7, 0x1

    #@4e
    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    #@51
    move-result v7

    #@52
    if-eqz v7, :cond_4

    #@54
    .line 352
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@57
    .line 353
    add-int/lit8 v2, v2, 0x1

    #@59
    .line 354
    add-int/lit8 v1, v1, 0x1

    #@5b
    .line 355
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 365
    :cond_4
    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@61
    .line 366
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_1

    #@64
    .line 370
    .end local v5    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_5
    return-object v4
.end method

.method private static isFromMostRecentApp(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 8
    .param p0, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 75
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@4
    move-result v3

    #@5
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@8
    move-result v4

    #@9
    if-eq v3, v4, :cond_0

    #@b
    .line 76
    return v7

    #@c
    .line 80
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@f
    move-result-object v3

    #@10
    .line 84
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    #@13
    move-result v4

    #@14
    .line 80
    const/4 v5, 0x1

    #@15
    .line 81
    const/16 v6, 0xf

    #@17
    .line 80
    invoke-interface {v3, v5, v6, v4}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@1e
    move-result-object v2

    #@1f
    .line 85
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v2, :cond_1

    #@21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 94
    :cond_1
    return v7

    #@28
    .line 86
    :cond_2
    const/4 v3, 0x0

    #@29
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    #@2f
    .line 87
    .local v1, "recentTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 88
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    #@35
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 89
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    move-result v3

    #@45
    return v3

    #@46
    .line 91
    .end local v1    # "recentTask":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_0
    move-exception v0

    #@47
    .line 92
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
    .line 374
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    #@3
    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 375
    return v1

    #@a
    .line 377
    :cond_0
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    #@c
    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 378
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    #@14
    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    #@17
    move-result v0

    #@18
    .line 377
    if-eqz v0, :cond_1

    #@1a
    .line 379
    return v1

    #@1b
    .line 381
    :cond_1
    const/4 v0, 0x0

    #@1c
    return v0
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 104
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    #@8
    .line 105
    invoke-static {p1}, Lcom/android/server/media/MediaSessionStack;->isFromMostRecentApp(Lcom/android/server/media/MediaSessionRecord;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 106
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@10
    .line 102
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
    .line 170
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 171
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
    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    #@e
    return-object v0
.end method

.method public getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "includeNotPlaying"    # Z

    #@0
    .prologue
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
    invoke-direct {p0, v5, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

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
    .line 200
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 201
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    #@8
    return-object v1

    #@9
    .line 203
    :cond_0
    const/4 v1, 0x1

    #@a
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    #@d
    move-result-object v0

    #@e
    .line 204
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v1

    #@12
    if-lez v1, :cond_1

    #@14
    .line 205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    #@1a
    return-object v1

    #@1b
    .line 207
    :cond_1
    return-object v3
.end method

.method public getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
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
    invoke-direct {p0, v4, v6, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

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
    .line 186
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 187
    const/4 v0, 0x1

    #@5
    .line 188
    const/4 v1, 0x2

    #@6
    .line 187
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    #@c
    .line 190
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
    .line 132
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 133
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@c
    .line 134
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@11
    .line 135
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    #@14
    .line 138
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    #@16
    .line 139
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 140
    :cond_0
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 142
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    #@21
    .line 144
    :cond_1
    return v1
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 154
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
    .line 155
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@10
    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    #@13
    .line 153
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 117
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@7
    if-ne p1, v0, :cond_0

    #@9
    .line 118
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    #@c
    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    #@f
    .line 115
    return-void
.end method
