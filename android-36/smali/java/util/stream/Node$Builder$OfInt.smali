.class public interface abstract Ljava/util/stream/Node$Builder$OfInt;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/stream/Node$Builder;
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Node$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$Builder<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o build()Ljava/util/stream/Node$OfInt;
.end method

.method public bridge synthetic blacklist build()Ljava/util/stream/Node;
    .registers 2

    .line 207
    invoke-interface {p0}, Ljava/util/stream/Node$Builder$OfInt;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method
