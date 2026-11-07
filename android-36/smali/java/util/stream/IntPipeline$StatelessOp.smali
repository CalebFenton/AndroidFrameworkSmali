.class public abstract Ljava/util/stream/IntPipeline$StatelessOp;
.super Ljava/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatelessOp"
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

    .line 667
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

    .line 679
    .local p0, "this":Ljava/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/IntPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 680
    nop

    .line 681
    return-void
.end method


# virtual methods
.method public final greylist-max-o opIsStateful()Z
    .registers 2

    .line 686
    .local p0, "this":Ljava/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/IntStream;
    .registers 2

    .line 667
    .local p0, "this":Ljava/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/IntPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/IntStream;
    .registers 2

    .line 667
    .local p0, "this":Ljava/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/IntPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method
