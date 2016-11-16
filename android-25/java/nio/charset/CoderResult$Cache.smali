.class abstract Ljava/nio/charset/CoderResult$Cache;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/charset/CoderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cache"
.end annotation


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/nio/charset/CoderResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/nio/charset/CoderResult$Cache;->get(I)Ljava/nio/charset/CoderResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 197
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    #@6
    .line 195
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/CoderResult$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/nio/charset/CoderResult$Cache;-><init>()V

    #@3
    return-void
.end method

.method private declared-synchronized get(I)Ljava/nio/charset/CoderResult;
    .locals 5
    .param p1, "len"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 202
    if-gtz p1, :cond_0

    #@3
    .line 203
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "Non-positive length"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v3

    #@d
    monitor-exit p0

    #@e
    throw v3

    #@f
    .line 204
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Integer;

    #@11
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@14
    .line 206
    .local v1, "k":Ljava/lang/Integer;
    const/4 v0, 0x0

    #@15
    .line 207
    .local v0, "e":Ljava/nio/charset/CoderResult;
    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    #@17
    if-nez v3, :cond_3

    #@19
    .line 208
    new-instance v3, Ljava/util/HashMap;

    #@1b
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@1e
    iput-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    #@20
    .line 212
    .end local v0    # "e":Ljava/nio/charset/CoderResult;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    #@22
    .line 213
    invoke-virtual {p0, p1}, Ljava/nio/charset/CoderResult$Cache;->create(I)Ljava/nio/charset/CoderResult;

    #@25
    move-result-object v0

    #@26
    .line 214
    .local v0, "e":Ljava/nio/charset/CoderResult;
    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    #@28
    new-instance v4, Ljava/lang/ref/WeakReference;

    #@2a
    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@2d
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .end local v0    # "e":Ljava/nio/charset/CoderResult;
    :cond_2
    monitor-exit p0

    #@31
    .line 216
    return-object v0

    #@32
    .line 209
    .local v0, "e":Ljava/nio/charset/CoderResult;
    :cond_3
    :try_start_2
    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    #@34
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@3a
    .local v2, "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/nio/charset/CoderResult;>;"
    if-eqz v2, :cond_1

    #@3c
    .line 210
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    .end local v0    # "e":Ljava/nio/charset/CoderResult;
    check-cast v0, Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    .local v0, "e":Ljava/nio/charset/CoderResult;
    goto :goto_0
.end method


# virtual methods
.method protected abstract create(I)Ljava/nio/charset/CoderResult;
.end method
