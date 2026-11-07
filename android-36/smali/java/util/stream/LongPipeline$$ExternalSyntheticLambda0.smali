.class public final synthetic Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ObjLongConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;J)V
    .registers 4

    .line 0
    check-cast p1, Ljava/util/LongSummaryStatistics;

    invoke-virtual {p1, p2, p3}, Ljava/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method
