.class public Landroid/content/SyncAdaptersCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "SyncAdaptersCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncAdaptersCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_NAME:Ljava/lang/String; = "sync-adapter"

.field private static final SERVICE_INTERFACE:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final SERVICE_META_DATA:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;


# instance fields
.field private mAuthorityToSyncAdapters:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/content/SyncAdaptersCache$MySerializer;

    #@2
    invoke-direct {v0}, Landroid/content/SyncAdaptersCache$MySerializer;-><init>()V

    #@5
    sput-object v0, Landroid/content/SyncAdaptersCache;->sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 54
    const-string/jumbo v2, "android.content.SyncAdapter"

    #@3
    const-string/jumbo v3, "android.content.SyncAdapter"

    #@6
    const-string/jumbo v4, "sync-adapter"

    #@9
    sget-object v5, Landroid/content/SyncAdaptersCache;->sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    #@10
    .line 51
    new-instance v0, Landroid/util/SparseArray;

    #@12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@15
    .line 50
    iput-object v0, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    #@17
    .line 53
    return-void
.end method


# virtual methods
.method public getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 103
    iget-object v7, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 104
    :try_start_0
    iget-object v6, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/util/ArrayMap;

    #@b
    .line 105
    .local v0, "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@d
    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    #@f
    .end local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@12
    .line 107
    .restart local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v6, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@17
    .line 110
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_1

    #@1d
    .line 111
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    check-cast v6, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v7

    #@24
    return-object v6

    #@25
    .line 116
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@28
    move-result-object v4

    #@29
    .line 117
    .local v4, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 118
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v3

    #@32
    .local v3, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_3

    #@38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@3e
    .line 119
    .local v2, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@40
    check-cast v6, Landroid/content/SyncAdapterType;

    #@42
    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@44
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_2

    #@4a
    .line 120
    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@4c
    if-eqz v6, :cond_2

    #@4e
    .line 121
    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@50
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 103
    .end local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v1    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v3    # "serviceInfo$iterator":Ljava/util/Iterator;
    .end local v4    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    :catchall_0
    move-exception v6

    #@59
    monitor-exit v7

    #@5a
    throw v6

    #@5b
    .line 124
    .restart local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v1    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "serviceInfo$iterator":Ljava/util/Iterator;
    .restart local v4    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5e
    move-result v6

    #@5f
    new-array v5, v6, [Ljava/lang/String;

    #@61
    .line 125
    .local v5, "syncAdapterPackages":[Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@64
    .line 126
    invoke-virtual {v0, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    monitor-exit v7

    #@68
    .line 128
    return-object v5
.end method

.method protected onServicesChangedLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 92
    iget-object v2, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/util/ArrayMap;

    #@b
    .line 94
    .local v0, "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    #@d
    .line 95
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 99
    invoke-super {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    #@14
    .line 91
    return-void

    #@15
    .line 92
    .end local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method protected onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 134
    iget-object v1, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 138
    invoke-super {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onUserRemoved(I)V

    #@c
    .line 133
    return-void

    #@d
    .line 134
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 60
    sget-object v0, Lcom/android/internal/R$styleable;->SyncAdapter:[I

    #@3
    .line 59
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v8

    #@7
    .line 63
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    #@8
    :try_start_0
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 65
    .local v1, "authority":Ljava/lang/String;
    const/4 v0, 0x1

    #@d
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v2

    #@11
    .line 66
    .local v2, "accountType":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@13
    if-nez v2, :cond_1

    #@15
    .line 86
    :cond_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@18
    .line 67
    return-object v9

    #@19
    .line 70
    :cond_1
    const/4 v0, 0x3

    #@1a
    const/4 v9, 0x1

    #@1b
    :try_start_1
    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1e
    move-result v3

    #@1f
    .line 72
    .local v3, "userVisible":Z
    const/4 v0, 0x4

    #@20
    .line 73
    const/4 v9, 0x1

    #@21
    .line 72
    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@24
    move-result v4

    #@25
    .line 75
    .local v4, "supportsUploading":Z
    const/4 v0, 0x6

    #@26
    .line 76
    const/4 v9, 0x0

    #@27
    .line 75
    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2a
    move-result v5

    #@2b
    .line 78
    .local v5, "isAlwaysSyncable":Z
    const/4 v0, 0x5

    #@2c
    .line 79
    const/4 v9, 0x0

    #@2d
    .line 78
    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@30
    move-result v6

    #@31
    .line 81
    .local v6, "allowParallelSyncs":Z
    const/4 v0, 0x0

    #@32
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    .line 83
    .local v7, "settingsActivity":Ljava/lang/String;
    new-instance v0, Landroid/content/SyncAdapterType;

    #@38
    invoke-direct/range {v0 .. v7}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 86
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@3e
    .line 83
    return-object v0

    #@3f
    .line 85
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "userVisible":Z
    .end local v4    # "supportsUploading":Z
    .end local v5    # "isAlwaysSyncable":Z
    .end local v6    # "allowParallelSyncs":Z
    .end local v7    # "settingsActivity":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@40
    .line 86
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@43
    .line 85
    throw v0
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/SyncAdaptersCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
