.class final Ljava/util/stream/ForEachOps$ForEachOp$OfLong;
.super Ljava/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ForEachOps$ForEachOp<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final blacklist consumer:Ljava/util/function/LongConsumer;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/LongConsumer;Z)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;
    .param p2, "ordered"    # Z

    .line 215
    invoke-direct {p0, p2}, Ljava/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 216
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava/util/function/LongConsumer;

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 4
    .param p1, "t"    # J

    .line 226
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 227
    return-void
.end method

.method public blacklist inputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 221
    sget-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method
