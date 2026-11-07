.class Lsun/nio/ch/UnixDomainSockets;
.super Ljava/lang/Object;
.source "UnixDomainSockets.java"


# static fields
.field static final blacklist UNNAMED:Ljava/net/UnixDomainSocketAddress;

.field private static final blacklist accessUnixDomainSocket:Ljava/net/NetPermission;

.field private static final blacklist random:Ljava/util/Random;

.field private static final blacklist supported:Z

.field private static final blacklist tempDir:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    const-string v0, ""

    invoke-static {v0}, Ljava/net/UnixDomainSocketAddress;->of(Ljava/lang/String;)Ljava/net/UnixDomainSocketAddress;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/UnixDomainSockets;->UNNAMED:Ljava/net/UnixDomainSocketAddress;

    .line 54
    invoke-static {}, Lsun/nio/ch/UnixDomainSocketsUtil;->getTempDir()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/UnixDomainSockets;->tempDir:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "accessUnixDomainSocket"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/nio/ch/UnixDomainSockets;->accessUnixDomainSocket:Ljava/net/NetPermission;

    .line 127
    invoke-static {}, Lsun/nio/ch/UnixDomainSockets;->getRandom()Ljava/util/Random;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/UnixDomainSockets;->random:Ljava/util/Random;

    .line 183
    invoke-static {}, Lsun/nio/ch/UnixDomainSockets;->init()Z

    move-result v0

    sput-boolean v0, Lsun/nio/ch/UnixDomainSockets;->supported:Z

    .line 184
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "newfd"    # Ljava/io/FileDescriptor;
    .param p2, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 158
    .local v0, "array":[Ljava/lang/Object;
    invoke-static {p0, p1, v0}, Lsun/nio/ch/UnixDomainSockets;->accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/Object;)I

    move-result v1

    .line 159
    .local v1, "n":I
    if-lez v1, :cond_19

    .line 160
    const/4 v2, 0x0

    aget-object v3, v0, v2

    check-cast v3, [B

    .line 161
    .local v3, "bytes":[B
    new-instance v4, Ljava/lang/String;

    invoke-static {}, Lsun/nio/ch/UnixDomainSocketsUtil;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v4, p2, v2

    .line 163
    .end local v3    # "bytes":[B
    :cond_19
    return v1
.end method

.method private static native blacklist accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist bind(Ljava/io/FileDescriptor;Ljava/nio/file/Path;)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "addr"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lsun/nio/ch/UnixDomainSockets;->getPathBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 113
    .local v0, "path":[B
    array-length v1, v0

    if-eqz v1, :cond_b

    .line 116
    invoke-static {p0, v0}, Lsun/nio/ch/UnixDomainSockets;->bind0(Ljava/io/FileDescriptor;[B)V

    .line 117
    return-void

    .line 114
    :cond_b
    new-instance v1, Ljava/net/BindException;

    const-string v2, "Server socket cannot bind to unnamed address"

    invoke-direct {v1, v2}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist bind0(Ljava/io/FileDescriptor;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist checkAddress(Ljava/net/SocketAddress;)Ljava/net/UnixDomainSocketAddress;
    .registers 2
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .line 95
    if-eqz p0, :cond_10

    .line 97
    instance-of v0, p0, Ljava/net/UnixDomainSocketAddress;

    if-eqz v0, :cond_a

    .line 99
    move-object v0, p0

    check-cast v0, Ljava/net/UnixDomainSocketAddress;

    return-object v0

    .line 98
    :cond_a
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0

    .line 96
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static blacklist checkPermission()V
    .registers 2

    .line 65
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 66
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 67
    sget-object v1, Lsun/nio/ch/UnixDomainSockets;->accessUnixDomainSocket:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 68
    :cond_b
    return-void
.end method

.method static blacklist connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    move-object v0, p1

    check-cast v0, Ljava/net/UnixDomainSocketAddress;

    invoke-virtual {v0}, Ljava/net/UnixDomainSocketAddress;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/nio/ch/UnixDomainSockets;->connect(Ljava/io/FileDescriptor;Ljava/nio/file/Path;)I

    move-result v0

    return v0
.end method

.method static blacklist connect(Ljava/io/FileDescriptor;Ljava/nio/file/Path;)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lsun/nio/ch/UnixDomainSockets;->getPathBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lsun/nio/ch/UnixDomainSockets;->connect0(Ljava/io/FileDescriptor;[B)I

    move-result v0

    return v0
.end method

.method private static native blacklist connect0(Ljava/io/FileDescriptor;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist generateTempName()Ljava/net/UnixDomainSocketAddress;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    sget-object v0, Lsun/nio/ch/UnixDomainSockets;->tempDir:Ljava/lang/String;

    .line 135
    .local v0, "dir":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 137
    sget-object v1, Lsun/nio/ch/UnixDomainSockets;->random:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 139
    .local v1, "rnd":I
    const/4 v2, 0x1

    :try_start_e
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 140
    .local v2, "path":Ljava/nio/file/Path;
    invoke-static {v2}, Ljava/net/UnixDomainSocketAddress;->of(Ljava/nio/file/Path;)Ljava/net/UnixDomainSocketAddress;

    move-result-object v3
    :try_end_2e
    .catch Ljava/nio/file/InvalidPathException; {:try_start_e .. :try_end_2e} :catch_2f

    return-object v3

    .line 141
    .end local v2    # "path":Ljava/nio/file/Path;
    :catch_2f
    move-exception v2

    .line 142
    .local v2, "e":Ljava/nio/file/InvalidPathException;
    new-instance v3, Ljava/net/BindException;

    const-string v4, "Invalid temporary directory"

    invoke-direct {v3, v4}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    .end local v1    # "rnd":I
    .end local v2    # "e":Ljava/nio/file/InvalidPathException;
    :cond_38
    new-instance v1, Ljava/net/BindException;

    const-string v2, "Could not locate temporary directory for sockets"

    invoke-direct {v1, v2}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getPathBytes(Ljava/nio/file/Path;)[B
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 103
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 104
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    move-object v1, v0

    check-cast v1, Lsun/nio/fs/AbstractFileSystemProvider;

    invoke-virtual {v1, p0}, Lsun/nio/fs/AbstractFileSystemProvider;->getSunPathForSocketFile(Ljava/nio/file/Path;)[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getRandom()Ljava/util/Random;
    .registers 2

    .line 121
    :try_start_0
    const-string v0, "NativePRNGNonBlocking"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 122
    :catch_7
    move-exception v0

    .line 123
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    return-object v1
.end method

.method static blacklist getRevealedLocalAddress(Ljava/net/SocketAddress;)Ljava/net/UnixDomainSocketAddress;
    .registers 3
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .line 71
    move-object v0, p0

    check-cast v0, Ljava/net/UnixDomainSocketAddress;

    .line 73
    .local v0, "addr":Ljava/net/UnixDomainSocketAddress;
    :try_start_3
    invoke-static {}, Lsun/nio/ch/UnixDomainSockets;->checkPermission()V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_6} :catch_7

    .line 78
    goto :goto_a

    .line 75
    :catch_7
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v0, Lsun/nio/ch/UnixDomainSockets;->UNNAMED:Ljava/net/UnixDomainSocketAddress;

    .line 79
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_a
    return-object v0
.end method

.method static blacklist getRevealedLocalAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;
    .registers 2
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .line 91
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method private static native blacklist init()Z
.end method

.method static blacklist isSupported()Z
    .registers 1

    .line 60
    sget-boolean v0, Lsun/nio/ch/UnixDomainSockets;->supported:Z

    return v0
.end method

.method static blacklist localAddress(Ljava/io/FileDescriptor;)Ljava/net/UnixDomainSocketAddress;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lsun/nio/ch/UnixDomainSockets;->localAddress0(Ljava/io/FileDescriptor;)[B

    move-result-object v1

    invoke-static {}, Lsun/nio/ch/UnixDomainSocketsUtil;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 84
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Ljava/net/UnixDomainSocketAddress;->of(Ljava/lang/String;)Ljava/net/UnixDomainSocketAddress;

    move-result-object v1

    return-object v1
.end method

.method private static native blacklist localAddress0(Ljava/io/FileDescriptor;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist socket()Ljava/io/FileDescriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lsun/nio/ch/UnixDomainSockets;->socket0()I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist socket0()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
