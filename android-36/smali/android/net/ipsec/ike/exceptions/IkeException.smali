.class public abstract Landroid/net/ipsec/ike/exceptions/IkeException;
.super Ljava/lang/Exception;
.source "IkeException.java"


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public static blacklist wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;
    .registers 2
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 50
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getWrappedIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getMetricsErrorCode()I
.end method
