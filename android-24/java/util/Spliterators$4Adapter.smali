.class Ljava/util/Spliterators$4Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:D

.field final synthetic val$spliterator:Ljava/util/Spliterator$OfDouble;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfDouble;)V
    .locals 1
    .param p1, "val$spliterator"    # Ljava/util/Spliterator$OfDouble;

    #@0
    .prologue
    .line 803
    iput-object p1, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 804
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    #@8
    .line 803
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    #@0
    .prologue
    .line 809
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    #@3
    .line 810
    iput-wide p1, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    #@5
    .line 808
    return-void
.end method

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
    .line 815
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 816
    iget-object v0, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    #@6
    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@9
    .line 817
    :cond_0
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    #@b
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
    .locals 2

    #@0
    .prologue
    .line 822
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/Spliterators$4Adapter;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 825
    :cond_0
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    #@d
    .line 826
    iget-wide v0, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    #@f
    return-wide v0

    #@10
    .line 823
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v0
.end method
