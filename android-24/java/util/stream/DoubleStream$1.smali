.class final Ljava/util/stream/DoubleStream$1;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoubleStream;->iterate(DLjava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field t:D

.field final synthetic val$f:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic val$seed:D


# direct methods
.method constructor <init>(DLjava/util/function/DoubleUnaryOperator;)V
    .locals 3
    .param p1, "val$seed"    # D
    .param p3, "val$f"    # Ljava/util/function/DoubleUnaryOperator;

    #@0
    .prologue
    .line 775
    iput-wide p1, p0, Ljava/util/stream/DoubleStream$1;->val$seed:D

    #@2
    iput-object p3, p0, Ljava/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 776
    iget-wide v0, p0, Ljava/util/stream/DoubleStream$1;->val$seed:D

    #@9
    iput-wide v0, p0, Ljava/util/stream/DoubleStream$1;->t:D

    #@b
    .line 775
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 259
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@5
    return-void
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 780
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 272
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextDouble()D
    .locals 6

    #@0
    .prologue
    .line 785
    iget-wide v0, p0, Ljava/util/stream/DoubleStream$1;->t:D

    #@2
    .line 786
    .local v0, "v":D
    iget-object v2, p0, Ljava/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    #@4
    iget-wide v4, p0, Ljava/util/stream/DoubleStream$1;->t:D

    #@6
    invoke-interface {v2, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    #@9
    move-result-wide v2

    #@a
    iput-wide v2, p0, Ljava/util/stream/DoubleStream$1;->t:D

    #@c
    .line 787
    return-wide v0
.end method
