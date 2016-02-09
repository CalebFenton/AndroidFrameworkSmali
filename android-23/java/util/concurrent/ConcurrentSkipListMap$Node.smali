.class final Ljava/util/concurrent/ConcurrentSkipListMap$Node;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final nextOffset:J

.field private static final valueOffset:J


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field volatile next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 499
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 500
    const-class v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@8
    .line 501
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@a
    .line 502
    const-string/jumbo v3, "value"

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 501
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->valueOffset:J

    #@17
    .line 503
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@19
    .line 504
    const-string/jumbo v3, "next"

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1f
    move-result-object v3

    #@20
    .line 503
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@23
    move-result-wide v2

    #@24
    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 374
    return-void

    #@27
    .line 505
    :catch_0
    move-exception v0

    #@28
    .line 506
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@2a
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 382
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 383
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@5
    .line 384
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@7
    .line 385
    iput-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    .line 382
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 395
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    .local p1, "next":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 396
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@6
    .line 397
    iput-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@8
    .line 398
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@a
    .line 395
    return-void
.end method


# virtual methods
.method appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 442
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    .local p1, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@5
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 412
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->nextOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method casValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 405
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->valueOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 485
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 486
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    #@7
    .line 487
    return-object v1

    #@8
    .line 488
    :cond_0
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@a
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@c
    invoke-direct {v1, v2, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@f
    return-object v1
.end method

.method getValidValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 473
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@2
    .line 474
    .local v0, "v":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    #@4
    invoke-static {}, Ljava/util/concurrent/ConcurrentSkipListMap;->-get0()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 475
    :cond_0
    const/4 v1, 0x0

    #@b
    return-object v1

    #@c
    .line 476
    :cond_1
    return-object v0
.end method

.method helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 458
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    .local p1, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    if-ne p2, v0, :cond_1

    #@4
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@6
    if-ne p0, v0, :cond_1

    #@8
    .line 459
    if-eqz p2, :cond_0

    #@a
    iget-object v0, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@c
    if-eq v0, p2, :cond_2

    #@e
    .line 460
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@11
    .line 452
    :cond_1
    :goto_0
    return-void

    #@12
    .line 462
    :cond_2
    iget-object v0, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@17
    goto :goto_0
.end method

.method isBaseHeader()Z
    .locals 2

    #@0
    .prologue
    .line 433
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@2
    invoke-static {}, Ljava/util/concurrent/ConcurrentSkipListMap;->-get0()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method isMarker()Z
    .locals 1

    #@0
    .prologue
    .line 425
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@2
    if-ne v0, p0, :cond_0

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
.end method
