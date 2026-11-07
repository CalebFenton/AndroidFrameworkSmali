.class public abstract Ljava/util/stream/IntPipeline$StatefulOp;
.super Ljava/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatefulOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/IntPipeline<",
        "TE_IN;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 698
    const-class v0, Ljava/util/stream/IntPipeline;

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

    .line 710
    .local p0, "this":Ljava/util/stream/IntPipeline$StatefulOp;, "Ljava/util/stream/IntPipeline$StatefulOp<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/IntPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 711
    nop

    .line 712
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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public final greylist-max-o opIsStateful()Z
    .registers 2

    .line 717
    .local p0, "this":Ljava/util/stream/IntPipeline$StatefulOp;, "Ljava/util/stream/IntPipeline$StatefulOp<TE_IN;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/IntStream;
    .registers 2

    .line 698
    .local p0, "this":Ljava/util/stream/IntPipeline$StatefulOp;, "Ljava/util/stream/IntPipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/IntPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/IntStream;
    .registers 2

    .line 698
    .local p0, "this":Ljava/util/stream/IntPipeline$StatefulOp;, "Ljava/util/stream/IntPipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/IntPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method
