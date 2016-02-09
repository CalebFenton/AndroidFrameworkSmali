.class Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleSocketCheck"
.end annotation


# instance fields
.field protected final mAddressFamily:I

.field protected mFileDescriptor:Ljava/io/FileDescriptor;

.field protected final mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

.field protected mSocketAddress:Ljava/net/SocketAddress;

.field protected final mTarget:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method protected constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@0
    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 286
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@7
    .line 288
    instance-of v2, p2, Ljava/net/Inet6Address;

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 289
    const/4 v1, 0x0

    #@c
    .line 290
    .local v1, "targetWithScopeId":Ljava/net/Inet6Address;
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get2(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 293
    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    #@1b
    move-result-object v2

    #@1c
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get2(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v3

    #@24
    const/4 v4, 0x0

    #@25
    .line 292
    invoke-static {v4, v2, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v1

    #@29
    .line 298
    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@2b
    :goto_1
    iput-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    #@2d
    .line 299
    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    #@2f
    iput v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    #@31
    .line 285
    :goto_2
    return-void

    #@32
    .line 294
    .restart local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :catch_0
    move-exception v0

    #@33
    .line 295
    .local v0, "e":Ljava/net/UnknownHostException;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@35
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :cond_1
    move-object v1, p2

    #@3e
    .line 298
    goto :goto_1

    #@3f
    .line 301
    :cond_2
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    #@41
    .line 302
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    #@43
    iput v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    #@45
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@5
    .line 331
    return-void
.end method

.method protected getSocketAddressString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    #@2
    check-cast v0, Ljava/net/InetSocketAddress;

    #@4
    .line 324
    .local v0, "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v1

    #@8
    .line 326
    .local v1, "localAddr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    #@a
    if-eqz v2, :cond_0

    #@c
    const-string/jumbo v2, "[%s]:%d"

    #@f
    .line 325
    :goto_0
    const/4 v3, 0x2

    #@10
    new-array v3, v3, [Ljava/lang/Object;

    #@12
    .line 327
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@1c
    move-result v4

    #@1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v4

    #@21
    const/4 v5, 0x1

    #@22
    aput-object v4, v3, v5

    #@24
    .line 325
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 326
    :cond_0
    const-string/jumbo v2, "%s:%d"

    #@2c
    goto :goto_0
.end method

.method protected setupSocket(IIJJI)V
    .locals 5
    .param p1, "sockType"    # I
    .param p2, "protocol"    # I
    .param p3, "writeTimeout"    # J
    .param p5, "readTimeout"    # J
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    iget v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    #@2
    invoke-static {v0, p1, p2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@8
    .line 311
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@a
    .line 312
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@c
    sget v2, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    #@e
    invoke-static {p3, p4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@11
    move-result-object v3

    #@12
    .line 311
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@15
    .line 313
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@17
    .line 314
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@19
    sget v2, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    #@1b
    invoke-static {p5, p6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@1e
    move-result-object v3

    #@1f
    .line 313
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@22
    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@24
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get3(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@2a
    invoke-virtual {v0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    #@2d
    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@2f
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    #@31
    invoke-static {v0, v1, p7}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@34
    .line 318
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@36
    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    #@3c
    .line 308
    return-void
.end method
