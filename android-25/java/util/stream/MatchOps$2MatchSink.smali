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
        "Ljava/util/stream/MatchOps$BooleanTerminalSink",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava/util/function/IntPredicate;


# direct methods
.method constructor <init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V
    .locals 0
    .param p1, "val$matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .param p2, "val$predicate"    # Ljava/util/function/IntPredicate;

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    iput-object p2, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava/util/function/IntPredicate;

    #@4
    .line 114
    invoke-direct {p0, p1}, Ljava/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;)V

    #@7
    .line 113
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava/util/function/IntPredicate;

    #@6
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    #@c
    invoke-static {v1}, Ljava/util/stream/MatchOps$MatchKind;->-get1(Ljava/util/stream/MatchOps$MatchKind;)Z

    #@f
    move-result v1

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 120
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    #@15
    .line 121
    iget-object v0, p0, Ljava/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava/util/stream/MatchOps$MatchKind;

    #@17
    invoke-static {v0}, Ljava/util/stream/MatchOps$MatchKind;->-get0(Ljava/util/stream/MatchOps$MatchKind;)Z

    #@1a
    move-result v0

    #@1b
    iput-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    #@1d
    .line 118
    :cond_0
    return-void
.end method
