.class final Ljava/util/stream/ReduceOps$3;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/stream/Collector;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<TT;TI;",
        "Ljava/util/stream/ReduceOps$3ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic val$collector:Ljava/util/stream/Collector;

.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/util/stream/Collector;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/util/stream/StreamShape;

    #@0
    .prologue
    .line 177
    .local p2, "val$collector":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TI;*>;"
    .local p3, "val$supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TI;>;"
    .local p4, "val$accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TI;-TT;>;"
    .local p5, "val$combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TI;>;"
    iput-object p2, p0, Ljava/util/stream/ReduceOps$3;->val$collector:Ljava/util/stream/Collector;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReduceOps$3;->val$supplier:Ljava/util/function/Supplier;

    #@4
    iput-object p4, p0, Ljava/util/stream/ReduceOps$3;->val$accumulator:Ljava/util/function/BiConsumer;

    #@6
    iput-object p5, p0, Ljava/util/stream/ReduceOps$3;->val$combiner:Ljava/util/function/BinaryOperator;

    #@8
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    #@b
    return-void
.end method


# virtual methods
.method public getOpFlags()I
    .locals 2

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Ljava/util/stream/ReduceOps$3;->val$collector:Ljava/util/stream/Collector;

    #@2
    invoke-interface {v0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 186
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    #@10
    .line 185
    :goto_0
    return v0

    #@11
    .line 187
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public makeSink()Ljava/util/stream/ReduceOps$3ReducingSink;
    .locals 4

    #@0
    .prologue
    .line 180
    new-instance v0, Ljava/util/stream/ReduceOps$3ReducingSink;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$3;->val$supplier:Ljava/util/function/Supplier;

    #@4
    iget-object v2, p0, Ljava/util/stream/ReduceOps$3;->val$accumulator:Ljava/util/function/BiConsumer;

    #@6
    iget-object v3, p0, Ljava/util/stream/ReduceOps$3;->val$combiner:Ljava/util/function/BinaryOperator;

    #@8
    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$3ReducingSink;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    #@0
    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$3;->makeSink()Ljava/util/stream/ReduceOps$3ReducingSink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
