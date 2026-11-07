.class Ljava/util/stream/ReduceOps$1ReducingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$Box<",
        "TU;>;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TU;",
        "Ljava/util/stream/ReduceOps$1ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic blacklist val$reducer:Ljava/util/function/BiFunction;

.field final synthetic blacklist val$seed:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->val$seed:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->val$reducer:Ljava/util/function/BiFunction;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->val$reducer:Ljava/util/function/BiFunction;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 75
    iget-object v0, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->val$seed:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$1ReducingSink;)V
    .registers 5
    .param p1, "other"    # Ljava/util/stream/ReduceOps$1ReducingSink;

    .line 85
    iget-object v0, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljava/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$1ReducingSink;->state:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public bridge synthetic blacklist combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 72
    check-cast p1, Ljava/util/stream/ReduceOps$1ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$1ReducingSink;->combine(Ljava/util/stream/ReduceOps$1ReducingSink;)V

    return-void
.end method
