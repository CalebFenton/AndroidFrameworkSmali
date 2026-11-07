.class public Landroid/net/PrivateDnsConnectivityChecker;
.super Ljava/lang/Object;
.source "PrivateDnsConnectivityChecker.java"


# static fields
.field private static final blacklist CONNECTION_TIMEOUT_MS:I = 0x1388

.field private static final blacklist PRIVATE_DNS_PORT:I = 0x355

.field private static final blacklist TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canConnectToPrivateDnsServer(Ljava/lang/String;)Z
    .registers 7
    .param p0, "hostname"    # Ljava/lang/String;

    .line 46
    const-string v0, "NetworkUtils"

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    .line 47
    .local v1, "factory":Ljavax/net/SocketFactory;
    invoke-static {}, Landroid/net/TrafficStats;->setThreadStatsTagApp()V

    .line 49
    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_5d

    .line 50
    .local v3, "socket":Ljavax/net/ssl/SSLSocket;
    const/16 v4, 0x1388

    :try_start_12
    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 51
    new-instance v4, Ljava/net/InetSocketAddress;

    const/16 v5, 0x355

    invoke-direct {v4, p0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 52
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v4

    if-nez v4, :cond_39

    .line 53
    const-string v4, "Connection to %s failed."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_51

    .line 54
    nop

    .line 59
    if-eqz v3, :cond_38

    :try_start_35
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_5d

    .line 54
    :cond_38
    return v2

    .line 56
    :cond_39
    :try_start_39
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 57
    const-string v4, "TLS handshake to %s succeeded."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_51

    .line 58
    nop

    .line 59
    if-eqz v3, :cond_4f

    :try_start_4c
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5d

    .line 58
    :cond_4f
    const/4 v0, 0x1

    return v0

    .line 49
    :catchall_51
    move-exception v4

    if-eqz v3, :cond_5c

    :try_start_54
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v5

    :try_start_59
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "factory":Ljavax/net/SocketFactory;
    .end local p0    # "hostname":Ljava/lang/String;
    :cond_5c
    :goto_5c
    throw v4
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_5d

    .line 59
    .end local v3    # "socket":Ljavax/net/ssl/SSLSocket;
    .restart local v1    # "factory":Ljavax/net/SocketFactory;
    .restart local p0    # "hostname":Ljava/lang/String;
    :catch_5d
    move-exception v3

    .line 60
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "TLS handshake to %s failed."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    return v2
.end method
