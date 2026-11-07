.class public abstract Ljava/util/stream/LongPipeline$StatefulOp;
.super Ljava/util/stream/LongPipeline;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
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
        "Ljava/util/stream/LongPipeline<",
        "TE_IN;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 679
    const-class v0, Ljava/util/stream/LongPipeline;

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

    .line 692
    .local p0, "this":Ljava/util/stream/LongPipeline$StatefulOp;, "Ljava/util/stream/LongPipeline$StatefulOp<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/LongPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 693
    nop

    .line 694
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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public final greylist-max-o opIsStateful()Z
    .registers 2

    .line 699
    .local p0, "this":Ljava/util/stream/LongPipeline$StatefulOp;, "Ljava/util/stream/LongPipeline$StatefulOp<TE_IN;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/LongStream;
    .registers 2

    .line 679
    .local p0, "this":Ljava/util/stream/LongPipeline$StatefulOp;, "Ljava/util/stream/LongPipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/LongPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/LongStream;
    .registers 2

    .line 679
    .local p0, "this":Ljava/util/stream/LongPipeline$StatefulOp;, "Ljava/util/stream/LongPipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/LongPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method
