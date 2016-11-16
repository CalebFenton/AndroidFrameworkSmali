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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$DistinctSpliterator$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final seen:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1242
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    #@7
    .line 1239
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1254
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    #@8
    .line 1253
    return-void
.end method

.method private constructor <init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1257
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "seen":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1258
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    #@5
    .line 1259
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    .line 1257
    return-void
.end method

.method private mapNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1269
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p1

    #@3
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    sget-object p1, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    #@5
    goto :goto_0
.end method


# virtual methods
.method synthetic -java_util_stream_StreamSpliterators$DistinctSpliterator_lambda$18(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1287
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-direct {p0, p2}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1288
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@11
    .line 0
    :cond_0
    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1264
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    #@2
    .line 1263
    return-void
.end method

.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1306
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    #@2
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    #@5
    move-result v0

    #@6
    and-int/lit16 v0, v0, -0x4055

    #@8
    or-int/lit8 v0, v0, 0x1

    #@a
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1301
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    #@2
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1286
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    #@2
    new-instance v1, Ljava/util/stream/StreamSpliterators$DistinctSpliterator$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    #@4
    invoke-direct {v1, p0, p1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/stream/StreamSpliterators$DistinctSpliterator;Ljava/util/function/Consumer;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@a
    .line 1285
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1313
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    #@2
    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v3, 0x0

    #@1
    .line 1274
    :cond_0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    #@3
    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1275
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    #@b
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    #@d
    invoke-direct {p0, v1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 1276
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    #@1b
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1e
    .line 1277
    iput-object v3, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    #@20
    .line 1278
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 1281
    :cond_1
    const/4 v0, 0x0

    #@23
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 1295
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    #@3
    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@6
    move-result-object v0

    #@7
    .line 1296
    .local v0, "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v0, :cond_0

    #@9
    new-instance v1, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    #@b
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-direct {v1, v0, v2}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    #@10
    :cond_0
    return-object v1
.end method
