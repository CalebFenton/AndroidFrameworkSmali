.class final Ljava/util/stream/ReduceOps$9;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/OptionalLong;",
        "Ljava/util/stream/ReduceOps$9ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/util/function/LongBinaryOperator;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/util/stream/StreamShape;
    .param p2, "val$operator"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 457
    iput-object p2, p0, Ljava/util/stream/ReduceOps$9;->val$operator:Ljava/util/function/LongBinaryOperator;

    #@2
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    #@5
    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$9ReducingSink;
    .locals 2

    #@0
    .prologue
    .line 460
    new-instance v0, Ljava/util/stream/ReduceOps$9ReducingSink;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$9;->val$operator:Ljava/util/function/LongBinaryOperator;

    #@4
    invoke-direct {v0, v1}, Ljava/util/stream/ReduceOps$9ReducingSink;-><init>(Ljava/util/function/LongBinaryOperator;)V

    #@7
    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    #@0
    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$9;->makeSink()Ljava/util/stream/ReduceOps$9ReducingSink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
