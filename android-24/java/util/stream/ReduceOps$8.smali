.class final Ljava/util/stream/ReduceOps$8;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/lang/Long;",
        "Ljava/util/stream/ReduceOps$8ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$identity:J

.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;JLjava/util/function/LongBinaryOperator;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/util/stream/StreamShape;
    .param p2, "val$identity"    # J
    .param p4, "val$operator"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 407
    iput-wide p2, p0, Ljava/util/stream/ReduceOps$8;->val$identity:J

    #@2
    iput-object p4, p0, Ljava/util/stream/ReduceOps$8;->val$operator:Ljava/util/function/LongBinaryOperator;

    #@4
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    #@7
    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$8ReducingSink;
    .locals 4

    #@0
    .prologue
    .line 410
    new-instance v0, Ljava/util/stream/ReduceOps$8ReducingSink;

    #@2
    iget-wide v2, p0, Ljava/util/stream/ReduceOps$8;->val$identity:J

    #@4
    iget-object v1, p0, Ljava/util/stream/ReduceOps$8;->val$operator:Ljava/util/function/LongBinaryOperator;

    #@6
    invoke-direct {v0, v2, v3, v1}, Ljava/util/stream/ReduceOps$8ReducingSink;-><init>(JLjava/util/function/LongBinaryOperator;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    #@0
    .prologue
    .line 409
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$8;->makeSink()Ljava/util/stream/ReduceOps$8ReducingSink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
