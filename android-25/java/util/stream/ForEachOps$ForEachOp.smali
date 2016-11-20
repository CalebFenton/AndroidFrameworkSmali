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
        Ljava/util/stream/ForEachOps$ForEachOp$OfInt;,
        Ljava/util/stream/ForEachOps$ForEachOp$OfLong;,
        Ljava/util/stream/ForEachOps$ForEachOp$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalOp",
        "<TT;",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/stream/TerminalSink",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final ordered:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "ordered"    # Z

    #@0
    .prologue
    .line 137
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    iput-boolean p1, p0, Ljava/util/stream/ForEachOps$ForEachOp;->ordered:Z

    #@5
    .line 137
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .param p1, "helper"    # Ljava/util/stream/PipelineHelper;
    .param p2, "spliterator"    # Ljava/util/Spliterator;

    #@0
    .prologue
    .line 155
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    iget-boolean v0, p0, Ljava/util/stream/ForEachOps$ForEachOp;->ordered:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 158
    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    #@6
    invoke-direct {v0, p1, p2, p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@c
    .line 161
    :goto_0
    const/4 v0, 0x0

    #@d
    return-object v0

    #@e
    .line 160
    :cond_0
    new-instance v0, Ljava/util/stream/ForEachOps$ForEachTask;

    #@10
    invoke-virtual {p1, p0}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, p1, p2, v1}, Ljava/util/stream/ForEachOps$ForEachTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@1a
    goto :goto_0
.end method

.method public bridge synthetic evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .param p1, "helper"    # Ljava/util/stream/PipelineHelper;
    .param p2, "spliterator"    # Ljava/util/Spliterator;

    #@0
    .prologue
    .line 149
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    #@0
    .prologue
    .line 151
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-virtual {p1, p0, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/ForEachOps$ForEachOp;

    #@6
    invoke-virtual {v0}, Ljava/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 168
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getOpFlags()I
    .locals 1

    #@0
    .prologue
    .line 145
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/ForEachOps$ForEachOp;->ordered:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    #@8
    goto :goto_0
.end method
