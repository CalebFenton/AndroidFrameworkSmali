.class public interface abstract Ljava/nio/file/WatchService;
.super Ljava/lang/Object;
.source "WatchService.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api poll()Ljava/nio/file/WatchKey;
.end method

.method public abstract whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api take()Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
