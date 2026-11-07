.class public final Ljava/net/UnixDomainSocketAddress;
.super Ljava/net/SocketAddress;
.source "UnixDomainSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/UnixDomainSocketAddress$Ser;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x14a0e5413f48978L


# instance fields
.field private final transient blacklist path:Ljava/nio/file/Path;


# direct methods
.method private constructor blacklist <init>(Ljava/nio/file/Path;)V
    .registers 2
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 129
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 130
    iput-object p1, p0, Ljava/net/UnixDomainSocketAddress;->path:Ljava/nio/file/Path;

    .line 131
    return-void
.end method

.method public static blacklist of(Ljava/lang/String;)Ljava/net/UnixDomainSocketAddress;
    .registers 2
    .param p0, "pathname"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/net/UnixDomainSocketAddress;->of(Ljava/nio/file/Path;)Ljava/net/UnixDomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Ljava/nio/file/Path;)Ljava/net/UnixDomainSocketAddress;
    .registers 3
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 164
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 165
    .local v0, "fs":Ljava/nio/file/FileSystem;
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 168
    new-instance v1, Ljava/net/UnixDomainSocketAddress;

    invoke-direct {v1, p0}, Ljava/net/UnixDomainSocketAddress;-><init>(Ljava/nio/file/Path;)V

    return-object v1

    .line 166
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObjectNoData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/net/UnixDomainSocketAddress$Ser;

    iget-object v1, p0, Ljava/net/UnixDomainSocketAddress;->path:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnixDomainSocketAddress$Ser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 195
    instance-of v0, p1, Ljava/net/UnixDomainSocketAddress;

    if-nez v0, :cond_6

    .line 196
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_6
    iget-object v0, p0, Ljava/net/UnixDomainSocketAddress;->path:Ljava/nio/file/Path;

    move-object v1, p1

    check-cast v1, Ljava/net/UnixDomainSocketAddress;

    iget-object v1, v1, Ljava/net/UnixDomainSocketAddress;->path:Ljava/nio/file/Path;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPath()Ljava/nio/file/Path;
    .registers 2

    .line 177
    iget-object v0, p0, Ljava/net/UnixDomainSocketAddress;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 185
    iget-object v0, p0, Ljava/net/UnixDomainSocketAddress;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Ljava/net/UnixDomainSocketAddress;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
