.class public final synthetic Ljava/util/stream/Nodes$CollectorTask$OfInt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(J)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;

    move-result-object p1

    return-object p1
.end method
