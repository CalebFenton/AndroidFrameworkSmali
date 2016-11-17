.class Ljava/util/BitSet$1BitSetIterator;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/BitSet;->stream()Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitSetIterator"
.end annotation


# instance fields
.field next:I

.field final synthetic this$0:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Ljava/util/BitSet;)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 1209
    iput-object p1, p0, Ljava/util/BitSet$1BitSetIterator;->this$0:Ljava/util/BitSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1210
    iget-object v0, p0, Ljava/util/BitSet$1BitSetIterator;->this$0:Ljava/util/BitSet;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    #@e
    .line 1209
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
    .locals 2

    #@0
    .prologue
    .line 1214
    iget v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
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
    .line 1219
    iget v1, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    #@2
    const/4 v2, -0x1

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 1220
    iget v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    #@7
    .line 1221
    .local v0, "ret":I
    iget-object v1, p0, Ljava/util/BitSet$1BitSetIterator;->this$0:Ljava/util/BitSet;

    #@9
    iget v2, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@10
    move-result v1

    #@11
    iput v1, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    #@13
    .line 1222
    return v0

    #@14
    .line 1224
    .end local v0    # "ret":I
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@16
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@19
    throw v1
.end method
