.class Ljava/util/Spliterators$2Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:I

.field final synthetic val$spliterator:Ljava/util/Spliterator$OfInt;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfInt;)V
    .locals 1
    .param p1, "val$spliterator"    # Ljava/util/Spliterator$OfInt;

    #@0
    .prologue
    .line 713
    iput-object p1, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 714
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    #@8
    .line 713
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    #@0
    .prologue
    .line 719
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    #@3
    .line 720
    iput p1, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    #@5
    .line 718
    return-void
.end method

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
    .line 725
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 726
    iget-object v0, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    #@6
    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@9
    .line 727
    :cond_0
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    #@b
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
    .locals 1

    #@0
    .prologue
    .line 732
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/Spliterators$2Adapter;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 735
    :cond_0
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    #@d
    .line 736
    iget v0, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    #@f
    return v0

    #@10
    .line 733
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v0
.end method
