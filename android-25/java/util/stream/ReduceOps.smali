.class final Ljava/util/stream/ReduceOps;
.super Ljava/lang/Object;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ReduceOps$AccumulatingSink;,
        Ljava/util/stream/ReduceOps$Box;,
        Ljava/util/stream/ReduceOps$ReduceOp;,
        Ljava/util/stream/ReduceOps$ReduceTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .param p0, "identity"    # D
    .param p2, "operator"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 518
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 543
    new-instance v0, Ljava/util/stream/ReduceOps$11;

    #@5
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@7
    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/ReduceOps$11;-><init>(Ljava/util/stream/StreamShape;DLjava/util/function/DoubleBinaryOperator;)V

    #@a
    return-object v0
.end method

.method public static makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .param p0, "operator"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "Ljava/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 560
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 593
    new-instance v0, Ljava/util/stream/ReduceOps$12;

    #@5
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@7
    invoke-direct {v0, v1, p0}, Ljava/util/stream/ReduceOps$12;-><init>(Ljava/util/stream/StreamShape;Ljava/util/function/DoubleBinaryOperator;)V

    #@a
    return-object v0
.end method

.method public static makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjDoubleConsumer",
            "<TR;>;",
            "Ljava/util/function/BinaryOperator",
            "<TR;>;)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "TR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 616
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p1, "accumulator":Ljava/util/function/ObjDoubleConsumer;, "Ljava/util/function/ObjDoubleConsumer<TR;>;"
    .local p2, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 617
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 618
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 636
    new-instance v0, Ljava/util/stream/ReduceOps$13;

    #@b
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@d
    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/ReduceOps$13;-><init>(Ljava/util/stream/StreamShape;Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)V

    #@10
    return-object v0
.end method

.method public static makeInt(ILjava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .param p0, "identity"    # I
    .param p1, "operator"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 271
    new-instance v0, Ljava/util/stream/ReduceOps$5;

    #@5
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@7
    invoke-direct {v0, v1, p0, p1}, Ljava/util/stream/ReduceOps$5;-><init>(Ljava/util/stream/StreamShape;ILjava/util/function/IntBinaryOperator;)V

    #@a
    return-object v0
.end method

.method public static makeInt(Ljava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .param p0, "operator"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/OptionalInt;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 321
    new-instance v0, Ljava/util/stream/ReduceOps$6;

    #@5
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@7
    invoke-direct {v0, v1, p0}, Ljava/util/stream/ReduceOps$6;-><init>(Ljava/util/stream/StreamShape;Ljava/util/function/IntBinaryOperator;)V

    #@a
    return-object v0
.end method

.method public static makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjIntConsumer",
            "<TR;>;",
            "Ljava/util/function/BinaryOperator",
            "<TR;>;)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "TR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 344
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p1, "accumulator":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<TR;>;"
    .local p2, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 346
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 364
    new-instance v0, Ljava/util/stream/ReduceOps$7;

    #@b
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@d
    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/ReduceOps$7;-><init>(Ljava/util/stream/StreamShape;Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)V

    #@10
    return-object v0
.end method

.method public static makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .param p0, "identity"    # J
    .param p2, "operator"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/LongBinaryOperator;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 407
    new-instance v0, Ljava/util/stream/ReduceOps$8;

    #@5
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@7
    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/ReduceOps$8;-><init>(Ljava/util/stream/StreamShape;JLjava/util/function/LongBinaryOperator;)V

    #@a
    return-object v0
.end method

.method public static makeLong(Ljava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .param p0, "operator"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongBinaryOperator;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/OptionalLong;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 424
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 457
    new-instance v0, Ljava/util/stream/ReduceOps$9;

    #@5
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@7
    invoke-direct {v0, v1, p0}, Ljava/util/stream/ReduceOps$9;-><init>(Ljava/util/stream/StreamShape;Ljava/util/function/LongBinaryOperator;)V

    #@a
    return-object v0
.end method

.method public static makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjLongConsumer",
            "<TR;>;",
            "Ljava/util/function/BinaryOperator",
            "<TR;>;)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "TR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 480
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p1, "accumulator":Ljava/util/function/ObjLongConsumer;, "Ljava/util/function/ObjLongConsumer<TR;>;"
    .local p2, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 481
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 482
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 500
    new-instance v0, Ljava/util/stream/ReduceOps$10;

    #@b
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@d
    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/ReduceOps$10;-><init>(Ljava/util/stream/StreamShape;Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)V

    #@10
    return-object v0
.end method

.method public static makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava/util/function/BiFunction",
            "<TU;-TT;TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;)",
            "Ljava/util/stream/TerminalOp",
            "<TT;TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p0, "seed":Ljava/lang/Object;, "TU;"
    .local p1, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TU;-TT;TU;>;"
    .local p2, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 71
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 88
    new-instance v0, Ljava/util/stream/ReduceOps$1;

    #@8
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@a
    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/ReduceOps$1;-><init>(Ljava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V

    #@d
    return-object v0
.end method

.method public static makeRef(Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)",
            "Ljava/util/stream/TerminalOp",
            "<TT;",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 106
    .local p0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 138
    new-instance v0, Ljava/util/stream/ReduceOps$2;

    #@5
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@7
    invoke-direct {v0, v1, p0}, Ljava/util/stream/ReduceOps$2;-><init>(Ljava/util/stream/StreamShape;Ljava/util/function/BinaryOperator;)V

    #@a
    return-object v0
.end method

.method public static makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;-TT;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;TR;>;)",
            "Ljava/util/stream/TerminalOp",
            "<TT;TR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 208
    .local p0, "seedFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p1, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;-TT;>;"
    .local p2, "reducer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 210
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 228
    new-instance v0, Ljava/util/stream/ReduceOps$4;

    #@b
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@d
    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/ReduceOps$4;-><init>(Ljava/util/stream/StreamShape;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    #@10
    return-object v0
.end method

.method public static makeRef(Ljava/util/stream/Collector;)Ljava/util/stream/TerminalOp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector",
            "<-TT;TI;*>;)",
            "Ljava/util/stream/TerminalOp",
            "<TT;TI;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    .local p0, "collector":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TI;*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/Collector;

    #@6
    invoke-interface {v0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    #@9
    move-result-object v3

    #@a
    .line 158
    .local v3, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TI;>;"
    invoke-interface {p0}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    #@d
    move-result-object v4

    #@e
    .line 159
    .local v4, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TI;-TT;>;"
    invoke-interface {p0}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    #@11
    move-result-object v5

    #@12
    .line 177
    .local v5, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TI;>;"
    new-instance v0, Ljava/util/stream/ReduceOps$3;

    #@14
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@16
    move-object v2, p0

    #@17
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReduceOps$3;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/Collector;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V

    #@1a
    return-object v0
.end method
