.class public interface abstract Ljava/util/stream/BaseStream;
.super Ljava/lang/Object;
.source "BaseStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/stream/BaseStream<",
        "TT;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public abstract whitelist test-api isParallel()Z
.end method

.method public abstract whitelist test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api parallel()Ljava/util/stream/BaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api sequential()Ljava/util/stream/BaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api spliterator()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api unordered()Ljava/util/stream/BaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
