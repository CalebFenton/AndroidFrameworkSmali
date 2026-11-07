.class public abstract Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;
.super Landroid/net/ipsec/ike/exceptions/IkeException;
.source "IkeNonProtocolException.java"


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 35
    invoke-direct {p0, p1}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
