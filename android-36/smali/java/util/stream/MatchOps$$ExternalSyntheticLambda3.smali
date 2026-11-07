.class public final synthetic Ljava/util/stream/MatchOps$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/MatchOps$MatchKind;

.field public final synthetic blacklist f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/MatchOps$$ExternalSyntheticLambda3;->f$0:Ljava/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava/util/stream/MatchOps$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/stream/MatchOps$$ExternalSyntheticLambda3;->f$0:Ljava/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava/util/stream/MatchOps$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Ljava/util/stream/MatchOps;->lambda$makeRef$0(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method
