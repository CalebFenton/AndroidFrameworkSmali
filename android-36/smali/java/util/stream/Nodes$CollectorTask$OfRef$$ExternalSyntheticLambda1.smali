.class public final synthetic Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    new-instance v0, Ljava/util/stream/Nodes$ConcNode;

    check-cast p1, Ljava/util/stream/Node;

    check-cast p2, Ljava/util/stream/Node;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    check-cast v0, Ljava/util/stream/Node;

    return-object v0
.end method
