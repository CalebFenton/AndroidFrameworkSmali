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
.field private static final FTP_PORT:I = 0x15


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static create()Lsun/net/ftp/FtpClient;
    .locals 2

    #@0
    .prologue
    .line 108
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->provider()Lsun/net/ftp/FtpClientProvider;

    #@3
    move-result-object v0

    #@4
    .line 109
    .local v0, "provider":Lsun/net/ftp/FtpClientProvider;
    invoke-virtual {v0}, Lsun/net/ftp/FtpClientProvider;->createFtpClient()Lsun/net/ftp/FtpClient;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static create(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p0, "dest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    const/16 v1, 0x15

    #@4
    invoke-direct {v0, p0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@7
    invoke-static {v0}, Lsun/net/ftp/FtpClient;->create(Ljava/net/InetSocketAddress;)Lsun/net/ftp/FtpClient;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static create(Ljava/net/InetSocketAddress;)Lsun/net/ftp/FtpClient;
    .locals 1
    .param p0, "dest"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-static {}, Lsun/net/ftp/FtpClient;->create()Lsun/net/ftp/FtpClient;

    #@3
    move-result-object v0

    #@4
    .line 123
    .local v0, "client":Lsun/net/ftp/FtpClient;
    if-eqz p0, :cond_0

    #@6
    .line 124
    invoke-virtual {v0, p0}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;

    #@9
    .line 126
    :cond_0
    return-object v0
.end method

.method public static final defaultPort()I
    .locals 1

    #@0
    .prologue
    .line 90
    const/16 v0, 0x15

    #@2
    return v0
.end method


# virtual methods
.method public abstract abort()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract allocate(J)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract appendFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract changeToParentDirectory()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract completePending()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract deleteFile(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract enablePassiveMode(Z)Lsun/net/ftp/FtpClient;
.end method

.method public abstract endSecureSession()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getConnectTimeout()I
.end method

.method public abstract getFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
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

.method public abstract getFile(Ljava/lang/String;Ljava/io/OutputStream;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHelp(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLastFileName()Ljava/lang/String;
.end method

.method public abstract getLastModified(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLastReplyCode()Lsun/net/ftp/FtpReplyCode;
.end method

.method public abstract getLastResponseString()Ljava/lang/String;
.end method

.method public abstract getLastTransferSize()J
.end method

.method public abstract getProxy()Ljava/net/Proxy;
.end method

.method public abstract getReadTimeout()I
.end method

.method public abstract getServerAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getSize(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getStatus(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSystem()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getWelcomeMsg()Ljava/lang/String;
.end method

.method public abstract getWorkingDirectory()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isLoggedIn()Z
.end method

.method public abstract isPassiveModeEnabled()Z
.end method

.method public abstract list(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract listFiles(Ljava/lang/String;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
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

.method public abstract login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;[CLjava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract makeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nameList(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract noop()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public putFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lsun/net/ftp/FtpClient;->putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public abstract putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public putFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/net/ftp/FtpClient;->putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public abstract putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reInit()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setAsciiType()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 691
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    #@2
    invoke-virtual {p0, v0}, Lsun/net/ftp/FtpClient;->setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;

    #@5
    .line 692
    return-object p0
.end method

.method public setBinaryType()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 676
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    #@2
    invoke-virtual {p0, v0}, Lsun/net/ftp/FtpClient;->setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;

    #@5
    .line 677
    return-object p0
.end method

.method public abstract setConnectTimeout(I)Lsun/net/ftp/FtpClient;
.end method

.method public abstract setDirParser(Lsun/net/ftp/FtpDirParser;)Lsun/net/ftp/FtpClient;
.end method

.method public abstract setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;
.end method

.method public abstract setReadTimeout(I)Lsun/net/ftp/FtpClient;
.end method

.method public abstract setRestartOffset(J)Lsun/net/ftp/FtpClient;
.end method

.method public abstract setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract siteCmd(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startSecureSession()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract structureMount(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract useKerberos()Lsun/net/ftp/FtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
