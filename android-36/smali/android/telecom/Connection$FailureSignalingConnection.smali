.class Landroid/telecom/Connection$FailureSignalingConnection;
.super Landroid/telecom/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailureSignalingConnection"
.end annotation


# instance fields
.field private greylist-max-o mImmutable:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telecom/DisconnectCause;)V
    .registers 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 3855
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 3854
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    .line 3856
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$FailureSignalingConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 3857
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    .line 3858
    return-void
.end method


# virtual methods
.method public greylist-max-o checkImmutable()V
    .registers 3

    .line 3861
    iget-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    if-nez v0, :cond_5

    .line 3864
    return-void

    .line 3862
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Connection is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
