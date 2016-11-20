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
        "Ljava/util/stream/ForEachOps$ForEachOp",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final consumer:Ljava/util/function/IntConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/IntConsumer;Z)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;
    .param p2, "ordered"    # Z

    #@0
    .prologue
    .line 194
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfInt;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfInt;"
    invoke-direct {p0, p2}, Ljava/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    #@3
    .line 195
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfInt;->consumer:Ljava/util/function/IntConsumer;

    #@5
    .line 193
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    #@0
    .prologue
    .line 205
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfInt;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfInt;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfInt;->consumer:Ljava/util/function/IntConsumer;

    #@2
    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    #@5
    .line 204
    return-void
.end method

.method public inputShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 200
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfInt;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfInt;"
    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method
