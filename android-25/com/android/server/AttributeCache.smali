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
.field private static final CACHE_SIZE:I = 0x4

.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;"
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
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Landroid/util/LruCache;

    #@5
    const/4 v1, 0x4

    #@6
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    #@b
    .line 47
    new-instance v0, Landroid/content/res/Configuration;

    #@d
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    #@12
    .line 85
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    #@14
    .line 84
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 75
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 76
    new-instance v0, Lcom/android/server/AttributeCache;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@b
    .line 74
    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .locals 1

    #@0
    .prologue
    .line 81
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
    const/4 v10, 0x0

    #@1
    .line 120
    monitor-enter p0

    #@2
    .line 121
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    #@4
    invoke-virtual {v7, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v6

    #@8
    check-cast v6, Lcom/android/server/AttributeCache$Package;

    #@a
    .line 122
    .local v6, "pkg":Lcom/android/server/AttributeCache$Package;
    const/4 v5, 0x0

    #@b
    .line 123
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v3, 0x0

    #@c
    .line 124
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v6, :cond_0

    #@e
    .line 125
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    check-cast v5, Landroid/util/ArrayMap;

    #@18
    .line 126
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    if-eqz v5, :cond_3

    #@1a
    .line 127
    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    check-cast v3, Lcom/android/server/AttributeCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 128
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_3

    #@22
    monitor-exit p0

    #@23
    .line 129
    return-object v3

    #@24
    .line 135
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    #@26
    .line 136
    new-instance v8, Landroid/os/UserHandle;

    #@28
    invoke-direct {v8, p4}, Landroid/os/UserHandle;-><init>(I)V

    #@2b
    .line 135
    const/4 v9, 0x0

    #@2c
    invoke-virtual {v7, p1, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    move-result-object v0

    #@30
    .line 137
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    #@32
    monitor-exit p0

    #@33
    .line 138
    return-object v10

    #@34
    .line 140
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    #@35
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    #@36
    .line 141
    return-object v10

    #@37
    .line 143
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    #@39
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    invoke-direct {v6, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    #@3c
    .line 144
    .restart local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    #@3e
    invoke-virtual {v7, p1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-object v4, v3

    #@42
    .line 147
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_0
    if-nez v5, :cond_2

    #@44
    .line 148
    new-instance v5, Landroid/util/ArrayMap;

    #@46
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    #@49
    .line 149
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    .line 153
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_2
    :try_start_3
    new-instance v3, Lcom/android/server/AttributeCache$Entry;

    #@52
    iget-object v7, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    #@54
    .line 154
    iget-object v8, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    #@56
    invoke-virtual {v8, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@59
    move-result-object v8

    #@5a
    .line 153
    invoke-direct {v3, v7, v8}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    .line 155
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    :try_start_4
    invoke-virtual {v5, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@60
    monitor-exit p0

    #@61
    .line 160
    return-object v3

    #@62
    .line 156
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    :catch_1
    move-exception v2

    #@63
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v3, v4

    #@64
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_1
    monitor-exit p0

    #@65
    .line 157
    return-object v10

    #@66
    .line 120
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    :catchall_0
    move-exception v7

    #@67
    monitor-exit p0

    #@68
    throw v7

    #@69
    .line 156
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    :catch_2
    move-exception v2

    #@6a
    .restart local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_1

    #@6b
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_3
    move-object v4, v3

    #@6c
    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    goto :goto_0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    monitor-enter p0

    #@1
    .line 90
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    #@3
    invoke-virtual {v5, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Lcom/android/server/AttributeCache$Package;

    #@9
    .line 91
    .local v3, "pkg":Lcom/android/server/AttributeCache$Package;
    if-eqz v3, :cond_2

    #@b
    .line 92
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@13
    move-result v5

    #@14
    if-ge v0, v5, :cond_1

    #@16
    .line 93
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/util/ArrayMap;

    #@20
    .line 94
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v1, 0x0

    #@21
    .local v1, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@24
    move-result v5

    #@25
    if-ge v1, v5, :cond_0

    #@27
    .line 95
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Lcom/android/server/AttributeCache$Entry;

    #@2d
    invoke-virtual {v5}, Lcom/android/server/AttributeCache$Entry;->recycle()V

    #@30
    .line 94
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_1

    #@33
    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 99
    .end local v1    # "j":I
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_1
    iget-object v5, v3, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    #@38
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b
    move-result-object v4

    #@3c
    .line 100
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .end local v0    # "i":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0

    #@40
    .line 88
    return-void

    #@41
    .line 89
    .end local v3    # "pkg":Lcom/android/server/AttributeCache$Package;
    :catchall_0
    move-exception v5

    #@42
    monitor-exit p0

    #@43
    throw v5
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 106
    monitor-enter p0

    #@1
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    #@3
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@6
    move-result v0

    #@7
    .line 108
    .local v0, "changes":I
    const v1, -0x400000a1    # -1.9999808f

    #@a
    and-int/2addr v1, v0

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 114
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    #@f
    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 105
    return-void

    #@14
    .line 106
    .end local v0    # "changes":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method
