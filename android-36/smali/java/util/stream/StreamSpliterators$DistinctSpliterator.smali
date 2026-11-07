.class final Ljava/util/stream/StreamSpliterators$DistinctSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final blacklist s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist seen:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$gFJqRoTBpmVCO2CMUVfGwySwIAc(Ljava/util/stream/StreamSpliterators$DistinctSpliterator;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->lambda$forEachRemaining$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1265
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 1266
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1268
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "seen":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    .line 1270
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1271
    return-void
.end method

.method private synthetic blacklist lambda$forEachRemaining$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 6
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1298
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1299
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1301
    :cond_11
    return-void
.end method

.method private blacklist mapNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1280
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    sget-object v0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    :goto_6
    return-object v0
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1275
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    .line 1276
    return-void
.end method

.method public whitelist test-api characteristics()I
    .registers 2

    .line 1317
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4055

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1312
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1297
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    new-instance v1, Ljava/util/stream/StreamSpliterators$DistinctSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/StreamSpliterators$DistinctSpliterator;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1302
    return-void
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 1324
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1285
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    nop

    :cond_1
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1286
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1287
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    .line 1289
    const/4 v0, 0x1

    return v0

    .line 1292
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1306
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 1307
    .local v0, "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v0, :cond_10

    new-instance v1, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0, v2}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method
