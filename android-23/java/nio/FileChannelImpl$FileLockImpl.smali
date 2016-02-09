.class final Ljava/nio/FileChannelImpl$FileLockImpl;
.super Ljava/nio/channels/FileLock;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileLockImpl"
.end annotation


# instance fields
.field private isReleased:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    #@0
    .prologue
    .line 141
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    #@3
    .line 138
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    #@6
    .line 140
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 145
    iget-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl$FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl$FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 150
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@c
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@f
    throw v0

    #@10
    .line 152
    :cond_0
    iget-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    #@12
    if-nez v0, :cond_1

    #@14
    .line 153
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl$FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/nio/FileChannelImpl;

    #@1a
    invoke-virtual {v0, p0}, Ljava/nio/FileChannelImpl;->release(Ljava/nio/channels/FileLock;)V

    #@1d
    .line 154
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    #@20
    .line 148
    :cond_1
    return-void
.end method
