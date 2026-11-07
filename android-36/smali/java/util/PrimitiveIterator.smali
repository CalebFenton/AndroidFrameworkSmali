.class public interface abstract Ljava/util/PrimitiveIterator;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PrimitiveIterator$OfDouble;,
        Ljava/util/PrimitiveIterator$OfLong;,
        Ljava/util/PrimitiveIterator$OfInt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method
