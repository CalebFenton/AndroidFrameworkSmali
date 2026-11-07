.class public final Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "InvalidSyntaxException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 77
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 62
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(ILjava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 87
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 88
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 103
    const v0, 0x40007

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 93
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
