.class public Landroid/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isNumericAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "address"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Llibcore/net/InetAddressUtils;->isNumericAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "address"    # Ljava/lang/String;

    .line 63
    invoke-static {p0}, Llibcore/net/InetAddressUtils;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
