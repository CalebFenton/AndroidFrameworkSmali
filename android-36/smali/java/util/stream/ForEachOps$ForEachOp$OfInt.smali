.class final Ljava/util/stream/ForEachOps$ForEachOp$OfInt;
.super Ljava/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ForEachOps$ForEachOp<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final blacklist consumer:Ljava/util/function/IntConsumer;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/IntConsumer;Z)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;
    .param p2, "ordered"    # Z

    .line 194
    invoke-direct {p0, p2}, Ljava/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 195
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfInt;->consumer:Ljava/util/function/IntConsumer;

    .line 196
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 205
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfInt;->consumer:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 206
    return-void
.end method

.method public blacklist inputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 200
    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method
