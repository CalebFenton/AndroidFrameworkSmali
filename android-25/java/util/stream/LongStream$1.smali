.class final Ljava/util/stream/LongStream$1;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongStream;->iterate(JLjava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field t:J

.field final synthetic val$f:Ljava/util/function/LongUnaryOperator;

.field final synthetic val$seed:J


# direct methods
.method constructor <init>(JLjava/util/function/LongUnaryOperator;)V
    .locals 3
    .param p1, "val$seed"    # J
    .param p3, "val$f"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 735
    iput-wide p1, p0, Ljava/util/stream/LongStream$1;->val$seed:J

    #@2
    iput-object p3, p0, Ljava/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 736
    iget-wide v0, p0, Ljava/util/stream/LongStream$1;->val$seed:J

    #@9
    iput-wide v0, p0, Ljava/util/stream/LongStream$1;->t:J

    #@b
    .line 735
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 186
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 740
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 199
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextLong()J
    .locals 6

    #@0
    .prologue
    .line 745
    iget-wide v0, p0, Ljava/util/stream/LongStream$1;->t:J

    #@2
    .line 746
    .local v0, "v":J
    iget-object v2, p0, Ljava/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    #@4
    iget-wide v4, p0, Ljava/util/stream/LongStream$1;->t:J

    #@6
    invoke-interface {v2, v4, v5}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@9
    move-result-wide v2

    #@a
    iput-wide v2, p0, Ljava/util/stream/LongStream$1;->t:J

    #@c
    .line 747
    return-wide v0
.end method
