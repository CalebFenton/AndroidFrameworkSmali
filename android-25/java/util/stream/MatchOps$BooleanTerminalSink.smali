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
        "Ljava/util/stream/Sink",
        "<TT;>;"
    }
.end annotation


# instance fields
.field stop:Z

.field value:Z


# direct methods
.method constructor <init>(Ljava/util/stream/MatchOps$MatchKind;)V
    .locals 1
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;

    #@0
    .prologue
    .line 256
    .local p0, "this":Ljava/util/stream/MatchOps$BooleanTerminalSink;, "Ljava/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 257
    invoke-static {p1}, Ljava/util/stream/MatchOps$MatchKind;->-get0(Ljava/util/stream/MatchOps$MatchKind;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    iput-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    #@c
    .line 256
    return-void

    #@d
    .line 257
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method


# virtual methods
.method public cancellationRequested()Z
    .locals 1

    #@0
    .prologue
    .line 266
    .local p0, "this":Ljava/util/stream/MatchOps$BooleanTerminalSink;, "Ljava/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    #@2
    return v0
.end method

.method public getAndClearState()Z
    .locals 1

    #@0
    .prologue
    .line 261
    .local p0, "this":Ljava/util/stream/MatchOps$BooleanTerminalSink;, "Ljava/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    #@2
    return v0
.end method
