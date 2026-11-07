.class public final synthetic Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda8;
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
    check-cast p1, [J

    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->lambda$average$2([JI)V

    return-void
.end method
