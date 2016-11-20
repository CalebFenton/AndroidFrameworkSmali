.class final Ljava/util/stream/ReduceOps$4;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<TT;TR;",
        "Ljava/util/stream/ReduceOps$4ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic val$reducer:Ljava/util/function/BiConsumer;

.field final synthetic val$seedFactory:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/util/stream/StreamShape;

    #@0
    .prologue
    .line 228
    .local p2, "val$seedFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p3, "val$accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;-TT;>;"
    .local p4, "val$reducer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    iput-object p2, p0, Ljava/util/stream/ReduceOps$4;->val$seedFactory:Ljava/util/function/Supplier;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReduceOps$4;->val$accumulator:Ljava/util/function/BiConsumer;

    #@4
    iput-object p4, p0, Ljava/util/stream/ReduceOps$4;->val$reducer:Ljava/util/function/BiConsumer;

    #@6
    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    #@9
    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$4ReducingSink;
    .locals 4

    #@0
    .prologue
    .line 231
    new-instance v0, Ljava/util/stream/ReduceOps$4ReducingSink;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$4;->val$seedFactory:Ljava/util/function/Supplier;

    #@4
    iget-object v2, p0, Ljava/util/stream/ReduceOps$4;->val$accumulator:Ljava/util/function/BiConsumer;

    #@6
    iget-object v3, p0, Ljava/util/stream/ReduceOps$4;->val$reducer:Ljava/util/function/BiConsumer;

    #@8
    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$4ReducingSink;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    #@0
    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$4;->makeSink()Ljava/util/stream/ReduceOps$4ReducingSink;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
