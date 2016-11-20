.class Ljava/util/Spliterators$1Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field nextElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$spliterator:Ljava/util/Spliterator;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava/util/Spliterator;)V
    .locals 1

    #@0
    .prologue
    .line 668
    .local p1, "val$spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    iput-object p1, p0, Ljava/util/Spliterators$1Adapter;->val$spliterator:Ljava/util/Spliterator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 669
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    #@8
    .line 668
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 674
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    #@3
    .line 675
    iput-object p1, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    #@5
    .line 673
    return-void
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 680
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 681
    iget-object v0, p0, Ljava/util/Spliterators$1Adapter;->val$spliterator:Ljava/util/Spliterator;

    #@6
    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@9
    .line 682
    :cond_0
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    #@b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 687
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/Spliterators$1Adapter;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 690
    :cond_0
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    #@d
    .line 691
    iget-object v0, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    #@f
    return-object v0

    #@10
    .line 688
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v0
.end method
