.class public Lsun/net/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final blacklist DEFAULT_MAX_SOCKETS:I = 0x19

.field private static final blacklist maxSockets:I

.field private static final blacklist numSockets:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 56
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.net.maxDatagramSockets"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "prop":Ljava/lang/String;
    const/16 v1, 0x19

    .line 61
    .local v1, "defmax":I
    if-eqz v0, :cond_18

    .line 62
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_17

    move v1, v2

    goto :goto_18

    .line 64
    :catch_17
    move-exception v2

    :cond_18
    :goto_18
    nop

    .line 65
    sput v1, Lsun/net/ResourceManager;->maxSockets:I

    .line 66
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v2, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    .end local v0    # "prop":Ljava/lang/String;
    .end local v1    # "defmax":I
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist afterUdpClose()V
    .registers 1

    .line 79
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 80
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 82
    :cond_b
    return-void
.end method

.method public static blacklist beforeUdpCreate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 70
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 71
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget v1, Lsun/net/ResourceManager;->maxSockets:I

    if-gt v0, v1, :cond_11

    goto :goto_1e

    .line 72
    :cond_11
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 73
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "maximum number of DatagramSockets reached"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1e
    :goto_1e
    return-void
.end method
