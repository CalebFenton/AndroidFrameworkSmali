.class final Ljava/util/stream/ReduceOps$2;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<TT;",
        "Ljava/util/Optional",
        "<TT;>;",
        "Ljava/util/stream/ReduceOps$2ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$operator:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/util/function/BinaryOperator;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/util/stream/StreamShape;

    #@0
    .prologue
    .line 138
    .local p2, "val$operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    iput-object p2, p0, Ljava/util/stream/ReduceOps$2;->val$operator:Ljava/util/function/BinaryOperator;

    #@2
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    #@5
    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$2ReducingSink;
    .locals 2

    #@0
    .prologue
    .line 141
    new-instance v0, Ljava/util/stream/ReduceOps$2ReducingSink;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$2;->val$operator:Ljava/util/function/BinaryOperator;

    #@4
    invoke-direct {v0, v1}, Ljava/util/stream/ReduceOps$2ReducingSink;-><init>(Ljava/util/function/BinaryOperator;)V

    #@7
    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$2;->makeSink()Ljava/util/stream/ReduceOps$2ReducingSink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
