.class Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;
.super Ljava/lang/Object;
.source "ExtendedSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/net/ExtendedSocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlatformSocketOptions"
.end annotation


# static fields
.field private static final blacklist instance:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 355
    invoke-static {}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->create()Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    move-result-object v0

    sput-object v0, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->instance:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist create()Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;
    .registers 1

    .line 352
    new-instance v0, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    invoke-direct {v0}, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;-><init>()V

    return-object v0
.end method

.method static blacklist get()Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;
    .registers 1

    .line 358
    sget-object v0, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;->instance:Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;

    return-object v0
.end method

.method private static blacklist newInstance(Ljava/lang/String;)Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;
    .registers 4
    .param p0, "cn"    # Ljava/lang/String;

    .line 330
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 331
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;
    :try_end_13
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 332
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljdk/net/ExtendedSocketOptions$PlatformSocketOptions;>;"
    :catch_14
    move-exception v0

    .line 333
    .local v0, "x":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method blacklist flowSupported()Z
    .registers 2

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getFlowOption(ILjdk/net/SocketFlow;)I
    .registers 5
    .param p1, "fd"    # I
    .param p2, "f"    # Ljdk/net/SocketFlow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported socket option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getQuickAck(I)Z
    .registers 4
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported TCP_QUICKACK option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getTcpKeepAliveIntvl(I)I
    .registers 4
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported TCP_KEEPINTVL option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getTcpKeepAliveTime(I)I
    .registers 4
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported TCP_KEEPIDLE option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getTcpkeepAliveProbes(I)I
    .registers 4
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported TCP_KEEPCNT option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist keepAliveOptionsSupported()Z
    .registers 2

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method blacklist quickAckSupported()Z
    .registers 2

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setFlowOption(IIJ)I
    .registers 7
    .param p1, "fd"    # I
    .param p2, "priority"    # I
    .param p3, "bandwidth"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported socket option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setQuickAck(IZ)V
    .registers 5
    .param p1, "fd"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported TCP_QUICKACK option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setTcpKeepAliveIntvl(II)V
    .registers 5
    .param p1, "fd"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported TCP_KEEPINTVL option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setTcpKeepAliveTime(II)V
    .registers 5
    .param p1, "fd"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported TCP_KEEPIDLE option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setTcpkeepAliveProbes(II)V
    .registers 5
    .param p1, "fd"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported TCP_KEEPCNT option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
