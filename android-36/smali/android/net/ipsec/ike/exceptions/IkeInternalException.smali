.class public final Landroid/net/ipsec/ike/exceptions/IkeInternalException;
.super Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;
.source "IkeInternalException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0, p1}, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 80
    const/high16 v0, 0x10000

    return v0
.end method
