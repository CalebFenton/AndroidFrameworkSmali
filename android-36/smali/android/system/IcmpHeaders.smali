.class public final Landroid/system/IcmpHeaders;
.super Ljava/lang/Object;
.source "IcmpHeaders.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createIcmpEchoHdr(ZI)[B
    .registers 5
    .param p0, "ipv4"    # Z
    .param p1, "seq"    # I

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 53
    .local v0, "bytes":[B
    if-eqz p0, :cond_9

    sget v1, Landroid/system/OsConstants;->ICMP_ECHO:I

    goto :goto_b

    :cond_9
    sget v1, Landroid/system/OsConstants;->ICMP6_ECHO_REQUEST:I

    :goto_b
    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 57
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 58
    const/4 v1, 0x7

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 59
    return-object v0
.end method
