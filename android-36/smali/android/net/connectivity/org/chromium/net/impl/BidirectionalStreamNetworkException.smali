.class public Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamNetworkException;
.super Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;
.source "BidirectionalStreamNetworkException.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 12
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "cronetInternalErrorCode"    # I

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;-><init>(Ljava/lang/String;II)V

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist immediatelyRetryable()Z
    .registers 2

    .line 21
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamNetworkException;->mCronetInternalErrorCode:I

    sparse-switch v0, :sswitch_data_e

    .line 27
    invoke-super {p0}, Landroid/net/connectivity/org/chromium/net/impl/NetworkExceptionImpl;->immediatelyRetryable()Z

    move-result v0

    return v0

    .line 24
    :sswitch_a
    nop

    .line 25
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        -0x166 -> :sswitch_a
        -0x160 -> :sswitch_a
    .end sparse-switch
.end method
