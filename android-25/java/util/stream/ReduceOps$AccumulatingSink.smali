.class interface abstract Ljava/util/stream/ReduceOps$AccumulatingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AccumulatingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K::",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<TT;TR;TK;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalSink",
        "<TT;TR;>;"
    }
.end annotation


# virtual methods
.method public abstract combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation
.end method
