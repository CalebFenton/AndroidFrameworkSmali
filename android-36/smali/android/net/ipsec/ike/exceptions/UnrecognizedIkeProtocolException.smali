.class public final Landroid/net/ipsec/ike/exceptions/UnrecognizedIkeProtocolException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "UnrecognizedIkeProtocolException.java"


# instance fields
.field private final blacklist mUnrecognizedErrorData:[B


# direct methods
.method public constructor blacklist <init>(I[B)V
    .registers 4
    .param p1, "errorType"    # I
    .param p2, "errorData"    # [B

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 46
    const-string v0, "errorData is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/UnrecognizedIkeProtocolException;->mUnrecognizedErrorData:[B

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 71
    invoke-virtual {p0}, Landroid/net/ipsec/ike/exceptions/UnrecognizedIkeProtocolException;->getErrorType()I

    move-result v0

    return v0
.end method

.method public blacklist getUnrecognizedErrorData()[B
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/net/ipsec/ike/exceptions/UnrecognizedIkeProtocolException;->mUnrecognizedErrorData:[B

    return-object v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 61
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
