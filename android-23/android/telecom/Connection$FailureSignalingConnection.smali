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
.field private mImmutable:Z


# direct methods
.method public constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 1
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 1813
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    #@3
    .line 1812
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    #@6
    .line 1814
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$FailureSignalingConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    #@9
    .line 1815
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    #@c
    .line 1813
    return-void
.end method


# virtual methods
.method public checkImmutable()V
    .locals 2

    #@0
    .prologue
    .line 1819
    iget-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "Connection is immutable"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1818
    :cond_0
    return-void
.end method
