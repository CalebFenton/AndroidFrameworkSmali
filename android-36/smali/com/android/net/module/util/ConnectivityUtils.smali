.class public final Lcom/android/net/module/util/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 5
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .line 38
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_7

    const-string v0, "[%s]:%d"

    goto :goto_9

    :cond_7
    const-string v0, "%s:%d"

    .line 39
    :goto_9
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isIPv6ULA(Ljava/net/InetAddress;)Z
    .registers 4
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 46
    instance-of v0, p0, Ljava/net/Inet6Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 47
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xfe

    const/16 v2, 0xfc

    if-ne v0, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    nop

    .line 46
    :goto_14
    return v1
.end method

.method public static blacklist saturatedCast(J)I
    .registers 4
    .param p0, "value"    # J

    .line 59
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 60
    const v0, 0x7fffffff

    return v0

    .line 62
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 63
    const/high16 v0, -0x80000000

    return v0

    .line 65
    :cond_15
    long-to-int v0, p0

    return v0
.end method
