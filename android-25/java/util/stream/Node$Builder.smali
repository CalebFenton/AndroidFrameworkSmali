.class public interface abstract Ljava/util/stream/Node$Builder;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Node$Builder$OfDouble;,
        Ljava/util/stream/Node$Builder$OfInt;,
        Ljava/util/stream/Node$Builder$OfLong;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract build()Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation
.end method
