.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/AttributeCache$Package;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@3
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    #@a
    .line 46
    new-instance v0, Landroid/content/res/Configuration;

    #@c
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    #@11
    .line 84
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    #@13
    .line 83
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 74
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 75
    new-instance v0, Lcom/android/server/AttributeCache;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@b
    .line 73
    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .locals 1

    #@0
    .prologue
    .line 80
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@2
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "styleable"    # [I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 122
    monitor-enter p0

    #@1
    .line 123
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v7

    #@7
    check-cast v7, Ljava/lang/ref/WeakReference;

    #@9
    .line 124
    .local v7, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    if-eqz v7, :cond_0

    #@b
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v6

    #@f
    check-cast v6, Lcom/android/server/AttributeCache$Package;

    #@11
    .line 125
    :goto_0
    const/4 v5, 0x0

    #@12
    .line 126
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v3, 0x0

    #@13
    .line 127
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v6, :cond_1

    #@15
    .line 128
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@18
    move-result-object v8

    #@19
    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    check-cast v5, Landroid/util/ArrayMap;

    #@1f
    .line 129
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    if-eqz v5, :cond_4

    #@21
    .line 130
    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    check-cast v3, Lcom/android/server/AttributeCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 131
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_4

    #@29
    monitor-exit p0

    #@2a
    .line 132
    return-object v3

    #@2b
    .line 124
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_0
    const/4 v6, 0x0

    #@2c
    .local v6, "pkg":Lcom/android/server/AttributeCache$Package;
    goto :goto_0

    #@2d
    .line 138
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    #@2f
    .line 139
    new-instance v9, Landroid/os/UserHandle;

    #@31
    invoke-direct {v9, p4}, Landroid/os/UserHandle;-><init>(I)V

    #@34
    .line 138
    const/4 v10, 0x0

    #@35
    invoke-virtual {v8, p1, v10, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    move-result-object v0

    #@39
    .line 140
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    #@3b
    .line 141
    const/4 v8, 0x0

    #@3c
    monitor-exit p0

    #@3d
    return-object v8

    #@3e
    .line 143
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    #@3f
    .line 144
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    #@40
    monitor-exit p0

    #@41
    return-object v8

    #@42
    .line 146
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    :try_start_2
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    #@44
    invoke-direct {v6, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    #@47
    .line 147
    .local v6, "pkg":Lcom/android/server/AttributeCache$Package;
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    #@49
    new-instance v9, Ljava/lang/ref/WeakReference;

    #@4b
    invoke-direct {v9, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@4e
    invoke-virtual {v8, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-object v4, v3

    #@52
    .line 150
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_1
    if-nez v5, :cond_3

    #@54
    .line 151
    new-instance v5, Landroid/util/ArrayMap;

    #@56
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    #@59
    .line 152
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    .line 156
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_3
    :try_start_3
    new-instance v3, Lcom/android/server/AttributeCache$Entry;

    #@62
    iget-object v8, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    #@64
    .line 157
    iget-object v9, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    #@66
    invoke-virtual {v9, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@69
    move-result-object v9

    #@6a
    .line 156
    invoke-direct {v3, v8, v9}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    .line 158
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    :try_start_4
    invoke-virtual {v5, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@70
    monitor-exit p0

    #@71
    .line 163
    return-object v3

    #@72
    .line 159
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    :catch_1
    move-exception v2

    #@73
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v3, v4

    #@74
    .line 160
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_2
    const/4 v8, 0x0

    #@75
    monitor-exit p0

    #@76
    return-object v8

    #@77
    .line 122
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    :catchall_0
    move-exception v8

    #@78
    monitor-exit p0

    #@79
    throw v8

    #@7a
    .line 159
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    :catch_2
    move-exception v2

    #@7b
    .restart local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_2

    #@7c
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_4
    move-object v4, v3

    #@7d
    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    monitor-enter p0

    #@1
    .line 89
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@9
    .line 90
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    if-eqz v4, :cond_0

    #@b
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Lcom/android/server/AttributeCache$Package;

    #@11
    .line 91
    :goto_0
    if-eqz v3, :cond_3

    #@13
    .line 92
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@16
    move-result-object v6

    #@17
    if-eqz v6, :cond_2

    #@19
    .line 93
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_1
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@21
    move-result v6

    #@22
    if-ge v0, v6, :cond_2

    #@24
    .line 94
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/util/ArrayMap;

    #@2e
    .line 95
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v1, 0x0

    #@2f
    .local v1, "j":I
    :goto_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@32
    move-result v6

    #@33
    if-ge v1, v6, :cond_1

    #@35
    .line 96
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@38
    move-result-object v6

    #@39
    check-cast v6, Lcom/android/server/AttributeCache$Entry;

    #@3b
    invoke-virtual {v6}, Lcom/android/server/AttributeCache$Entry;->recycle()V

    #@3e
    .line 95
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_2

    #@41
    .line 90
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_0
    const/4 v3, 0x0

    #@42
    .local v3, "pkg":Lcom/android/server/AttributeCache$Package;
    goto :goto_0

    #@43
    .line 93
    .end local v3    # "pkg":Lcom/android/server/AttributeCache$Package;
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_1

    #@46
    .line 101
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_2
    iget-object v6, v3, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    #@48
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4b
    move-result-object v5

    #@4c
    .line 102
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_3
    monitor-exit p0

    #@50
    .line 87
    return-void

    #@51
    .line 88
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    :catchall_0
    move-exception v6

    #@52
    monitor-exit p0

    #@53
    throw v6
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 108
    monitor-enter p0

    #@1
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    #@3
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@6
    move-result v0

    #@7
    .line 110
    .local v0, "changes":I
    const v1, -0x400000a1    # -1.9999808f

    #@a
    and-int/2addr v1, v0

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 116
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 107
    return-void

    #@14
    .line 108
    .end local v0    # "changes":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method
