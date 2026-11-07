.class final Ljava/util/stream/WhileOps;
.super Ljava/lang/Object;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/WhileOps$DropWhileTask;,
        Ljava/util/stream/WhileOps$TakeWhileTask;,
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;,
        Ljava/util/stream/WhileOps$DropWhileSink;,
        Ljava/util/stream/WhileOps$DropWhileOp;
    }
.end annotation


# static fields
.field static final blacklist DROP_FLAGS:I

.field static final blacklist TAKE_FLAGS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    or-int/2addr v0, v1

    sput v0, Ljava/util/stream/WhileOps;->TAKE_FLAGS:I

    .line 52
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    sput v0, Ljava/util/stream/WhileOps;->DROP_FLAGS:I

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist makeDropWhileDouble(Ljava/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;",
            "Ljava/util/function/DoublePredicate;",
            ")",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 579
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v0, Ljava/util/stream/WhileOps$4Op;

    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/util/stream/WhileOps$4Op;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static blacklist makeDropWhileInt(Ljava/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;",
            "Ljava/util/function/IntPredicate;",
            ")",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 423
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance v0, Ljava/util/stream/WhileOps$2Op;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/util/stream/WhileOps$2Op;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v0
.end method

.method static blacklist makeDropWhileLong(Ljava/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;",
            "Ljava/util/function/LongPredicate;",
            ")",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 501
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v0, Ljava/util/stream/WhileOps$3Op;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/util/stream/WhileOps$3Op;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method static blacklist makeDropWhileRef(Ljava/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 344
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v0, Ljava/util/stream/WhileOps$1Op;

    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/util/stream/WhileOps$1Op;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method static blacklist makeTakeWhileDouble(Ljava/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;",
            "Ljava/util/function/DoublePredicate;",
            ")",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 243
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/util/stream/WhileOps$4;

    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/util/stream/WhileOps$4;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static blacklist makeTakeWhileInt(Ljava/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;",
            "Ljava/util/function/IntPredicate;",
            ")",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 123
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/stream/WhileOps$2;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/util/stream/WhileOps$2;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v0
.end method

.method static blacklist makeTakeWhileLong(Ljava/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;",
            "Ljava/util/function/LongPredicate;",
            ")",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 183
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/util/stream/WhileOps$3;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/util/stream/WhileOps$3;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method static blacklist makeTakeWhileRef(Ljava/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/stream/WhileOps$1;

    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/util/stream/WhileOps$1;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method
