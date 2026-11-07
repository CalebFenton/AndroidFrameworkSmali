.class public Landroid/net/ssl/SSLSockets;
.super Ljava/lang/Object;
.source "SSLSockets.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkSupported(Ljavax/net/ssl/SSLSocket;)V
    .registers 3
    .param p0, "s"    # Ljavax/net/ssl/SSLSocket;

    .line 42
    invoke-static {p0}, Landroid/net/ssl/SSLSockets;->isSupportedSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    return-void

    .line 43
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is not a supported socket."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;[BI)[B
    .registers 5
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Landroid/net/ssl/SSLSockets;->checkSupported(Ljavax/net/ssl/SSLSocket;)V

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/conscrypt/Conscrypt;->exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api isSupportedSocket(Ljavax/net/ssl/SSLSocket;)Z
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 38
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "useSessionTickets"    # Z

    .line 57
    invoke-static {p0}, Landroid/net/ssl/SSLSockets;->checkSupported(Ljavax/net/ssl/SSLSocket;)V

    .line 58
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 59
    return-void
.end method
