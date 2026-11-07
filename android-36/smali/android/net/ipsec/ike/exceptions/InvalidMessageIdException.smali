.class public final Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "InvalidMessageIdException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I = 0x4


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "messageId"    # I

    .line 45
    nop

    .line 47
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;->integerToByteArray(II)[B

    move-result-object v0

    .line 45
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 57
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist getMessageId()I
    .registers 2

    .line 66
    invoke-virtual {p0}, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;->getErrorData()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;->byteArrayToInteger([B)I

    move-result v0

    return v0
.end method

.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 82
    const v0, 0x40009

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 72
    const/4 v0, 0x4

    if-ne v0, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method
