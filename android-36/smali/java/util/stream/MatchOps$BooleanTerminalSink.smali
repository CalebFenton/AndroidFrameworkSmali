.class abstract Ljava/util/stream/MatchOps$BooleanTerminalSink;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BooleanTerminalSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist stop:Z

.field blacklist value:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/MatchOps$MatchKind;)V
    .registers 3
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;

    .line 256
    .local p0, "this":Ljava/util/stream/MatchOps$BooleanTerminalSink;, "Ljava/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-static {p1}, Ljava/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Ljava/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    .line 258
    return-void
.end method


# virtual methods
.method public blacklist cancellationRequested()Z
    .registers 2

    .line 266
    .local p0, "this":Ljava/util/stream/MatchOps$BooleanTerminalSink;, "Ljava/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    return v0
.end method

.method public blacklist getAndClearState()Z
    .registers 2

    .line 261
    .local p0, "this":Ljava/util/stream/MatchOps$BooleanTerminalSink;, "Ljava/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    return v0
.end method
