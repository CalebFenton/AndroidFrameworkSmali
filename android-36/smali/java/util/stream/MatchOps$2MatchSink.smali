.class Ljava/util/stream/MatchOps$2MatchSink;
.super Ljava/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/MatchOps$BooleanTerminalSink<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

.field final synthetic blacklist val$predicate:Ljava/util/function/IntPredicate;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava/util/function/IntPredicate;

    .line 114
    invoke-direct {p0, p1}, Ljava/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;)V

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 4
    .param p1, "t"    # I

    .line 119
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$2MatchSink;->stop:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    iget-object v1, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljava/util/stream/MatchOps$MatchKind;->-$$Nest$fgetstopOnPredicateMatches(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/MatchOps$2MatchSink;->stop:Z

    .line 121
    iget-object v0, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljava/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/stream/MatchOps$2MatchSink;->value:Z

    .line 123
    :cond_1d
    return-void
.end method
