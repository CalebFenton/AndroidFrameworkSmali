.class public interface abstract Ljava/nio/channels/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

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

.method public abstract whitelist test-api isOpen()Z
.end method
