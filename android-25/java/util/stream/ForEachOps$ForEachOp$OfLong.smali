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
        "Ljava/util/stream/ForEachOps$ForEachOp",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final consumer:Ljava/util/function/LongConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/LongConsumer;Z)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;
    .param p2, "ordered"    # Z

    #@0
    .prologue
    .line 215
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfLong;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfLong;"
    invoke-direct {p0, p2}, Ljava/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    #@3
    .line 216
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava/util/function/LongConsumer;

    #@5
    .line 214
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    #@0
    .prologue
    .line 226
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfLong;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfLong;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava/util/function/LongConsumer;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    #@5
    .line 225
    return-void
.end method

.method public inputShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfLong;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfLong;"
    sget-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method
