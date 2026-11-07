.class public interface abstract Lsun/nio/ch/SelChImpl;
.super Ljava/lang/Object;
.source "SelChImpl.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# virtual methods
.method public abstract blacklist getFD()Ljava/io/FileDescriptor;
.end method

.method public abstract blacklist getFDVal()I
.end method

.method public abstract blacklist kill()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist park(I)V
    .registers 4
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lsun/nio/ch/SelChImpl;->park(IJ)V

    .line 106
    return-void
.end method

.method public blacklist park(IJ)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_9

    .line 87
    const-wide/16 v0, -0x1

    .local v0, "millis":J
    goto :goto_f

    .line 89
    .end local v0    # "millis":J
    :cond_9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 91
    .restart local v0    # "millis":J
    :goto_f
    invoke-interface {p0}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lsun/nio/ch/Net;->poll(Ljava/io/FileDescriptor;IJ)I

    .line 92
    return-void
.end method

.method public abstract blacklist translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
.end method

.method public abstract blacklist translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
.end method

.method public abstract blacklist translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
.end method

.method public abstract blacklist validOps()I
.end method
