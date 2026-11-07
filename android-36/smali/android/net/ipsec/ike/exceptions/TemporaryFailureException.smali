.class public final Landroid/net/ipsec/ike/exceptions/TemporaryFailureException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "TemporaryFailureException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 47
    const/16 v0, 0x2b

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 57
    const/16 v0, 0x2b

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 73
    const v0, 0x4002b

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 63
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
