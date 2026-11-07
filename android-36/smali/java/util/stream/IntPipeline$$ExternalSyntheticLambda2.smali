.class public final synthetic Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;I)V
    .registers 3

    .line 0
    check-cast p1, Ljava/util/IntSummaryStatistics;

    invoke-virtual {p1, p2}, Ljava/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method
