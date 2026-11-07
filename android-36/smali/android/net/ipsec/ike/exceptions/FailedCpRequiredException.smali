.class public final Landroid/net/ipsec/ike/exceptions/FailedCpRequiredException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "FailedCpRequiredException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 54
    const/16 v0, 0x25

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 70
    const v0, 0x40025

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 60
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
