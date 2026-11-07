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
.field private greylist-max-o mClear:Z

.field private final greylist-max-o mEditorLock:Ljava/lang/Object;

.field private final greylist-max-o mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$K3ZhT5raBwBpi0ZNTVZjjuEvbWI(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->lambda$notifyListeners$0(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/SharedPreferencesImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 413
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method

.method private greylist-max-o commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .registers 18

    .line 525
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 526
    .local v2, "keysCleared":Z
    const/4 v3, 0x0

    .line 527
    .local v3, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 530
    .local v4, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 534
    :try_start_c
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I

    move-result v0

    if-lez v0, :cond_24

    .line 539
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    new-instance v6, Ljava/util/HashMap;

    iget-object v7, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v7}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v6}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmMap(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)V

    .line 541
    :cond_24
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v0

    move-object v12, v0

    .line 542
    .local v12, "mapToWriteToDisk":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v0, v6}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;I)V

    .line 544
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    const/4 v6, 0x0

    if-lez v0, :cond_44

    goto :goto_45

    :cond_44
    move v7, v6

    .line 545
    .local v7, "hasListeners":Z
    :goto_45
    if-eqz v7, :cond_60

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 547
    new-instance v0, Ljava/util/HashSet;

    iget-object v8, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_f9

    move-object v4, v0

    move-object v10, v3

    move-object v11, v4

    goto :goto_62

    .line 545
    :cond_60
    move-object v10, v3

    move-object v11, v4

    .line 550
    .end local v3    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .local v10, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    :goto_62
    :try_start_62
    iget-object v3, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_f5

    .line 551
    const/4 v0, 0x0

    .line 553
    .local v0, "changesMade":Z
    :try_start_66
    iget-boolean v4, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v4, :cond_79

    .line 554
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_74

    .line 555
    const/4 v0, 0x1

    .line 556
    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 558
    :cond_74
    const/4 v2, 0x1

    .line 559
    iput-boolean v6, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z
    :try_end_77
    .catchall {:try_start_66 .. :try_end_77} :catchall_f2

    move v9, v2

    goto :goto_7a

    .line 553
    :cond_79
    move v9, v2

    .line 562
    .end local v2    # "keysCleared":Z
    .local v9, "keysCleared":Z
    :goto_7a
    :try_start_7a
    iget-object v2, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 563
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 564
    .local v6, "k":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 568
    .local v8, "v":Ljava/lang/Object;
    if-eq v8, v1, :cond_b6

    if-nez v8, :cond_9f

    goto :goto_b6

    .line 574
    :cond_9f
    invoke-interface {v12, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b2

    .line 575
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 576
    .local v13, "existingValue":Ljava/lang/Object;
    if-eqz v13, :cond_b2

    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 577
    goto :goto_84

    .line 580
    .end local v13    # "existingValue":Ljava/lang/Object;
    :cond_b2
    invoke-interface {v12, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c0

    .line 569
    :cond_b6
    :goto_b6
    invoke-interface {v12, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_bd

    .line 570
    goto :goto_84

    .line 572
    :cond_bd
    invoke-interface {v12, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :goto_c0
    const/4 v0, 0x1

    .line 584
    if-eqz v7, :cond_c6

    .line 585
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "k":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    :cond_c6
    goto :goto_84

    .line 589
    :cond_c7
    iget-object v2, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 591
    if-eqz v0, :cond_da

    .line 592
    iget-object v2, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v2}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J

    move-result-wide v13

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    invoke-static {v2, v13, v14}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;J)V

    .line 595
    :cond_da
    iget-object v2, v1, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v2}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J

    move-result-wide v13

    .line 596
    .end local v0    # "changesMade":Z
    .local v13, "memoryStateGeneration":J
    monitor-exit v3
    :try_end_e1
    .catchall {:try_start_7a .. :try_end_e1} :catchall_ef

    .line 597
    .end local v7    # "hasListeners":Z
    :try_start_e1
    monitor-exit v5
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_ea

    .line 598
    new-instance v6, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-wide v7, v13

    .end local v13    # "memoryStateGeneration":J
    .local v7, "memoryStateGeneration":J
    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(JZLjava/util/List;Ljava/util/Set;Ljava/util/Map;Landroid/app/SharedPreferencesImpl-IA;)V

    return-object v6

    .line 597
    .end local v7    # "memoryStateGeneration":J
    .end local v12    # "mapToWriteToDisk":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_ea
    move-exception v0

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    goto :goto_fa

    .line 596
    .local v7, "hasListeners":Z
    .restart local v12    # "mapToWriteToDisk":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_ef
    move-exception v0

    move v2, v9

    goto :goto_f3

    .end local v9    # "keysCleared":Z
    .restart local v2    # "keysCleared":Z
    :catchall_f2
    move-exception v0

    :goto_f3
    :try_start_f3
    monitor-exit v3
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    .end local v2    # "keysCleared":Z
    .end local v10    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .end local p0    # "this":Landroid/app/SharedPreferencesImpl$EditorImpl;
    :try_start_f4
    throw v0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f5

    .line 597
    .end local v7    # "hasListeners":Z
    .end local v12    # "mapToWriteToDisk":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "keysCleared":Z
    .restart local v10    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .restart local p0    # "this":Landroid/app/SharedPreferencesImpl$EditorImpl;
    :catchall_f5
    move-exception v0

    move-object v3, v10

    move-object v4, v11

    goto :goto_fa

    .end local v10    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .restart local v3    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    :catchall_f9
    move-exception v0

    :goto_fa
    :try_start_fa
    monitor-exit v5
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v0
.end method

.method private synthetic blacklist lambda$notifyListeners$0(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 2
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .line 651
    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private greylist-max-o notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 7
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .line 630
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    if-eqz v0, :cond_7b

    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    if-nez v0, :cond_e

    iget-boolean v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysCleared:Z

    if-nez v0, :cond_e

    goto/16 :goto_7b

    .line 633
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_70

    .line 634
    iget-boolean v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysCleared:Z

    if-eqz v0, :cond_40

    const-wide/32 v0, 0x71a0c40

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 635
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 636
    .local v1, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v1, :cond_3f

    .line 637
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 639
    .end local v1    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_3f
    goto :goto_2b

    .line 641
    :cond_40
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_48
    if-ltz v0, :cond_6f

    .line 642
    iget-object v1, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 644
    .local v3, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v3, :cond_6b

    .line 645
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 647
    .end local v3    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_6b
    goto :goto_58

    .line 641
    .end local v1    # "key":Ljava/lang/String;
    :cond_6c
    add-int/lit8 v0, v0, -0x1

    goto :goto_48

    .end local v0    # "i":I
    :cond_6f
    goto :goto_7a

    .line 651
    :cond_70
    sget-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    :goto_7a
    return-void

    .line 631
    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method public whitelist apply()V
    .registers 7

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 486
    .local v0, "startTime":J
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v2

    .line 487
    .local v2, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    new-instance v3, Landroid/app/SharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v3, p0, v2, v0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl$1;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;J)V

    .line 503
    .local v3, "awaitCommit":Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/app/QueuedWork;->addFinisher(Ljava/lang/Runnable;)V

    .line 505
    new-instance v4, Landroid/app/SharedPreferencesImpl$EditorImpl$2;

    invoke-direct {v4, p0, v3}, Landroid/app/SharedPreferencesImpl$EditorImpl$2;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    .line 513
    .local v4, "postWriteRunnable":Ljava/lang/Runnable;
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v5, v2, v4}, Landroid/app/SharedPreferencesImpl;->-$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 519
    invoke-direct {p0, v2}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 520
    return-void
