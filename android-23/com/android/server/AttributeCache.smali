.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Package;,
        Lcom/android/server/AttributeCache$Entry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
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
    .line 37
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@3
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    .line 40
    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    #@a
    .line 42
    new-instance v0, Landroid/content/res/Configuration;

    #@c
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    #@11
    .line 75
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    #@13
    .line 74
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 65
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 66
    new-instance v0, Lcom/android/server/AttributeCache;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    #@b
    .line 64
    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .locals 1

    #@0
    .prologue
    .line 71
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
    .line 99
    monitor-enter p0

    #@2
    .line 100
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    #@4
    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v6

    #@8
    check-cast v6, Lcom/android/server/AttributeCache$Package;

    #@a
    .line 101
    .local v6, "pkg":Lcom/android/server/AttributeCache$Package;
    const/4 v5, 0x0

    #@b
    .line 102
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v3, 0x0

    #@c
    .line 103
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v6, :cond_0

    #@e
    .line 104
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    check-cast v5, Ljava/util/HashMap;

    #@18
    .line 105
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    if-eqz v5, :cond_3

    #@1a
    .line 106
    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    check-cast v3, Lcom/android/server/AttributeCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 107
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_3

    #@22
    monitor-exit p0

    #@23
    .line 108
    return-object v3

    #@24
    .line 114
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    #@26
    .line 115
    new-instance v8, Landroid/os/UserHandle;

    #@28
    invoke-direct {v8, p4}, Landroid/os/UserHandle;-><init>(I)V

    #@2b
    .line 114
    const/4 v9, 0x0

    #@2c
    invoke-virtual {v7, p1, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    move-result-object v0

    #@30
    .line 116
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    #@32
    monitor-exit p0

    #@33
    .line 117
    return-object v10

    #@34
    .line 119
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    #@35
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    #@36
    .line 120
    return-object v10

    #@37
    .line 122
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    #@39
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    invoke-direct {v6, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    #@3c
    .line 123
    .restart local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    #@3e
    invoke-virtual {v7, p1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-object v4, v3

    #@42
    .line 126
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_0
    if-nez v5, :cond_2

    #@44
    .line 127
    new-instance v5, Ljava/util/HashMap;

    #@46
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@49
    .line 128
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    .line 132
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_2
    :try_start_3
    new-instance v3, Lcom/android/server/AttributeCache$Entry;

    #@52
    iget-object v7, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    #@54
    .line 133
    iget-object v8, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    #@56
    invoke-virtual {v8, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@59
    move-result-object v8

    #@5a
    .line 132
    invoke-direct {v3, v7, v8}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    .line 134
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    :try_start_4
    invoke-virtual {v5, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@60
    monitor-exit p0

    #@61
    .line 139
    return-object v3

    #@62
    .line 135
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
    .line 136
    return-object v10

    #@66
    .line 99
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
    .line 135
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
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_3
    move-object v4, v3

    #@6c
    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    goto :goto_0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    monitor-enter p0

    #@1
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 78
    return-void

    #@8
    .line 79
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 85
    monitor-enter p0

    #@1
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    #@3
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@6
    move-result v0

    #@7
    .line 87
    .local v0, "changes":I
    const v1, -0x400000a1    # -1.9999808f

    #@a
    and-int/2addr v1, v0

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 93
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    #@f
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 84
    return-void

    #@14
    .line 85
    .end local v0    # "changes":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method
