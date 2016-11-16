.class final Ljava/util/stream/ReduceOps$1;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<TT;TU;",
        "Ljava/util/stream/ReduceOps$1ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$reducer:Ljava/util/function/BiFunction;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/util/stream/StreamShape;

    #@0
    .prologue
    .line 88
    .local p2, "val$seed":Ljava/lang/Object;, "TU;"
    .local p3, "val$reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TU;-TT;TU;>;"
    .local p4, "val$combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    iput-object p2, p0, Ljava/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReduceOps$1;->val$reducer:Ljava/util/function/BiFunction;

    #@4
    iput-object p4, p0, Ljava/util/stream/ReduceOps$1;->val$combiner:Ljava/util/function/BinaryOperator;

    #@6
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    #@9
    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$1ReducingSink;
    .locals 4

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/util/stream/ReduceOps$1ReducingSink;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    #@4
    iget-object v2, p0, Ljava/util/stream/ReduceOps$1;->val$reducer:Ljava/util/function/BiFunction;

    #@6
    iget-object v3, p0, Ljava/util/stream/ReduceOps$1;->val$combiner:Ljava/util/function/BinaryOperator;

    #@8
    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$1ReducingSink;-><init>(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    #@0
    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$1;->makeSink()Ljava/util/stream/ReduceOps$1ReducingSink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
