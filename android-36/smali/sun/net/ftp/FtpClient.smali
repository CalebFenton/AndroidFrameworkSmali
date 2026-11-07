.class public abstract Lsun/net/ftp/FtpClient;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/FtpClient$TransferType;
    }
.end annotation


# static fields
.field private static final blacklist FTP_PORT:I = 0x15


# direct methods
.method protected constructor greylist <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static blacklist create()Lsun/net/ftp/FtpClient;
    .registers 2

    .line 108
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->provider()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    .line 109
    .local v0, "provider":Lsun/net/ftp/FtpClientProvider;
    invoke-virtual {v0}, Lsun/net/ftp/FtpClientProvider;->createFtpClient()Lsun/net/ftp/FtpClient;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist create(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 3
    .param p0, "dest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lsun/net/ftp/FtpClient;->create(Ljava/net/InetSocketAddress;)Lsun/net/ftp/FtpClient;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create(Ljava/net/InetSocketAddress;)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p0, "dest"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {}, Lsun/net/ftp/FtpClient;->create()Lsun/net/ftp/FtpClient;

    move-result-object v0

    .line 123
    .local v0, "client":Lsun/net/ftp/FtpClient;
    if-eqz p0, :cond_9

    .line 124
    invoke-virtual {v0, p0}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;

    .line 126
    :cond_9
    return-object v0
.end method

.method public static final blacklist defaultPort()I
    .registers 1

    .line 90
    const/16 v0, 0x15

    return v0
.end method


# virtual methods
.method public abstract blacklist abort()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist allocate(J)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist appendFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist changeToParentDirectory()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist completePending()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteFile(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist enablePassiveMode(Z)Lsun/net/ftp/FtpClient;
.end method

.method public abstract blacklist endSecureSession()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getConnectTimeout()I
.end method

.method public abstract blacklist getFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getFile(Ljava/lang/String;Ljava/io/OutputStream;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getHelp(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getLastFileName()Ljava/lang/String;
.end method

.method public abstract blacklist getLastModified(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getLastReplyCode()Lsun/net/ftp/FtpReplyCode;
.end method

.method public abstract blacklist getLastResponseString()Ljava/lang/String;
.end method

.method public abstract blacklist getLastTransferSize()J
.end method

.method public abstract blacklist getProxy()Ljava/net/Proxy;
.end method

.method public abstract blacklist getReadTimeout()I
.end method

.method public abstract blacklist getServerAddress()Ljava/net/SocketAddress;
.end method

.method public abstract blacklist getSize(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getStatus(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getSystem()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getWelcomeMsg()Ljava/lang/String;
.end method

.method public abstract blacklist getWorkingDirectory()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist isConnected()Z
.end method

.method public abstract blacklist isLoggedIn()Z
.end method

.method public abstract blacklist isPassiveModeEnabled()Z
.end method

.method public abstract blacklist list(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist listFiles(Ljava/lang/String;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lsun/net/ftp/FtpDirEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist login(Ljava/lang/String;[CLjava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist makeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist nameList(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist noop()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist putFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/net/ftp/FtpClient;->putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist putFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/ftp/FtpClient;->putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist reInit()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist removeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist rename(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist setAsciiType()Lsun/net/ftp/FtpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    invoke-virtual {p0, v0}, Lsun/net/ftp/FtpClient;->setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;

    .line 692
    return-object p0
.end method

.method public blacklist setBinaryType()Lsun/net/ftp/FtpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    invoke-virtual {p0, v0}, Lsun/net/ftp/FtpClient;->setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;

    .line 677
    return-object p0
.end method

.method public abstract blacklist setConnectTimeout(I)Lsun/net/ftp/FtpClient;
.end method

.method public abstract blacklist setDirParser(Lsun/net/ftp/FtpDirParser;)Lsun/net/ftp/FtpClient;
.end method

.method public abstract blacklist setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;
.end method

.method public abstract blacklist setReadTimeout(I)Lsun/net/ftp/FtpClient;
.end method

.method public abstract blacklist setRestartOffset(J)Lsun/net/ftp/FtpClient;
.end method

.method public abstract blacklist setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist siteCmd(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist startSecureSession()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist structureMount(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist useKerberos()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
