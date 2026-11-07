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
        "Ljava/util/stream/ReferencePipeline<",
        "TE_IN;TE_OUT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 852
    const-class v0, Ljava/util/stream/ReferencePipeline;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V
    .registers 4
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TE_IN;*>;",
            "Ljava/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 865
    .local p0, "this":Ljava/util/stream/ReferencePipeline$StatefulOp;, "Ljava/util/stream/ReferencePipeline$StatefulOp<TE_IN;TE_OUT;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/ReferencePipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 866
    nop

    .line 867
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public final greylist-max-o opIsStateful()Z
    .registers 2

    .line 872
    .local p0, "this":Ljava/util/stream/ReferencePipeline$StatefulOp;, "Ljava/util/stream/ReferencePipeline$StatefulOp<TE_IN;TE_OUT;>;"
    const/4 v0, 0x1

    return v0
.end method
