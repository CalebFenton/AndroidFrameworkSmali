.class public interface abstract Ljava/nio/channels/AsynchronousByteChannel;
.super Ljava/lang/Object;
.source "AsynchronousByteChannel.java"

# interfaces
.implements Ljava/nio/channels/AsynchronousChannel;


# virtual methods
.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation
.end method
