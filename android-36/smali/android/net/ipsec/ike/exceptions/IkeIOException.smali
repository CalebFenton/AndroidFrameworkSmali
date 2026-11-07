.class public final Landroid/net/ipsec/ike/exceptions/IkeIOException;
.super Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;
.source "IkeIOException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/io/IOException;)V
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;

    .line 46
    const-string v0, "cause MUST NOT be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist getCause()Ljava/io/IOException;
    .registers 2

    .line 59
    invoke-super {p0}, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/net/ipsec/ike/exceptions/IkeIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 75
    invoke-virtual {p0}, Landroid/net/ipsec/ike/exceptions/IkeIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_c

    .line 76
    const v0, 0x30002

    return v0

    .line 77
    :cond_c
    invoke-virtual {p0}, Landroid/net/ipsec/ike/exceptions/IkeIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    instance-of v0, v0, Landroid/net/ipsec/ike/exceptions/IkeTimeoutException;

    if-eqz v0, :cond_18

    .line 78
    const v0, 0x30001

    return v0

    .line 80
    :cond_18
    const/high16 v0, 0x30000

    return v0
.end method

.method public declared-synchronized whitelist test-api initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 65
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "It is not allowed to set cause with this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    .end local p0    # "this":Landroid/net/ipsec/ike/exceptions/IkeIOException;
    .end local p1    # "cause":Ljava/lang/Throwable;
    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method
