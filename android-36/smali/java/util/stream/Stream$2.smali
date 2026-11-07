.class Ljava/util/stream/Stream$2;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Stream;->iterate(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist finished:Z

.field blacklist prev:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist started:Z

.field final synthetic blacklist val$hasNext:Ljava/util/function/Predicate;

.field final synthetic blacklist val$next:Ljava/util/function/UnaryOperator;

.field final synthetic blacklist val$seed:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;Ljava/util/function/Predicate;)V
    .registers 7
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1518
    iput-object p4, p0, Ljava/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iput-object p5, p0, Ljava/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    iput-object p6, p0, Ljava/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1545
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    iget-boolean v0, p0, Ljava/util/stream/Stream$2;->finished:Z

    if-eqz v0, :cond_8

    .line 1547
    return-void

    .line 1548
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Stream$2;->finished:Z

    .line 1549
    iget-boolean v0, p0, Ljava/util/stream/Stream$2;->started:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iget-object v1, p0, Ljava/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    :cond_18
    iget-object v0, p0, Ljava/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    .line 1550
    .local v0, "t":Ljava/lang/Object;, "TT;"
    :goto_1a
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/Stream$2;->prev:Ljava/lang/Object;

    .line 1551
    :goto_1d
    iget-object v1, p0, Ljava/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1552
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1553
    iget-object v1, p0, Ljava/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    .line 1555
    :cond_2f
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1524
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    iget-boolean v0, p0, Ljava/util/stream/Stream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1526
    return v1

    .line 1528
    :cond_9
    iget-boolean v0, p0, Ljava/util/stream/Stream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1529
    iget-object v0, p0, Ljava/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iget-object v3, p0, Ljava/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "t":Ljava/lang/Object;, "TT;"
    goto :goto_1b

    .line 1531
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_17
    iget-object v0, p0, Ljava/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    .line 1532
    .restart local v0    # "t":Ljava/lang/Object;, "TT;"
    iput-boolean v2, p0, Ljava/util/stream/Stream$2;->started:Z

    .line 1534
    :goto_1b
    iget-object v3, p0, Ljava/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

    invoke-interface {v3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1535
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/stream/Stream$2;->prev:Ljava/lang/Object;

    .line 1536
    iput-boolean v2, p0, Ljava/util/stream/Stream$2;->finished:Z

    .line 1537
    return v1

    .line 1539
    :cond_29
    iput-object v0, p0, Ljava/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1540
    return v2
.end method
