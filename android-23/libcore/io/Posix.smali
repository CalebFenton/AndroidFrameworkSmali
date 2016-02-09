.class public final Llibcore/io/Posix;
.super Ljava/lang/Object;
.source "Posix.java"

# interfaces
.implements Llibcore/io/Os;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "originalPosition"    # I
    .param p2, "bytesReadOrWritten"    # I

    #@0
    .prologue
    .line 277
    if-lez p2, :cond_0

    #@2
    .line 278
    add-int v0, p2, p1

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@7
    .line 276
    :cond_0
    return-void
.end method

.method private native preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method private native pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method private native readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method private native recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private native sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private native sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/SocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private native umaskImpl(I)I
.end method

.method private native writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method


# virtual methods
.method public native accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native access(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation
.end method

.method public native bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native chmod(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native chown(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native environ()[Ljava/lang/String;
.end method

.method public native execv(Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native fchmod(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native fchown(Ljava/io/FileDescriptor;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public native fcntlInt(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native fcntlVoid(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native fdatasync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native fsync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native ftruncate(Ljava/io/FileDescriptor;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native gai_strerror(I)Ljava/lang/String;
.end method

.method public native getegid()I
.end method

.method public native getenv(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native geteuid()I
.end method

.method public native getgid()I
.end method

.method public native getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation
.end method

.method public native getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getpgid(I)I
.end method

.method public native getpid()I
.end method

.method public native getppid()I
.end method

.method public native getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getpwuid(I)Landroid/system/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptByte(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptInt(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native gettid()I
.end method

.method public native getuid()I
.end method

.method public native getxattr(Ljava/lang/String;Ljava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native if_indextoname(I)Ljava/lang/String;
.end method

.method public native inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
.end method

.method public native ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native isatty(Ljava/io/FileDescriptor;)Z
.end method

.method public native kill(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native lchown(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native link(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native lseek(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native mincore(JJ[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native mkdir(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native mkfifo(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native mlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native mmap(JJIILjava/io/FileDescriptor;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native msync(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native munlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native munmap(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native pipe2(I)[Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native poll([Landroid/system/StructPollfd;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native prctl(IJJJJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v4

    #@4
    .line 122
    .local v4, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 123
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@d
    move-result v5

    #@e
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move-object v3, p2

    #@11
    move-wide/from16 v6, p3

    #@13
    invoke-direct/range {v1 .. v7}, Llibcore/io/Posix;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    #@16
    move-result v0

    #@17
    .line 128
    .local v0, "bytesRead":I
    :goto_0
    invoke-static {p2, v4, v0}, Llibcore/io/Posix;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    #@1a
    .line 129
    return v0

    #@1b
    .line 125
    .end local v0    # "bytesRead":I
    :cond_0
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@1e
    move-result-object v7

    #@1f
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@22
    move-result v1

    #@23
    add-int v8, v1, v4

    #@25
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@28
    move-result v9

    #@29
    move-object v5, p0

    #@2a
    move-object v6, p1

    #@2b
    move-wide/from16 v10, p3

    #@2d
    invoke-direct/range {v5 .. v11}, Llibcore/io/Posix;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    #@30
    move-result v0

    #@31
    .restart local v0    # "bytesRead":I
    goto :goto_0
.end method

.method public pread(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    invoke-direct/range {p0 .. p6}, Llibcore/io/Posix;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v4

    #@4
    .line 140
    .local v4, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 141
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@d
    move-result v5

    #@e
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move-object v3, p2

    #@11
    move-wide/from16 v6, p3

    #@13
    invoke-direct/range {v1 .. v7}, Llibcore/io/Posix;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    #@16
    move-result v0

    #@17
    .line 146
    .local v0, "bytesWritten":I
    :goto_0
    invoke-static {p2, v4, v0}, Llibcore/io/Posix;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    #@1a
    .line 147
    return v0

    #@1b
    .line 143
    .end local v0    # "bytesWritten":I
    :cond_0
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@1e
    move-result-object v7

    #@1f
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@22
    move-result v1

    #@23
    add-int v8, v1, v4

    #@25
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@28
    move-result v9

    #@29
    move-object v5, p0

    #@2a
    move-object v6, p1

    #@2b
    move-wide/from16 v10, p3

    #@2d
    invoke-direct/range {v5 .. v11}, Llibcore/io/Posix;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    #@30
    move-result v0

    #@31
    .restart local v0    # "bytesWritten":I
    goto :goto_0
.end method

.method public pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-direct/range {p0 .. p6}, Llibcore/io/Posix;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v1

    #@4
    .line 158
    .local v1, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 159
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@d
    move-result v2

    #@e
    invoke-direct {p0, p1, p2, v1, v2}, Llibcore/io/Posix;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    #@11
    move-result v0

    #@12
    .line 164
    .local v0, "bytesRead":I
    :goto_0
    invoke-static {p2, v1, v0}, Llibcore/io/Posix;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    #@15
    .line 165
    return v0

    #@16
    .line 161
    .end local v0    # "bytesRead":I
    :cond_0
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@19
    move-result-object v2

    #@1a
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@1d
    move-result v3

    #@1e
    add-int/2addr v3, v1

    #@1f
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@22
    move-result v4

    #@23
    invoke-direct {p0, p1, v2, v3, v4}, Llibcore/io/Posix;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    #@26
    move-result v0

    #@27
    .restart local v0    # "bytesRead":I
    goto :goto_0
.end method

.method public read(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Llibcore/io/Posix;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public native readlink(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "srcAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v3

    #@4
    .line 178
    .local v3, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 179
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@d
    move-result v4

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move-object v2, p2

    #@11
    move v5, p3

    #@12
    move-object/from16 v6, p4

    #@14
    invoke-direct/range {v0 .. v6}, Llibcore/io/Posix;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    #@17
    move-result v11

    #@18
    .line 184
    .local v11, "bytesReceived":I
    :goto_0
    invoke-static {p2, v3, v11}, Llibcore/io/Posix;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    #@1b
    .line 185
    return v11

    #@1c
    .line 181
    .end local v11    # "bytesReceived":I
    :cond_0
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@1f
    move-result-object v6

    #@20
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@23
    move-result v0

    #@24
    add-int v7, v0, v3

    #@26
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@29
    move-result v8

    #@2a
    move-object v4, p0

    #@2b
    move-object v5, p1

    #@2c
    move v9, p3

    #@2d
    move-object/from16 v10, p4

    #@2f
    invoke-direct/range {v4 .. v10}, Llibcore/io/Posix;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    #@32
    move-result v11

    #@33
    .restart local v11    # "bytesReceived":I
    goto :goto_0
.end method

.method public recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "srcAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    invoke-direct/range {p0 .. p6}, Llibcore/io/Posix;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public native remove(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native rename(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v3

    #@4
    .line 200
    .local v3, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 201
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@d
    move-result v4

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move-object v2, p2

    #@11
    move/from16 v5, p3

    #@13
    move-object/from16 v6, p4

    #@15
    move/from16 v7, p5

    #@17
    invoke-direct/range {v0 .. v7}, Llibcore/io/Posix;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    #@1a
    move-result v12

    #@1b
    .line 206
    .local v12, "bytesSent":I
    :goto_0
    invoke-static {p2, v3, v12}, Llibcore/io/Posix;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    #@1e
    .line 207
    return v12

    #@1f
    .line 203
    .end local v12    # "bytesSent":I
    :cond_0
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@22
    move-result-object v6

    #@23
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@26
    move-result v0

    #@27
    add-int v7, v0, v3

    #@29
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@2c
    move-result v8

    #@2d
    move-object v4, p0

    #@2e
    move-object v5, p1

    #@2f
    move/from16 v9, p3

    #@31
    move-object/from16 v10, p4

    #@33
    move/from16 v11, p5

    #@35
    invoke-direct/range {v4 .. v11}, Llibcore/io/Posix;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    #@38
    move-result v12

    #@39
    .restart local v12    # "bytesSent":I
    goto :goto_0
.end method

.method public sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "inetAddress"    # Ljava/net/InetAddress;
    .param p7, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    invoke-direct/range {p0 .. p7}, Llibcore/io/Posix;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-direct/range {p0 .. p6}, Llibcore/io/Posix;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/SocketAddress;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public native setegid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native seteuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setgid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setpgid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setregid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setreuid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptByte(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptInt(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native socket(III)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native stat(Ljava/lang/String;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native strerror(I)Ljava/lang/String;
.end method

.method public native strsignal(I)Ljava/lang/String;
.end method

.method public native symlink(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native sysconf(I)J
.end method

.method public native tcdrain(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native tcsendbreak(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public umask(I)I
    .locals 3
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 248
    and-int/lit16 v0, p1, 0x1ff

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid umask: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 251
    :cond_0
    invoke-direct {p0, p1}, Llibcore/io/Posix;->umaskImpl(I)I

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public native uname()Landroid/system/StructUtsname;
.end method

.method public native unsetenv(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native waitpid(ILandroid/util/MutableInt;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v1

    #@4
    .line 260
    .local v1, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 261
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@d
    move-result v2

    #@e
    invoke-direct {p0, p1, p2, v1, v2}, Llibcore/io/Posix;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    #@11
    move-result v0

    #@12
    .line 266
    .local v0, "bytesWritten":I
    :goto_0
    invoke-static {p2, v1, v0}, Llibcore/io/Posix;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    #@15
    .line 267
    return v0

    #@16
    .line 263
    .end local v0    # "bytesWritten":I
    :cond_0
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@19
    move-result-object v2

    #@1a
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@1d
    move-result v3

    #@1e
    add-int/2addr v3, v1

    #@1f
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@22
    move-result v4

    #@23
    invoke-direct {p0, p1, v2, v3, v4}, Llibcore/io/Posix;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    #@26
    move-result v0

    #@27
    .restart local v0    # "bytesWritten":I
    goto :goto_0
.end method

.method public write(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Llibcore/io/Posix;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public native writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method
