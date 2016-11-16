.class Ljava/util/Spliterators$3Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:J

.field final synthetic val$spliterator:Ljava/util/Spliterator$OfLong;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfLong;)V
    .locals 1
    .param p1, "val$spliterator"    # Ljava/util/Spliterator$OfLong;

    #@0
    .prologue
    .line 758
    iput-object p1, p0, Ljava/util/Spliterators$3Adapter;->val$spliterator:Ljava/util/Spliterator$OfLong;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 759
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    #@8
    .line 758
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    #@0
    .prologue
    .line 764
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    #@3
    .line 765
    iput-wide p1, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    #@5
    .line 763
    return-void
.end method

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
    .line 770
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 771
    iget-object v0, p0, Ljava/util/Spliterators$3Adapter;->val$spliterator:Ljava/util/Spliterator$OfLong;

    #@6
    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@9
    .line 772
    :cond_0
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    #@b
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
    .locals 2

    #@0
    .prologue
    .line 777
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/Spliterators$3Adapter;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 780
    :cond_0
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    #@d
    .line 781
    iget-wide v0, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    #@f
    return-wide v0

    #@10
    .line 778
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v0
.end method
