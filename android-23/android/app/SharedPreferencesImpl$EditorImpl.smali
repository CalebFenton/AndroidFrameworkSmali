.class public final Landroid/app/SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method static synthetic -wrap0(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/SharedPreferencesImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;

    #@0
    .prologue
    .line 305
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 306
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@b
    .line 307
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    #@e
    .line 305
    return-void
.end method

.method private commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .locals 11

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 392
    new-instance v5, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    #@3
    invoke-direct {v5, v7}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    #@6
    .line 393
    .local v5, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@8
    monitor-enter v8

    #@9
    .line 397
    :try_start_0
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@b
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get0(Landroid/app/SharedPreferencesImpl;)I

    #@e
    move-result v7

    #@f
    if-lez v7, :cond_0

    #@11
    .line 402
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@13
    new-instance v9, Ljava/util/HashMap;

    #@15
    iget-object v10, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@17
    invoke-static {v10}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@1a
    move-result-object v10

    #@1b
    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@1e
    invoke-static {v7, v9}, Landroid/app/SharedPreferencesImpl;->-set1(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;

    #@21
    .line 404
    :cond_0
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@23
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@26
    move-result-object v7

    #@27
    iput-object v7, v5, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    #@29
    .line 405
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@2b
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get0(Landroid/app/SharedPreferencesImpl;)I

    #@2e
    move-result v9

    #@2f
    add-int/lit8 v9, v9, 0x1

    #@31
    invoke-static {v7, v9}, Landroid/app/SharedPreferencesImpl;->-set0(Landroid/app/SharedPreferencesImpl;I)I

    #@34
    .line 407
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@36
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get1(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Ljava/util/WeakHashMap;->size()I

    #@3d
    move-result v7

    #@3e
    if-lez v7, :cond_6

    #@40
    const/4 v3, 0x1

    #@41
    .line 408
    .local v3, "hasListeners":Z
    :goto_0
    if-eqz v3, :cond_1

    #@43
    .line 409
    new-instance v7, Ljava/util/ArrayList;

    #@45
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@48
    iput-object v7, v5, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    #@4a
    .line 411
    new-instance v7, Ljava/util/HashSet;

    #@4c
    iget-object v9, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@4e
    invoke-static {v9}, Landroid/app/SharedPreferencesImpl;->-get1(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    #@51
    move-result-object v9

    #@52
    invoke-virtual {v9}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    #@55
    move-result-object v9

    #@56
    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@59
    .line 410
    iput-object v7, v5, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    #@5b
    .line 414
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5c
    .line 415
    :try_start_1
    iget-boolean v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    #@5e
    if-eqz v7, :cond_3

    #@60
    .line 416
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@62
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@65
    move-result-object v7

    #@66
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    #@69
    move-result v7

    #@6a
    if-nez v7, :cond_2

    #@6c
    .line 417
    const/4 v7, 0x1

    #@6d
    iput-boolean v7, v5, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    #@6f
    .line 418
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@71
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@74
    move-result-object v7

    #@75
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    #@78
    .line 420
    :cond_2
    const/4 v7, 0x0

    #@79
    iput-boolean v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    #@7b
    .line 423
    :cond_3
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@7d
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@80
    move-result-object v7

    #@81
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v1

    #@85
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_9

    #@8b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Ljava/util/Map$Entry;

    #@91
    .line 424
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@94
    move-result-object v4

    #@95
    check-cast v4, Ljava/lang/String;

    #@97
    .line 425
    .local v4, "k":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@9a
    move-result-object v6

    #@9b
    .line 429
    .local v6, "v":Ljava/lang/Object;
    if-eq v6, p0, :cond_5

    #@9d
    if-nez v6, :cond_7

    #@9f
    .line 430
    :cond_5
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@a1
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@a4
    move-result-object v7

    #@a5
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@a8
    move-result v7

    #@a9
    if-eqz v7, :cond_4

    #@ab
    .line 433
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@ad
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@b0
    move-result-object v7

    #@b1
    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    .line 444
    :goto_2
    const/4 v7, 0x1

    #@b5
    iput-boolean v7, v5, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    #@b7
    .line 445
    if-eqz v3, :cond_4

    #@b9
    .line 446
    iget-object v7, v5, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    #@bb
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@be
    goto :goto_1

    #@bf
    .line 414
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v4    # "k":Ljava/lang/String;
    .end local v6    # "v":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    #@c0
    :try_start_2
    monitor-exit p0

    #@c1
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c2
    .line 393
    .end local v3    # "hasListeners":Z
    :catchall_1
    move-exception v7

    #@c3
    monitor-exit v8

    #@c4
    throw v7

    #@c5
    .line 407
    :cond_6
    const/4 v3, 0x0

    #@c6
    .restart local v3    # "hasListeners":Z
    goto/16 :goto_0

    #@c8
    .line 435
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v4    # "k":Ljava/lang/String;
    .restart local v6    # "v":Ljava/lang/Object;
    :cond_7
    :try_start_3
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@ca
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@cd
    move-result-object v7

    #@ce
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d1
    move-result v7

    #@d2
    if-eqz v7, :cond_8

    #@d4
    .line 436
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@d6
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@d9
    move-result-object v7

    #@da
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@dd
    move-result-object v2

    #@de
    .line 437
    .local v2, "existingValue":Ljava/lang/Object;
    if-eqz v2, :cond_8

    #@e0
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v7

    #@e4
    if-nez v7, :cond_4

    #@e6
    .line 441
    .end local v2    # "existingValue":Ljava/lang/Object;
    :cond_8
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@e8
    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    #@eb
    move-result-object v7

    #@ec
    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ef
    goto :goto_2

    #@f0
    .line 450
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "k":Ljava/lang/String;
    .end local v6    # "v":Ljava/lang/Object;
    :cond_9
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@f2
    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@f5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@f6
    monitor-exit v8

    #@f7
    .line 453
    return-object v5
.end method

.method private notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 6
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    #@0
    .prologue
    .line 470
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    #@2
    if-eqz v4, :cond_0

    #@4
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    #@6
    if-nez v4, :cond_1

    #@8
    .line 472
    :cond_0
    return-void

    #@9
    .line 471
    :cond_1
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    #@b
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 474
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@14
    move-result-object v4

    #@15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@18
    move-result-object v5

    #@19
    if-ne v4, v5, :cond_4

    #@1b
    .line 475
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    #@1d
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@20
    move-result v4

    #@21
    add-int/lit8 v0, v4, -0x1

    #@23
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    #@25
    .line 476
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    #@27
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Ljava/lang/String;

    #@2d
    .line 477
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    #@2f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v3

    #@33
    .local v3, "listener$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_3

    #@39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    #@3f
    .line 478
    .local v2, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v2, :cond_2

    #@41
    .line 479
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@43
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    #@46
    goto :goto_1

    #@47
    .line 475
    .end local v2    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 485
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    :cond_4
    sget-object v4, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    #@4c
    new-instance v5, Landroid/app/SharedPreferencesImpl$EditorImpl$3;

    #@4e
    invoke-direct {v5, p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl$3;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    #@51
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@54
    .line 469
    :cond_5
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 4

    #@0
    .prologue
    .line 362
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    #@3
    move-result-object v1

    #@4
    .line 363
    .local v1, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl$1;

    #@6
    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl$1;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    #@9
    .line 372
    .local v0, "awaitCommit":Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/QueuedWork;->add(Ljava/lang/Runnable;)V

    #@c
    .line 374
    new-instance v2, Landroid/app/SharedPreferencesImpl$EditorImpl$2;

    #@e
    invoke-direct {v2, p0, v0}, Landroid/app/SharedPreferencesImpl$EditorImpl$2;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    #@11
    .line 381
    .local v2, "postWriteRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@13
    invoke-static {v3, v1, v2}, Landroid/app/SharedPreferencesImpl;->-wrap0(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    #@16
    .line 387
    invoke-direct {p0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    #@19
    .line 361
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    #@0
    .prologue
    .line 355
    monitor-enter p0

    #@1
    .line 356
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 357
    return-object p0

    #@6
    .line 355
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public commit()Z
    .locals 4

    #@0
    .prologue
    .line 457
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    #@3
    move-result-object v1

    #@4
    .line 458
    .local v1, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    #@6
    .line 459
    const/4 v3, 0x0

    #@7
    .line 458
    invoke-static {v2, v1, v3}, Landroid/app/SharedPreferencesImpl;->-wrap0(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    #@a
    .line 461
    :try_start_0
    iget-object v2, v1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 465
    invoke-direct {p0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    #@12
    .line 466
    iget-boolean v2, v1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    #@14
    return v2

    #@15
    .line 462
    :catch_0
    move-exception v0

    #@16
    .line 463
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    #@17
    return v2
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 341
    monitor-enter p0

    #@1
    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 343
    return-object p0

    #@c
    .line 341
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 335
    monitor-enter p0

    #@1
    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 337
    return-object p0

    #@c
    .line 335
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 323
    monitor-enter p0

    #@1
    .line 324
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 325
    return-object p0

    #@c
    .line 323
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 329
    monitor-enter p0

    #@1
    .line 330
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 331
    return-object p0

    #@c
    .line 329
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    monitor-enter p0

    #@1
    .line 311
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 312
    return-object p0

    #@8
    .line 310
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 316
    monitor-enter p0

    #@2
    .line 317
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@4
    .line 318
    if-nez p2, :cond_0

    #@6
    .line 317
    :goto_0
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 319
    return-object p0

    #@b
    .line 318
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    #@d
    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 316
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    monitor-enter p0

    #@1
    .line 349
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 350
    return-object p0

    #@8
    .line 348
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
