.class public final Landroid/net/ipsec/ike/exceptions/ChildSaNotFoundException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "ChildSaNotFoundException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I


# instance fields
.field private final blacklist mIpSecSpi:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "spi"    # I

    .line 47
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I)V

    .line 48
    iput p1, p0, Landroid/net/ipsec/ike/exceptions/ChildSaNotFoundException;->mIpSecSpi:I

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 4
    .param p1, "spi"    # I
    .param p2, "notifyData"    # [B

    .line 59
    const/16 v0, 0x2c

    invoke-direct {p0, v0, p2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 60
    iput p1, p0, Landroid/net/ipsec/ike/exceptions/ChildSaNotFoundException;->mIpSecSpi:I

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist getIpSecSpi()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/net/ipsec/ike/exceptions/ChildSaNotFoundException;->mIpSecSpi:I

    return v0
.end method

.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 81
    const v0, 0x4002c

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 66
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
