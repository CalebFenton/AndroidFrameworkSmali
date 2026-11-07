.class public interface abstract Llibcore/io/Os;
.super Ljava/lang/Object;
.source "Os.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method public static blacklist test-api compareAndSetDefault(Llibcore/io/Os;Llibcore/io/Os;)Z
    .registers 3
    .param p0, "expect"    # Llibcore/io/Os;
    .param p1, "update"    # Llibcore/io/Os;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 798
    invoke-static {p0, p1}, Llibcore/io/Libcore;->compareAndSetOs(Llibcore/io/Os;Llibcore/io/Os;)Z

    move-result v0

    return v0
.end method

.method public static blacklist test-api getDefault()Llibcore/io/Os;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 808
    invoke-static {}, Llibcore/io/Libcore;->getOs()Llibcore/io/Os;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist access(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist android_fdsan_exchange_owner_tag(Ljava/io/FileDescriptor;JJ)V
.end method

.method public abstract blacklist android_fdsan_get_owner_tag(Ljava/io/FileDescriptor;)J
.end method

.method public abstract blacklist android_fdsan_get_tag_type(J)Ljava/lang/String;
.end method

.method public abstract blacklist android_fdsan_get_tag_value(J)J
.end method

.method public abstract blacklist android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation
.end method

.method public abstract blacklist bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist chmod(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist chown(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist environ()[Ljava/lang/String;
.end method

.method public abstract blacklist execv(Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist fchmod(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist fchown(Ljava/io/FileDescriptor;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist fcntlInt(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist fcntlVoid(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist fdatasync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist fsync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist ftruncate(Ljava/io/FileDescriptor;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist gai_strerror(I)Ljava/lang/String;
.end method

.method public abstract blacklist getegid()I
.end method

.method public abstract blacklist getenv(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist geteuid()I
.end method

.method public abstract blacklist getgid()I
.end method

.method public abstract blacklist getifaddrs()[Landroid/system/StructIfaddrs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation
.end method

.method public abstract blacklist getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getpid()I
.end method

.method public abstract blacklist getppid()I
.end method

.method public abstract blacklist getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getpwuid(I)Landroid/system/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getrlimit(I)Landroid/system/StructRlimit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getsockoptByte(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getsockoptInt(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist gettid()I
.end method

.method public abstract blacklist getuid()I
.end method

.method public abstract blacklist getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist if_indextoname(I)Ljava/lang/String;
.end method

.method public abstract blacklist if_nametoindex(Ljava/lang/String;)I
.end method

.method public abstract blacklist inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
.end method

.method public abstract blacklist ioctlFlags(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist ioctlInt(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist ioctlMTU(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist isatty(Ljava/io/FileDescriptor;)Z
.end method

.method public abstract blacklist kill(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist lchown(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist link(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist listxattr(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist lseek(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist madvise(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist mincore(JJ[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist mkdir(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist mkfifo(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist mlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist mmap(JJIILjava/io/FileDescriptor;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist msync(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist munlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist munmap(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist pipe2(I)[Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist poll([Landroid/system/StructPollfd;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist prctl(IJJJJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract blacklist pread(Ljava/io/FileDescriptor;[BIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract blacklist pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract blacklist pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract blacklist read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract greylist read(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract blacklist readlink(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract blacklist realpath(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist recvmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract greylist remove(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist rename(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist sendmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract blacklist setegid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist seteuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setgid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setpgid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setregid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setreuid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setsid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setsockoptByte(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setsockoptInt(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist socket(III)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist stat(Ljava/lang/String;)Landroid/system/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist strerror(I)Ljava/lang/String;
.end method

.method public abstract blacklist strsignal(I)Ljava/lang/String;
.end method

.method public abstract blacklist symlink(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract greylist sysconf(I)J
.end method

.method public abstract blacklist tcdrain(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist tcsendbreak(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist umask(I)I
.end method

.method public abstract blacklist uname()Landroid/system/StructUtsname;
.end method

.method public abstract blacklist unlink(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist unsetenv(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist waitpid(ILandroid/system/Int32Ref;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract blacklist write(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract blacklist writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method
