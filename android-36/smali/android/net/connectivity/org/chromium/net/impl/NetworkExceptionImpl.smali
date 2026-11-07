.class public Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;
.super Landroid/net/connectivity/org/chromium/net/NetworkException;
.source "NetworkExceptionImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected final blacklist mCronetInternalErrorCode:I

.field protected final blacklist mErrorCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 10
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "cronetInternalErrorCode"    # I

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    nop

    .line 28
    nop

    .line 29
    iput p2, p0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->mErrorCode:I

    .line 30
    iput p3, p0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->mCronetInternalErrorCode:I

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist getCronetInternalErrorCode()I
    .registers 2

    .line 40
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->mCronetInternalErrorCode:I

    return v0
.end method

.method public blacklist getErrorCode()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/net/connectivity/org/chromium/net/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, ", ErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->mCronetInternalErrorCode:I

    if-eqz v1, :cond_23

    .line 67
    const-string v1, ", InternalErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->mCronetInternalErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    :cond_23
    const-string v1, ", Retryable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->immediatelyRetryable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist immediatelyRetryable()Z
    .registers 2

    .line 45
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->mErrorCode:I

    packed-switch v0, :pswitch_data_a

    .line 52
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 58
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
