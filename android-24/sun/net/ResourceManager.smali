.class public Lsun/net/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final DEFAULT_MAX_SOCKETS:I = 0x19

.field private static final maxSockets:I

.field private static final numSockets:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 57
    new-instance v3, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v4, "sun.net.maxDatagramSockets"

    #@5
    invoke-direct {v3, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 56
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/lang/String;

    #@e
    .line 59
    .local v2, "prop":Ljava/lang/String;
    const/16 v0, 0x19

    #@10
    .line 61
    .local v0, "defmax":I
    if-eqz v2, :cond_0

    #@12
    .line 62
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v0

    #@16
    .line 65
    :cond_0
    :goto_0
    sput v0, Lsun/net/ResourceManager;->maxSockets:I

    #@18
    .line 66
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@1e
    sput-object v3, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    #@20
    .line 40
    return-void

    #@21
    .line 64
    :catch_0
    move-exception v1

    #@22
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static afterUdpClose()V
    .locals 1

    #@0
    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 80
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@b
    .line 78
    :cond_0
    return-void
.end method

.method public static beforeUdpCreate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 71
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@b
    move-result v0

    #@c
    sget v1, Lsun/net/ResourceManager;->maxSockets:I

    #@e
    if-le v0, v1, :cond_0

    #@10
    .line 72
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@15
    .line 73
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "maximum number of DatagramSockets reached"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 69
    :cond_0
    return-void
.end method
