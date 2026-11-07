.class public final Landroid/net/ipsec/ike/exceptions/InvalidMajorVersionException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "InvalidMajorVersionException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I = 0x1


# instance fields
.field private final blacklist mVersion:B


# direct methods
.method public constructor whitelist <init>(B)V
    .registers 4
    .param p1, "version"    # B

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 48
    iput-byte p1, p0, Landroid/net/ipsec/ike/exceptions/InvalidMajorVersionException;->mVersion:B

    .line 49
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 58
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 59
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/net/ipsec/ike/exceptions/InvalidMajorVersionException;->mVersion:B

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist getMajorVersion()B
    .registers 2

    .line 70
    iget-byte v0, p0, Landroid/net/ipsec/ike/exceptions/InvalidMajorVersionException;->mVersion:B

    return v0
.end method

.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 86
    const v0, 0x40005

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 76
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
