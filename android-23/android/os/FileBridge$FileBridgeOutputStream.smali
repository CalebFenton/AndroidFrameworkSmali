.class public Landroid/os/FileBridge$FileBridgeOutputStream;
.super Ljava/io/OutputStream;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileBridgeOutputStream"
.end annotation


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private final mClientPfd:Landroid/os/ParcelFileDescriptor;

.field private final mTemp:[B


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "clientPfd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 137
    const/16 v0, 0x8

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@9
    .line 140
    iput-object p1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 141
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    #@11
    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "client"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 137
    const/16 v0, 0x8

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@9
    .line 145
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    #@c
    .line 146
    iput-object p1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    #@e
    .line 144
    return-void
.end method

.method private writeCommandAndBlock(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "cmdString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v2, 0x0

    #@3
    .line 164
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@5
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@7
    invoke-static {v0, v2, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@a
    .line 165
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    #@c
    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@e
    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@11
    .line 168
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    #@13
    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@15
    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@18
    move-result v0

    #@19
    if-ne v0, v3, :cond_0

    #@1b
    .line 169
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@1d
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@1f
    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@22
    move-result v0

    #@23
    if-ne v0, p1, :cond_0

    #@25
    .line 170
    return-void

    #@26
    .line 174
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Failed to execute "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    const-string/jumbo v2, " across bridge"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    :try_start_0
    const-string/jumbo v0, "close()"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-direct {p0, v1, v0}, Landroid/os/FileBridge$FileBridgeOutputStream;->writeCommandAndBlock(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 154
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    #@9
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@c
    .line 155
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    #@e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@11
    .line 150
    return-void

    #@12
    .line 153
    :catchall_0
    move-exception v0

    #@13
    .line 154
    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    #@15
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@18
    .line 155
    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    #@1a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1d
    .line 153
    throw v0
.end method

.method public fsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    const-string/jumbo v0, "fsync()"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-direct {p0, v1, v0}, Landroid/os/FileBridge$FileBridgeOutputStream;->writeCommandAndBlock(ILjava/lang/String;)V

    #@7
    .line 159
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    #@3
    .line 187
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 179
    array-length v0, p1

    #@2
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 180
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@7
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-static {v0, v3, v2, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@d
    .line 181
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@f
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@11
    const/4 v2, 0x4

    #@12
    invoke-static {v0, v2, p3, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@15
    .line 182
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    #@17
    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    #@19
    const/16 v2, 0x8

    #@1b
    invoke-static {v0, v1, v3, v2}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@1e
    .line 183
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    #@20
    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@23
    .line 178
    return-void
.end method
