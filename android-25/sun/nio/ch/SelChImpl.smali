.class interface abstract Lsun/nio/ch/SelChImpl;
.super Ljava/lang/Object;
.source "SelChImpl.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# virtual methods
.method public abstract getFD()Ljava/io/FileDescriptor;
.end method

.method public abstract getFDVal()I
.end method

.method public abstract kill()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
.end method

.method public abstract translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
.end method

.method public abstract translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
.end method

.method public abstract validOps()I
.end method
