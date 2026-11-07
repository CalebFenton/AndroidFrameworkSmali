.class public interface abstract Landroid/net/ipsec/ike/ChildSessionCallback;
.super Ljava/lang/Object;
.source "ChildSessionCallback.java"


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

    .line 83
    return-void
.end method

.method public whitelist onClosedWithException(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 2
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 94
    invoke-interface {p0, p1}, Landroid/net/ipsec/ike/ChildSessionCallback;->onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 95
    return-void
.end method

.method public abstract whitelist onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V
.end method

.method public abstract whitelist onIpSecTransformDeleted(Landroid/net/IpSecTransform;I)V
.end method

.method public whitelist onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 3
    .param p1, "inIpSecTransform"    # Landroid/net/IpSecTransform;
    .param p2, "outIpSecTransform"    # Landroid/net/IpSecTransform;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 138
    return-void
.end method

.method public abstract whitelist onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
.end method
