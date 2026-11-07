.class Landroid/app/LoadedApk$SplitDependencyLoaderImpl;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitDependencyLoaderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader<",
        "Landroid/content/pm/PackageManager$NameNotFoundException;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCachedClassLoaders:[Ljava/lang/ClassLoader;

.field private final greylist-max-o mCachedResourcePaths:[[Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor blacklist <init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 649
    .local p2, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 650
    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 651
    invoke-static {p1}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    .line 652
    invoke-static {p1}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    .line 653
    return-void
.end method

.method private greylist-max-o ensureSplitLoaded(Ljava/lang/String;)I
    .registers 6
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "idx":I
    if-eqz p1, :cond_31

    .line 697
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 698
    if-ltz v0, :cond_12

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 699
    :cond_12
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    :cond_31
    :goto_31
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->loadDependenciesForSplit(I)V

    .line 705
    return v0
.end method


# virtual methods
.method protected greylist-max-o constructSplit(I[II)V
    .registers 16
    .param p1, "splitIdx"    # I
    .param p2, "configSplitIndices"    # [I
    .param p3, "parentSplitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 666
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v0, "splitPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-nez p1, :cond_48

    .line 668
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/app/LoadedApk;->-$$Nest$mcreateOrUpdateClassLoaderLocked(Landroid/app/LoadedApk;Ljava/util/List;)V

    .line 669
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v4}, Landroid/app/LoadedApk;->-$$Nest$fgetmClassLoader(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v3, v2

    .line 672
    array-length v3, p2

    move v4, v2

    :goto_21
    if-ge v4, v3, :cond_36

    aget v5, p2, v4

    .line 673
    .local v5, "configSplitIdx":I
    iget-object v6, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v6}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    nop

    .end local v5    # "configSplitIdx":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 675
    :cond_36
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aput-object v4, v3, v2

    .line 676
    monitor-exit v1

    return-void

    .line 680
    :cond_48
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v3, v3, p3

    move-object v10, v3

    .line 681
    .local v10, "parent":Ljava/lang/ClassLoader;
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v4

    iget-object v5, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v5}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitAppDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 682
    invoke-virtual {v6}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v6

    iget-object v7, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v7}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitClassLoaderNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, p1, -0x1

    aget-object v11, v7, v8

    .line 681
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v3, p1

    .line 685
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 686
    iget-object v3, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v3}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    array-length v3, p2

    :goto_8b
    if-ge v2, v3, :cond_a0

    aget v4, p2, v2

    .line 688
    .local v4, "configSplitIdx":I
    iget-object v5, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v5}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    nop

    .end local v4    # "configSplitIdx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 690
    :cond_a0
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v2, p1

    .line 691
    .end local v0    # "splitPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "parent":Ljava/lang/ClassLoader;
    monitor-exit v1

    .line 692
    return-void

    .line 691
    :catchall_b2
    move-exception v0

    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_7 .. :try_end_b4} :catchall_b2

    throw v0
.end method

.method greylist-max-o getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 5
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 709
    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v0

    .line 710
    .local v0, "idx":I
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 711
    :try_start_b
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v2, v2, v0

    monitor-exit v1

    return-object v2

    .line 712
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v2
.end method

.method greylist-max-o getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 716
    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v0

    .line 717
    .local v0, "idx":I
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 718
    :try_start_b
    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object v2, v2, v0

    monitor-exit v1

    return-object v2

    .line 719
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v2
.end method

.method protected greylist-max-o isSplitCached(I)Z
    .registers 4
    .param p1, "splitIdx"    # I

    .line 657
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 658
    :try_start_7
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v1, v1, p1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 659
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
