.class abstract Ljava/util/stream/ForEachOps$ForEachOp;
.super Ljava/lang/Object;
.source "ForEachOps.java"

# interfaces
.implements Ljava/util/stream/TerminalOp;
.implements Ljava/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ForEachOp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;,
        Ljava/util/stream/ForEachOps$ForEachOp$OfLong;,
        Ljava/util/stream/ForEachOps$ForEachOp$OfInt;,
        Ljava/util/stream/ForEachOps$ForEachOp$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalOp<",
        "TT;",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/stream/TerminalSink<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist ordered:Z


# direct methods
.method protected constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "ordered"    # Z

    .line 137
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean p1, p0, Ljava/util/stream/ForEachOps$ForEachOp;->ordered:Z

    .line 139
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 133
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public blacklist evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 157
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-boolean v0, p0, Ljava/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_d

    .line 158
    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v0, p1, p2, p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V

    invoke-virtual {v0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->invoke()Ljava/lang/Object;

    goto :goto_19

    .line 160
    :cond_d
    new-instance v0, Ljava/util/stream/ForEachOps$ForEachTask;

    invoke-virtual {p1, p0}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava/util/stream/ForEachOps$ForEachTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V

    invoke-virtual {v0}, Ljava/util/stream/ForEachOps$ForEachTask;->invoke()Ljava/lang/Object;

    .line 161
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 133
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public blacklist evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 151
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-virtual {p1, p0, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ForEachOps$ForEachOp;

    invoke-virtual {v0}, Ljava/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 133
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/lang/Void;
    .registers 2

    .line 168
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOpFlags()I
    .registers 2

    .line 145
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_8
    return v0
.end method
