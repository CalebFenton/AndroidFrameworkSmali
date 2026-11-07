.class final Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;
.super Ljava/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ForEachOps$ForEachOp<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final blacklist consumer:Ljava/util/function/DoubleConsumer;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/DoubleConsumer;Z)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;
    .param p2, "ordered"    # Z

    .line 236
    invoke-direct {p0, p2}, Ljava/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 237
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Ljava/util/function/DoubleConsumer;

    .line 238
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 4
    .param p1, "t"    # D

    .line 247
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 248
    return-void
.end method

.method public blacklist inputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 242
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method
