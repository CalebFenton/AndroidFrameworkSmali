.class Ljava/util/stream/Collectors$1PairBox;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Collectors;->teeing0(Ljava/util/stream/Collector;Ljava/util/stream/Collector;Ljava/util/function/BiFunction;)Ljava/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairBox"
.end annotation


# instance fields
.field blacklist left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA1;"
        }
    .end annotation
.end field

.field blacklist right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA2;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$c1Accumulator:Ljava/util/function/BiConsumer;

.field final synthetic blacklist val$c1Combiner:Ljava/util/function/BinaryOperator;

.field final synthetic blacklist val$c1Finisher:Ljava/util/function/Function;

.field final synthetic blacklist val$c1Supplier:Ljava/util/function/Supplier;

.field final synthetic blacklist val$c2Accumulator:Ljava/util/function/BiConsumer;

.field final synthetic blacklist val$c2Combiner:Ljava/util/function/BinaryOperator;

.field final synthetic blacklist val$c2Finisher:Ljava/util/function/Function;

.field final synthetic blacklist val$c2Supplier:Ljava/util/function/Supplier;

.field final synthetic blacklist val$merger:Ljava/util/function/BiFunction;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1994
    iput-object p1, p0, Ljava/util/stream/Collectors$1PairBox;->val$c1Supplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljava/util/stream/Collectors$1PairBox;->val$c2Supplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Ljava/util/stream/Collectors$1PairBox;->val$c1Accumulator:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Ljava/util/stream/Collectors$1PairBox;->val$c2Accumulator:Ljava/util/function/BiConsumer;

    iput-object p5, p0, Ljava/util/stream/Collectors$1PairBox;->val$c1Combiner:Ljava/util/function/BinaryOperator;

    iput-object p6, p0, Ljava/util/stream/Collectors$1PairBox;->val$c2Combiner:Ljava/util/function/BinaryOperator;

    iput-object p7, p0, Ljava/util/stream/Collectors$1PairBox;->val$c1Finisher:Ljava/util/function/Function;

    iput-object p8, p0, Ljava/util/stream/Collectors$1PairBox;->val$c2Finisher:Ljava/util/function/Function;

    iput-object p9, p0, Ljava/util/stream/Collectors$1PairBox;->val$merger:Ljava/util/function/BiFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1995
    iget-object p1, p0, Ljava/util/stream/Collectors$1PairBox;->val$c1Supplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    .line 1996
    iget-object p1, p0, Ljava/util/stream/Collectors$1PairBox;->val$c2Supplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method blacklist add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1999
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/Collectors$1PairBox;->val$c1Accumulator:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2000
    iget-object v0, p0, Ljava/util/stream/Collectors$1PairBox;->val$c2Accumulator:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2001
    return-void
.end method

.method blacklist combine(Ljava/util/stream/Collectors$1PairBox;)Ljava/util/stream/Collectors$1PairBox;
    .registers 5
    .param p1, "other"    # Ljava/util/stream/Collectors$1PairBox;

    .line 2004
    iget-object v0, p0, Ljava/util/stream/Collectors$1PairBox;->val$c1Combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    iget-object v2, p1, Ljava/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    .line 2005
    iget-object v0, p0, Ljava/util/stream/Collectors$1PairBox;->val$c2Combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    iget-object v2, p1, Ljava/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    .line 2006
    return-object p0
.end method

.method blacklist get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Ljava/util/stream/Collectors$1PairBox;->val$c1Finisher:Ljava/util/function/Function;

    iget-object v1, p0, Ljava/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2011
    .local v0, "r1":Ljava/lang/Object;, "TR1;"
    iget-object v1, p0, Ljava/util/stream/Collectors$1PairBox;->val$c2Finisher:Ljava/util/function/Function;

    iget-object v2, p0, Ljava/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2012
    .local v1, "r2":Ljava/lang/Object;, "TR2;"
    iget-object v2, p0, Ljava/util/stream/Collectors$1PairBox;->val$merger:Ljava/util/function/BiFunction;

    invoke-interface {v2, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
