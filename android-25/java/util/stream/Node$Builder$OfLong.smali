.class public interface abstract Ljava/util/stream/Node$Builder$OfLong;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/stream/Node$Builder;
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Node$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$Builder",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# virtual methods
.method public abstract build()Ljava/util/stream/Node$OfLong;
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .locals 1

    #@0
    .prologue
    .line 212
    .local p0, "this":Ljava/util/stream/Node$Builder$OfLong;, "Ljava/util/stream/Node<TT;>.Builder<TT;>.OfLong;"
    invoke-interface {p0}, Ljava/util/stream/Node$Builder$OfLong;->build()Ljava/util/stream/Node$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
