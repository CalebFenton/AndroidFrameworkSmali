.class public final synthetic Ljava/util/stream/SliceOps$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Ljava/util/stream/SliceOps$4;->lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
