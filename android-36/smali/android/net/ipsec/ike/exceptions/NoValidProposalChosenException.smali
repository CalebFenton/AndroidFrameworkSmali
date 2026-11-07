.class public final Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "NoValidProposalChosenException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 64
    const/16 v0, 0xe

    invoke-direct {p0, v0, p2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(ILjava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 74
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 75
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 90
    const v0, 0x4000e

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 80
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
