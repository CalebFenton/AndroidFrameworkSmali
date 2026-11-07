.class Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;
.super Landroid/media/internal/guava_common/collect/Ordering;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArbitraryOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Ordering<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist uids:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 332
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Ordering;-><init>()V

    .line 334
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 335
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMaker;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/MapMaker;-><init>()V

    .line 336
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/Platform;->tryWeakKeys(Landroid/media/internal/guava_common/collect/MapMaker;)Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private blacklist getUid(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3

    .line 339
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1f

    .line 344
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 345
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1f

    return-object p0

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, -0x1

    if-nez p1, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x1

    if-nez p2, :cond_c

    return v1

    .line 362
    :cond_c
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 363
    invoke-virtual {p0, p2}, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-eq v2, v3, :cond_1a

    if-ge v2, v3, :cond_19

    return v0

    :cond_19
    return v1

    .line 369
    :cond_1a
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->getUid(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2}, Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;->getUid(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    if-eqz p0, :cond_29

    return p0

    .line 371
    :cond_29
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method blacklist identityHashCode(Ljava/lang/Object;)I
    .registers 2

    .line 390
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 378
    const-string p0, "Ordering.arbitrary()"

    return-object p0
.end method
