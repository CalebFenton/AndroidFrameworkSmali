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
        "Ljava/util/stream/Node$Builder<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o build()Ljava/util/stream/Node$OfLong;
.end method

.method public bridge synthetic blacklist build()Ljava/util/stream/Node;
    .registers 2

    .line 215
    invoke-interface {p0}, Ljava/util/stream/Node$Builder$OfLong;->build()Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method
