.class public final Landroid/net/ipsec/ike/exceptions/InvalidKeException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "InvalidKeException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I = 0x2


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "dhGroup"    # I

    .line 48
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;->integerToByteArray(II)[B

    move-result-object v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 58
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist getDhGroup()I
    .registers 2

    .line 67
    invoke-virtual {p0}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;->getErrorData()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;->byteArrayToInteger([B)I

    move-result v0

    return v0
.end method

.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 83
    const v0, 0x40011

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 73
    const/4 v0, 0x2

    if-ne v0, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method
