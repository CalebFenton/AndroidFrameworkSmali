.class public interface abstract Ljava/nio/file/WatchKey;
.super Ljava/lang/Object;
.source "WatchKey.java"


# virtual methods
.method public abstract whitelist test-api cancel()V
.end method

.method public abstract whitelist test-api isValid()Z
.end method

.method public abstract whitelist test-api pollEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/WatchEvent<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api reset()Z
.end method

.method public abstract whitelist test-api watchable()Ljava/nio/file/Watchable;
.end method
