.class public final Llibcore/io/Linux;
.super Ljava/lang/Object;
.source "Linux.java"

# interfaces
.implements Llibcore/io/Os;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "originalPosition"    # I
    .param p2, "bytesReadOrWritten"    # I

    .line 342
    if-lez p2, :cond_7

    .line 343
    add-int v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 345
    :cond_7
    return-void
.end method

.method private static native blacklist nativeGetegid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGeteuid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetgid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetpid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetppid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGettid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetuid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native blacklist preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method private native blacklist pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method private native blacklist readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method private native blacklist recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private native blacklist sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private native blacklist sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/SocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private native blacklist umaskImpl(I)I
.end method

.method private native blacklist writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method


# virtual methods
.method public native blacklist accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native blacklist access(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist android_fdsan_exchange_owner_tag(Ljava/io/FileDescriptor;JJ)V
.end method

.method public native blacklist android_fdsan_get_owner_tag(Ljava/io/FileDescriptor;)J
.end method

.method public native blacklist android_fdsan_get_tag_type(J)Ljava/lang/String;
.end method

.method public native blacklist android_fdsan_get_tag_value(J)J
.end method

.method public native blacklist android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation
.end method

.method public native blacklist bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native blacklist bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native blacklist capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist chmod(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist chown(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native blacklist connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native blacklist dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist environ()[Ljava/lang/String;
.end method

.method public native blacklist execv(Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist fchmod(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist fchown(Ljava/io/FileDescriptor;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist fcntlInt(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist fcntlVoid(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist fdatasync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist fsync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist ftruncate(Ljava/io/FileDescriptor;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist gai_strerror(I)Ljava/lang/String;
.end method

.method public blacklist getegid()I
    .registers 2

    .line 93
    invoke-static {}, Llibcore/io/Linux;->nativeGetegid()I

    move-result v0

    return v0
.end method

.method public native blacklist getenv(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public blacklist geteuid()I
    .registers 2

    .line 99
    invoke-static {}, Llibcore/io/Linux;->nativeGeteuid()I

    move-result v0

    return v0
.end method

.method public blacklist getgid()I
    .registers 2

    .line 105
    invoke-static {}, Llibcore/io/Linux;->nativeGetgid()I

    move-result v0

    return v0
.end method

.method public native blacklist getifaddrs()[Landroid/system/StructIfaddrs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation
.end method

.method public native blacklist getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public blacklist getpid()I
    .registers 2

    .line 116
    invoke-static {}, Llibcore/io/Linux;->nativeGetpid()I

    move-result v0

    return v0
.end method

.method public blacklist getppid()I
    .registers 2

    .line 122
    invoke-static {}, Llibcore/io/Linux;->nativeGetppid()I

    move-result v0

    return v0
.end method

.method public native blacklist getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getpwuid(I)Landroid/system/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getrlimit(I)Landroid/system/StructRlimit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getsockoptByte(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getsockoptInt(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public blacklist gettid()I
    .registers 2

    .line 138
    invoke-static {}, Llibcore/io/Linux;->nativeGettid()I

    move-result v0

    return v0
.end method

.method public blacklist getuid()I
    .registers 2

    .line 144
    invoke-static {}, Llibcore/io/Linux;->nativeGetuid()I

    move-result v0

    return v0
.end method

.method public native blacklist getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist if_indextoname(I)Ljava/lang/String;
.end method

.method public native blacklist if_nametoindex(Ljava/lang/String;)I
.end method

.method public native blacklist inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
.end method

.method public native blacklist ioctlFlags(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist ioctlInt(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist ioctlMTU(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist isatty(Ljava/io/FileDescriptor;)Z
.end method

.method public native blacklist kill(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist lchown(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist link(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist listxattr(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist lseek(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist madvise(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist mincore(JJ[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist mkdir(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist mkfifo(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist mlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist mmap(JJIILjava/io/FileDescriptor;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist msync(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist munlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist munmap(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist pipe2(I)[Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist poll([Landroid/system/StructPollfd;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist prctl(IJJJJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public blacklist pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 182
    .local v3, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 183
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p3    # "offset":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    .local v5, "offset":J
    invoke-direct/range {v0 .. v6}, Llibcore/io/Linux;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result p1

    .local p1, "bytesRead":I
    goto :goto_30

    .line 185
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "offset":J
    .local p1, "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p3    # "offset":J
    :cond_17
    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p3    # "offset":J
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "offset":J
    move-wide v9, v5

    .end local v5    # "offset":J
    .local v9, "offset":J
    invoke-static {v2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    invoke-static {v2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int v7, p1, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    move-object v4, p0

    move-object v5, v1

    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .local v5, "fd":Ljava/io/FileDescriptor;
    invoke-direct/range {v4 .. v10}, Llibcore/io/Linux;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result p1

    move-wide v5, v9

    .line 188
    .end local v9    # "offset":J
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .local v5, "offset":J
    .local p1, "bytesRead":I
    :goto_30
    invoke-static {v2, v3, p1}, Llibcore/io/Linux;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    .line 189
    return p1
.end method

.method public blacklist pread(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 8
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

    .line 193
    invoke-direct/range {p0 .. p6}, Llibcore/io/Linux;->preadBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result v0

    return v0
.end method

.method public blacklist pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 200
    .local v3, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 201
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p3    # "offset":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    .local v5, "offset":J
    invoke-direct/range {v0 .. v6}, Llibcore/io/Linux;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result p1

    .local p1, "bytesWritten":I
    goto :goto_30

    .line 203
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "offset":J
    .local p1, "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p3    # "offset":J
    :cond_17
    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p3    # "offset":J
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "offset":J
    move-wide v9, v5

    .end local v5    # "offset":J
    .local v9, "offset":J
    invoke-static {v2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    invoke-static {v2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int v7, p1, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    move-object v4, p0

    move-object v5, v1

    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .local v5, "fd":Ljava/io/FileDescriptor;
    invoke-direct/range {v4 .. v10}, Llibcore/io/Linux;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result p1

    move-wide v5, v9

    .line 206
    .end local v9    # "offset":J
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .local v5, "offset":J
    .local p1, "bytesWritten":I
    :goto_30
    invoke-static {v2, v3, p1}, Llibcore/io/Linux;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    .line 207
    return p1
.end method

.method public blacklist pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 8
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

    .line 211
    invoke-direct/range {p0 .. p6}, Llibcore/io/Linux;->pwriteBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I

    move-result v0

    return v0
.end method

.method public blacklist read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 218
    .local v0, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 219
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/io/Linux;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v1

    .local v1, "bytesRead":I
    goto :goto_24

    .line 221
    .end local v1    # "bytesRead":I
    :cond_13
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Llibcore/io/Linux;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v1

    .line 224
    .restart local v1    # "bytesRead":I
    :goto_24
    invoke-static {p2, v0, v1}, Llibcore/io/Linux;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    .line 225
    return v1
.end method

.method public blacklist read(Ljava/io/FileDescriptor;[BII)I
    .registers 6
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

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Llibcore/io/Linux;->readBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public native blacklist readlink(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public native blacklist realpath(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public blacklist recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .registers 16
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

    .line 237
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 239
    .local v3, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 240
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p3    # "flags":I
    .end local p4    # "srcAddress":Ljava/net/InetSocketAddress;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    .local v5, "flags":I
    .local v6, "srcAddress":Ljava/net/InetSocketAddress;
    invoke-direct/range {v0 .. v6}, Llibcore/io/Linux;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    move-result p1

    .local p1, "bytesReceived":I
    goto :goto_34

    .line 242
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "flags":I
    .end local v6    # "srcAddress":Ljava/net/InetSocketAddress;
    .local p1, "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p3    # "flags":I
    .restart local p4    # "srcAddress":Ljava/net/InetSocketAddress;
    :cond_18
    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p3    # "flags":I
    .end local p4    # "srcAddress":Ljava/net/InetSocketAddress;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "flags":I
    .restart local v6    # "srcAddress":Ljava/net/InetSocketAddress;
    move-object v10, v6

    .end local v6    # "srcAddress":Ljava/net/InetSocketAddress;
    .local v10, "srcAddress":Ljava/net/InetSocketAddress;
    invoke-static {v2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    invoke-static {v2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int v7, p1, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    move-object v4, p0

    move v9, v5

    move-object v5, v1

    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .local v5, "fd":Ljava/io/FileDescriptor;
    .local v9, "flags":I
    invoke-direct/range {v4 .. v10}, Llibcore/io/Linux;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    move-result p1

    move v5, v9

    move-object v6, v10

    .line 245
    .end local v9    # "flags":I
    .end local v10    # "srcAddress":Ljava/net/InetSocketAddress;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .local v5, "flags":I
    .restart local v6    # "srcAddress":Ljava/net/InetSocketAddress;
    .local p1, "bytesReceived":I
    :goto_34
    invoke-static {v2, v3, p1}, Llibcore/io/Linux;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    .line 246
    return p1
.end method

.method public blacklist recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .registers 8
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

    .line 250
    invoke-direct/range {p0 .. p6}, Llibcore/io/Linux;->recvfromBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public native blacklist recvmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native blacklist remove(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist rename(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist sendmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .registers 19
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

    .line 261
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 263
    .local v3, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 264
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Llibcore/io/Linux;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    move-result v4

    .local v4, "bytesSent":I
    goto :goto_36

    .line 266
    .end local v4    # "bytesSent":I
    :cond_1c
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int v8, v0, v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    move-object v5, p0

    move-object v6, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Llibcore/io/Linux;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    move-result v4

    .line 269
    .restart local v4    # "bytesSent":I
    :goto_36
    invoke-static {p2, v3, v4}, Llibcore/io/Linux;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    .line 270
    return v4
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .registers 9
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

    .line 274
    invoke-direct/range {p0 .. p7}, Llibcore/io/Linux;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .registers 8
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

    .line 277
    invoke-direct/range {p0 .. p6}, Llibcore/io/Linux;->sendtoBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;IIILjava/net/SocketAddress;)I

    move-result v0

    return v0
.end method

.method public native blacklist setegid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist seteuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setgid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setpgid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setregid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setreuid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setsid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setsockoptByte(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setsockoptInt(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist socket(III)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist stat(Ljava/lang/String;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist strerror(I)Ljava/lang/String;
.end method

.method public native blacklist strsignal(I)Ljava/lang/String;
.end method

.method public native blacklist symlink(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist sysconf(I)J
.end method

.method public native blacklist tcdrain(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist tcsendbreak(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public blacklist umask(I)I
    .registers 5
    .param p1, "mask"    # I

    .line 312
    and-int/lit16 v0, p1, 0x1ff

    if-ne v0, p1, :cond_9

    .line 315
    invoke-direct {p0, p1}, Llibcore/io/Linux;->umaskImpl(I)I

    move-result v0

    return v0

    .line 313
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid umask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native blacklist uname()Landroid/system/StructUtsname;
.end method

.method public native blacklist unlink(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist unsetenv(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public native blacklist waitpid(ILandroid/system/Int32Ref;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public blacklist write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 324
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 325
    .local v0, "position":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 326
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/io/Linux;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v1

    .local v1, "bytesWritten":I
    goto :goto_24

    .line 328
    .end local v1    # "bytesWritten":I
    :cond_13
    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {p2}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Llibcore/io/Linux;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v1

    .line 331
    .restart local v1    # "bytesWritten":I
    :goto_24
    invoke-static {p2, v0, v1}, Llibcore/io/Linux;->maybeUpdateBufferPosition(Ljava/nio/ByteBuffer;II)V

    .line 332
    return v1
.end method

.method public blacklist write(Ljava/io/FileDescriptor;[BII)I
    .registers 6
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

    .line 336
    invoke-direct {p0, p1, p2, p3, p4}, Llibcore/io/Linux;->writeBytes(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public native blacklist writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method
