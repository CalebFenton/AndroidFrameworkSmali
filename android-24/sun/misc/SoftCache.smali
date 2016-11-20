.class public Lsun/misc/SoftCache;
.super Ljava/util/AbstractMap;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/SoftCache$Entry;,
        Lsun/misc/SoftCache$EntrySet;,
        Lsun/misc/SoftCache$ValueCell;
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private hash:Ljava/util/Map;

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static synthetic -get0(Lsun/misc/SoftCache;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lsun/misc/SoftCache;)Ljava/lang/ref/ReferenceQueue;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0, p1}, Lsun/misc/SoftCache;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lsun/misc/SoftCache;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 212
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 160
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@8
    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    .line 449
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    #@d
    .line 213
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@12
    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@14
    .line 212
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 204
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 160
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@8
    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    .line 449
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    #@d
    .line 205
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    #@12
    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@14
    .line 204
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 191
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 160
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@8
    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    .line 449
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    #@d
    .line 192
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    #@12
    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@14
    .line 191
    return-void
.end method

.method private processQueue()V
    .locals 3

    #@0
    .prologue
    .line 170
    :goto_0
    iget-object v1, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/misc/SoftCache$ValueCell;

    #@8
    .local v0, "vc":Lsun/misc/SoftCache$ValueCell;
    if-eqz v0, :cond_1

    #@a
    .line 171
    invoke-static {v0}, Lsun/misc/SoftCache$ValueCell;->-wrap0(Lsun/misc/SoftCache$ValueCell;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@12
    invoke-static {v0}, Lsun/misc/SoftCache$ValueCell;->-get1(Lsun/misc/SoftCache$ValueCell;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    goto :goto_0

    #@1a
    .line 172
    :cond_0
    invoke-static {}, Lsun/misc/SoftCache$ValueCell;->-get0()I

    #@1d
    move-result v1

    #@1e
    add-int/lit8 v1, v1, -0x1

    #@20
    invoke-static {v1}, Lsun/misc/SoftCache$ValueCell;->-set0(I)I

    #@23
    goto :goto_0

    #@24
    .line 168
    :cond_1
    return-void
.end method

.method private static valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 344
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 336
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    #@3
    .line 337
    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@8
    .line 335
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 242
    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1, v0}, Lsun/misc/SoftCache$ValueCell;->-wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 455
    iget-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    #@3
    if-nez v0, :cond_0

    #@5
    new-instance v0, Lsun/misc/SoftCache$EntrySet;

    #@7
    invoke-direct {v0, p0, v1}, Lsun/misc/SoftCache$EntrySet;-><init>(Lsun/misc/SoftCache;Lsun/misc/SoftCache$EntrySet;)V

    #@a
    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    #@c
    .line 456
    :cond_0
    iget-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    #@e
    return-object v0
.end method

.method protected fill(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 266
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 286
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    #@3
    .line 287
    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 288
    .local v0, "v":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@b
    .line 289
    invoke-virtual {p0, p1}, Lsun/misc/SoftCache;->fill(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 290
    if-eqz v0, :cond_0

    #@11
    .line 291
    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@13
    iget-object v2, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@15
    invoke-static {p1, v0, v2}, Lsun/misc/SoftCache$ValueCell;->-wrap2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 292
    return-object v0

    #@1d
    .line 295
    :cond_0
    const/4 v1, 0x0

    #@1e
    invoke-static {v0, v1}, Lsun/misc/SoftCache$ValueCell;->-wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Lsun/misc/SoftCache;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    #@3
    .line 314
    iget-object v1, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-static {p1, p2, v1}, Lsun/misc/SoftCache$ValueCell;->-wrap2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    #@8
    move-result-object v0

    #@9
    .line 315
    .local v0, "vc":Lsun/misc/SoftCache$ValueCell;
    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@b
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x1

    #@10
    invoke-static {v1, v2}, Lsun/misc/SoftCache$ValueCell;->-wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 328
    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    #@3
    .line 329
    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    invoke-static {v0, v1}, Lsun/misc/SoftCache$ValueCell;->-wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Lsun/misc/SoftCache;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method
