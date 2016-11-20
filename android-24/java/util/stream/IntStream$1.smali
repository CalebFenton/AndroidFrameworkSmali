.class final Ljava/util/stream/IntStream$1;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntStream;->iterate(ILjava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field t:I

.field final synthetic val$f:Ljava/util/function/IntUnaryOperator;

.field final synthetic val$seed:I


# direct methods
.method constructor <init>(ILjava/util/function/IntUnaryOperator;)V
    .locals 1
    .param p1, "val$seed"    # I
    .param p2, "val$f"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 743
    iput p1, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    #@2
    iput-object p2, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 744
    iget v0, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    #@9
    iput v0, p0, Ljava/util/stream/IntStream$1;->t:I

    #@b
    .line 743
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 112
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 748
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 125
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextInt()I
    .locals 3

    #@0
    .prologue
    .line 753
    iget v0, p0, Ljava/util/stream/IntStream$1;->t:I

    #@2
    .line 754
    .local v0, "v":I
    iget-object v1, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    #@4
    iget v2, p0, Ljava/util/stream/IntStream$1;->t:I

    #@6
    invoke-interface {v1, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@9
    move-result v1

    #@a
    iput v1, p0, Ljava/util/stream/IntStream$1;->t:I

    #@c
    .line 755
    return v0
.end method
