.class public interface abstract Landroid/net/ipsec/ike/IkeSessionCallback;
.super Ljava/lang/Object;
.source "IkeSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/IkeSessionCallback$LivenessStatus;
    }
.end annotation


# static fields
.field public static final whitelist LIVENESS_STATUS_BACKGROUND_ONGOING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LIVENESS_STATUS_BACKGROUND_STARTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LIVENESS_STATUS_FAILURE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LIVENESS_STATUS_ON_DEMAND_ONGOING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LIVENESS_STATUS_ON_DEMAND_STARTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LIVENESS_STATUS_SUCCESS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# virtual methods
.method public abstract whitelist onClosed()V
.end method

.method public whitelist onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 2
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    return-void
.end method

.method public whitelist onClosedWithException(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 2
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 165
    invoke-interface {p0, p1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 166
    return-void
.end method

.method public whitelist onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 3
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 192
    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    if-eqz v0, :cond_b

    .line 193
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-interface {p0, v0}, Landroid/net/ipsec/ike/IkeSessionCallback;->onError(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    .line 194
    return-void

    .line 198
    :cond_b
    return-void
.end method

.method public whitelist onError(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .registers 2
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    return-void
.end method

.method public whitelist onIkeSessionConnectionInfoChanged(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 2
    .param p1, "connectionInfo"    # Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 241
    return-void
.end method

.method public whitelist onLivenessStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 326
    return-void
.end method

.method public abstract whitelist onOpened(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
.end method
