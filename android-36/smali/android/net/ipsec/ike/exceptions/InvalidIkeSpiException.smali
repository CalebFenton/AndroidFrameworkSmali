.class public final Landroid/net/ipsec/ike/exceptions/InvalidIkeSpiException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "InvalidIkeSpiException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 53
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 69
    const v0, 0x40004

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 59
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
