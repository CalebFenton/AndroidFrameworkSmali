.class public abstract Ljava/util/stream/ReferencePipeline$StatefulOp;
.super Ljava/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatefulOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/ReferencePipeline",
        "<TE_IN;TE_OUT;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/ReferencePipeline$StatefulOp;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/stream/ReferencePipeline$StatefulOp;->-assertionsDisabled:Z

    #@b
    .line 639
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V
    .locals 1
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TE_IN;*>;",
            "Ljava/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 651
    .local p0, "this":Ljava/util/stream/ReferencePipeline$StatefulOp;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>.StatefulOp<TE_IN;TE_OUT;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/ReferencePipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    #@3
    .line 652
    sget-boolean v0, Ljava/util/stream/ReferencePipeline$StatefulOp;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_1

    #@7
    invoke-virtual {p1}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0

    #@18
    .line 650
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method public final opIsStateful()Z
    .locals 1

    #@0
    .prologue
    .line 657
    .local p0, "this":Ljava/util/stream/ReferencePipeline$StatefulOp;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>.StatefulOp<TE_IN;TE_OUT;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method
