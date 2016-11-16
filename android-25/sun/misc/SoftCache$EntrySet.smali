.class Lsun/misc/SoftCache$EntrySet;
.super Ljava/util/AbstractSet;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field hashEntries:Ljava/util/Set;

.field final synthetic this$0:Lsun/misc/SoftCache;


# direct methods
.method private constructor <init>(Lsun/misc/SoftCache;)V
    .locals 1
    .param p1, "this$0"    # Lsun/misc/SoftCache;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    .line 392
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    #@7
    invoke-static {v0}, Lsun/misc/SoftCache;->-get0(Lsun/misc/SoftCache;)Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lsun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    #@11
    .line 391
    return-void
.end method

.method synthetic constructor <init>(Lsun/misc/SoftCache;Lsun/misc/SoftCache$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Lsun/misc/SoftCache;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/misc/SoftCache$EntrySet;-><init>(Lsun/misc/SoftCache;)V

    #@3
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 431
    invoke-virtual {p0}, Lsun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 396
    new-instance v0, Lsun/misc/SoftCache$EntrySet$1;

    #@2
    invoke-direct {v0, p0}, Lsun/misc/SoftCache$EntrySet$1;-><init>(Lsun/misc/SoftCache$EntrySet;)V

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    #@2
    invoke-static {v0}, Lsun/misc/SoftCache;->-wrap1(Lsun/misc/SoftCache;)V

    #@5
    .line 442
    instance-of v0, p1, Lsun/misc/SoftCache$Entry;

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    #@b
    nop

    #@c
    nop

    #@d
    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lsun/misc/SoftCache$Entry;->-get0(Lsun/misc/SoftCache$Entry;)Ljava/util/Map$Entry;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 443
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method public size()I
    .locals 3

    #@0
    .prologue
    .line 435
    const/4 v1, 0x0

    #@1
    .line 436
    .local v1, "j":I
    invoke-virtual {p0}, Lsun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    add-int/lit8 v1, v1, 0x1

    #@d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    goto :goto_0

    #@11
    .line 437
    :cond_0
    return v1
.end method
