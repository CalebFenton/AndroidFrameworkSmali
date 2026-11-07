.class Ljava/util/stream/MatchOps$1MatchSink;
.super Ljava/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/MatchOps$BooleanTerminalSink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

.field final synthetic blacklist val$predicate:Ljava/util/function/Predicate;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Ljava/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava/util/stream/MatchOps$1MatchSink;->val$predicate:Ljava/util/function/Predicate;

    .line 85
    invoke-direct {p0, p1}, Ljava/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;)V

    .line 86
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

    .line 90
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$1MatchSink;->stop:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/util/stream/MatchOps$1MatchSink;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Ljava/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljava/util/stream/MatchOps$MatchKind;->-$$Nest$fgetstopOnPredicateMatches(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/MatchOps$1MatchSink;->stop:Z

    .line 92
    iget-object v0, p0, Ljava/util/stream/MatchOps$1MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljava/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/stream/MatchOps$1MatchSink;->value:Z

    .line 94
    :cond_1d
    return-void
.end method
