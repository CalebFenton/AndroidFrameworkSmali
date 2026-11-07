.class public abstract Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;
.super Ljava/lang/Object;
.source "FdEventsReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BufferType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist FD_EVENTS:I = 0x5

.field private static final blacklist UNREGISTER_THIS_FD:I


# instance fields
.field private final blacklist mBuffer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBufferType;"
        }
    .end annotation
.end field

.field private blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPacketsReceived:J

.field private final blacklist mQueue:Landroid/os/MessageQueue;


# direct methods
.method public static synthetic blacklist $r8$lambda$2LiFDOGp4ci9w4EU1BjgMc6Rreg(Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;Ljava/io/FileDescriptor;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->lambda$createAndRegisterFd$2(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BufEtTsU1TtSfDtBhxpULUqKZfU(Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->lambda$start$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DNLR0WgME6BzZ40qbiJJEwNFXk8(Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->lambda$stop$1()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TBufferType;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    .local p2, "buffer":Ljava/lang/Object;, "TBufferType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mHandler:Landroid/os/Handler;

    .line 97
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mQueue:Landroid/os/MessageQueue;

    .line 98
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mBuffer:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected static blacklist closeFd(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 90
    :try_start_0
    invoke-static {p0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 92
    goto :goto_5

    .line 91
    :catch_4
    move-exception v0

    .line 93
    :goto_5
    return-void
.end method

.method private blacklist createAndRegisterFd()V
    .registers 5

    .line 188
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    return-void

    .line 191
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->createFd()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    .line 196
    goto :goto_1a

    .line 192
    :catch_c
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to create socket: "

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1f

    return-void

    .line 200
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->onStart()V

    .line 214
    return-void
.end method

.method private blacklist handleInput()Z
    .registers 8

    .line 222
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    const-string v0, "readPacket error: "

    :goto_2
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 226
    const/4 v1, 0x1

    :try_start_9
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mBuffer:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->readPacket(Ljava/io/FileDescriptor;Ljava/lang/Object;)I

    move-result v2

    .line 227
    .local v2, "bytesRead":I
    if-ge v2, v1, :cond_20

    .line 228
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "Socket closed, exiting"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 229
    :cond_1f
    goto :goto_5a

    .line 231
    :cond_20
    iget-wide v3, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mPacketsReceived:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mPacketsReceived:J
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_27} :catch_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_36

    .line 245
    nop

    .line 248
    :try_start_28
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mBuffer:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->handlePacket(Ljava/lang/Object;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2f

    .line 252
    nop

    .line 253
    .end local v2    # "bytesRead":I
    goto :goto_2

    .line 249
    .restart local v2    # "bytesRead":I
    :catch_2f
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "handlePacket error: "

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 251
    goto :goto_5a

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "bytesRead":I
    :catch_36
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 244
    :cond_40
    goto :goto_5a

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_41
    move-exception v2

    .line 233
    .local v2, "e":Landroid/system/ErrnoException;
    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v3, v4, :cond_49

    .line 235
    return v1

    .line 236
    :cond_49
    iget v1, v2, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EINTR:I

    if-ne v1, v3, :cond_50

    .line 237
    goto :goto_2

    .line 239
    :cond_50
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 240
    :cond_59
    nop

    .line 255
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_5a
    :goto_5a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isRunning()Z
    .registers 2

    .line 217
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private synthetic blacklist lambda$createAndRegisterFd$2(Ljava/io/FileDescriptor;I)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 207
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->handleInput()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    .line 211
    :cond_d
    const/4 v0, 0x5

    return v0

    .line 208
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->unregisterAndDestroyFd()V

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic blacklist lambda$start$0()V
    .registers 3

    .line 107
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    const-string v0, "start() called from off-thread"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 108
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->createAndRegisterFd()V

    .line 109
    return-void
.end method

.method private synthetic blacklist lambda$stop$1()V
    .registers 3

    .line 119
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    const-string v0, "stop() called from off-thread"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 120
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->unregisterAndDestroyFd()V

    .line 121
    return-void
.end method

.method private blacklist onCorrectThread()Z
    .registers 3

    .line 268
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist unregisterAndDestroyFd()V
    .registers 3

    .line 259
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_5

    return-void

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mFd:Ljava/io/FileDescriptor;

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->onStop()V

    .line 265
    return-void
.end method


# virtual methods
.method protected abstract blacklist createFd()Ljava/io/FileDescriptor;
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 127
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected blacklist handlePacket(Ljava/lang/Object;I)V
    .registers 3
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBufferType;I)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    .local p1, "recvbuf":Ljava/lang/Object;, "TBufferType;"
    return-void
.end method

.method protected blacklist logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 175
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    return-void
.end method

.method public final blacklist numPacketsReceived()J
    .registers 3

    .line 143
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    iget-wide v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mPacketsReceived:J

    return-wide v0
.end method

.method protected blacklist onStart()V
    .registers 1

    .line 180
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    return-void
.end method

.method protected blacklist onStop()V
    .registers 1

    .line 185
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    return-void
.end method

.method protected abstract blacklist readPacket(Ljava/io/FileDescriptor;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "TBufferType;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public blacklist recvBufSize()I
    .registers 2

    .line 134
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mBuffer:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->recvBufSize(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract blacklist recvBufSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBufferType;)I"
        }
    .end annotation
.end method

.method public blacklist start()V
    .registers 3

    .line 103
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->onCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 104
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->createAndRegisterFd()V

    goto :goto_14

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    :goto_14
    return-void
.end method

.method public blacklist stop()V
    .registers 3

    .line 115
    .local p0, "this":Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;, "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<TBufferType;>;"
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->onCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 116
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->unregisterAndDestroyFd()V

    goto :goto_14

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :goto_14
    return-void
.end method