.end method

.method public whitelist clear()Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 476
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 478
    monitor-exit v0

    return-object p0

    .line 479
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist commit()Z
    .registers 6

    .line 604
    const-wide/16 v0, 0x0

    .line 610
    .local v0, "startTime":J
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v2

    .line 612
    .local v2, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/app/SharedPreferencesImpl;->-$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 615
    :try_start_c
    iget-object v3, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_1a
    .catchall {:try_start_c .. :try_end_11} :catchall_18

    .line 624
    nop

    .line 625
    invoke-direct {p0, v2}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 626
    iget-boolean v3, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    return v3

    .line 619
    :catchall_18
    move-exception v3

    .line 624
    throw v3

    .line 616
    :catch_1a
    move-exception v3

    .line 617
    .local v3, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 460
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    monitor-exit v0

    return-object p0

    .line 463
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 453
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v0

    return-object p0

    .line 456
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 439
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    monitor-exit v0

    return-object p0

    .line 442
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 446
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    monitor-exit v0

    return-object p0

    .line 449
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 424
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    monitor-exit v0

    return-object p0

    .line 427
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 431
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 433
    if-nez p2, :cond_9

    const/4 v2, 0x0

    goto :goto_e

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 432
    :goto_e
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    monitor-exit v0

    return-object p0

    .line 435
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    monitor-exit v0

    return-object p0

    .line 471
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
