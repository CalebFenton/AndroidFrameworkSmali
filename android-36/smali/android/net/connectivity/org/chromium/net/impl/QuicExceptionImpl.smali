.class public Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;
.super Landroid/net/connectivity/org/chromium/net/QuicException;
.source "QuicExceptionImpl.java"


# instance fields
.field private final blacklist mNetworkException:Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

.field private final blacklist mQuicDetailedErrorCode:I

.field private final blacklist mSource:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "netErrorCode"    # I
    .param p4, "quicDetailedErrorCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "errorCode":I
    .end local p3    # "netErrorCode":I
    .end local p4    # "quicDetailedErrorCode":I
    .local v1, "message":Ljava/lang/String;
    .local v2, "errorCode":I
    .local v3, "netErrorCode":I
    .local v4, "quicDetailedErrorCode":I
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;-><init>(Ljava/lang/String;IIII)V

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "netErrorCode"    # I
    .param p4, "quicDetailedErrorCode"    # I
    .param p5, "source"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/QuicException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    .line 50
    iput p4, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    .line 51
    iput p5, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mSource:I

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist getConnectionCloseSource()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mSource:I

    return v0
.end method

.method public blacklist getCronetInternalErrorCode()I
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->getCronetInternalErrorCode()I

    move-result v0

    return v0
.end method

.method public blacklist getErrorCode()I
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, ", QuicDetailedErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", Source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getQuicDetailedErrorCode()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    return v0
.end method

.method public blacklist immediatelyRetryable()Z
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->immediatelyRetryable()Z

    move-result v0

    return v0
.end method
