.class public Llibcore/net/InetAddressUtils;
.super Ljava/lang/Object;
.source "InetAddressUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist NETID_UNSET:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static blacklist test-api isNumericAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "address"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 62
    invoke-static {p0}, Llibcore/net/InetAddressUtils;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist test-api parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "address"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 82
    invoke-static {p0}, Llibcore/net/InetAddressUtils;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 83
    .local v0, "result":Ljava/net/InetAddress;
    if-eqz v0, :cond_7

    .line 86
    return-object v0

    .line 84
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a numeric address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/system/StructAddrinfo;

    invoke-direct {v0}, Landroid/system/StructAddrinfo;-><init>()V

    .line 94
    .local v0, "hints":Landroid/system/StructAddrinfo;
    sget v1, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    iput v1, v0, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "addresses":[Ljava/net/InetAddress;
    const/4 v2, 0x0

    :try_start_b
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p0, v0, v2}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v3
    :try_end_11
    .catch Landroid/system/GaiException; {:try_start_b .. :try_end_11} :catch_13

    move-object v1, v3

    .line 99
    goto :goto_14

    .line 98
    :catch_13
    move-exception v3

    .line 100
    :goto_14
    if-nez v1, :cond_18

    .line 101
    const/4 v2, 0x0

    return-object v2

    .line 103
    :cond_18
    aget-object v2, v1, v2

    return-object v2
.end method

.method public static blacklist parseNumericAddressNoThrowStripOptionalBrackets(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 114
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_23
    invoke-static {p0}, Llibcore/net/InetAddressUtils;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
