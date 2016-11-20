.class Lsun/misc/SoftCache$EntrySet$1;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hashIterator:Ljava/util/Iterator;

.field next:Lsun/misc/SoftCache$Entry;

.field final synthetic this$1:Lsun/misc/SoftCache$EntrySet;


# direct methods
.method constructor <init>(Lsun/misc/SoftCache$EntrySet;)V
    .locals 1
    .param p1, "this$1"    # Lsun/misc/SoftCache$EntrySet;

    #@0
    .prologue
    .line 396
    iput-object p1, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 397
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    #@7
    iget-object v0, v0, Lsun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    #@f
    .line 398
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    #@12
    .line 396
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    #@0
    .prologue
    .line 401
    :cond_0
    iget-object v3, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    #@2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 402
    iget-object v3, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    #@a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/Map$Entry;

    #@10
    .line 403
    .local v0, "ent":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lsun/misc/SoftCache$ValueCell;

    #@16
    .line 404
    .local v2, "vc":Lsun/misc/SoftCache$ValueCell;
    const/4 v1, 0x0

    #@17
    .line 405
    .local v1, "v":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@19
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 409
    .end local v1    # "v":Ljava/lang/Object;
    :cond_1
    new-instance v3, Lsun/misc/SoftCache$Entry;

    #@21
    iget-object v4, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    #@23
    iget-object v4, v4, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    #@25
    invoke-direct {v3, v4, v0, v1}, Lsun/misc/SoftCache$Entry;-><init>(Lsun/misc/SoftCache;Ljava/util/Map$Entry;Ljava/lang/Object;)V

    #@28
    iput-object v3, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    #@2a
    .line 410
    const/4 v3, 0x1

    #@2b
    return v3

    #@2c
    .line 412
    .end local v0    # "ent":Ljava/util/Map$Entry;
    .end local v2    # "vc":Lsun/misc/SoftCache$ValueCell;
    :cond_2
    const/4 v3, 0x0

    #@2d
    return v3
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 416
    iget-object v1, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-virtual {p0}, Lsun/misc/SoftCache$EntrySet$1;->hasNext()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 418
    :cond_0
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    #@d
    .line 419
    .local v0, "e":Lsun/misc/SoftCache$Entry;
    iput-object v2, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    #@f
    .line 420
    return-object v0

    #@10
    .line 417
    .end local v0    # "e":Lsun/misc/SoftCache$Entry;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v1
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@5
    .line 423
    return-void
.end method
