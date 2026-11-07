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
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist nextElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$spliterator:Ljava/util/Spliterator;

.field blacklist valueReady:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 668
    iput-object p1, p0, Ljava/util/Spliterators$1Adapter;->val$spliterator:Ljava/util/Spliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 674
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    .line 675
    iput-object p1, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    .line 676
    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 699
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    if-eqz v0, :cond_12

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    .line 702
    iget-object v0, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    .line 703
    .local v0, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    .line 704
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 706
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_12
    iget-object v0, p0, Ljava/util/Spliterators$1Adapter;->val$spliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 707
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 680
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 681
    iget-object v0, p0, Ljava/util/Spliterators$1Adapter;->val$spliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 682
    :cond_9
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 687
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Spliterators$1Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 688
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 690
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    .line 691
    iget-object v0, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    .line 692
    .local v0, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    .line 693
    return-object v0
.end method
