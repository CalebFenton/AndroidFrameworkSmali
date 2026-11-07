.class public Landroid/security/keystore/BackendBusyException;
.super Ljava/security/ProviderException;
.source "BackendBusyException.java"


# instance fields
.field private final blacklist mBackOffHintMillis:J


# direct methods
.method public constructor whitelist <init>(J)V
    .registers 5
    .param p1, "backOffHintMillis"    # J

    .line 38
    const-string v0, "The keystore backend has no operation slots available. Retry later."

    invoke-direct {p0, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 39
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_e

    .line 42
    iput-wide p1, p0, Landroid/security/keystore/BackendBusyException;->mBackOffHintMillis:J

    .line 43
    return-void

    .line 40
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Back-off hint cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(JLjava/lang/String;)V
    .registers 6
    .param p1, "backOffHintMillis"    # J
    .param p3, "message"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    .line 55
    iput-wide p1, p0, Landroid/security/keystore/BackendBusyException;->mBackOffHintMillis:J

    .line 56
    return-void

    .line 53
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Back-off hint cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(JLjava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "backOffHintMillis"    # J
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 64
    invoke-direct {p0, p3, p4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    .line 68
    iput-wide p1, p0, Landroid/security/keystore/BackendBusyException;->mBackOffHintMillis:J

    .line 69
    return-void

    .line 66
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Back-off hint cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBackOffHintMillis()J
    .registers 3

    .line 79
    iget-wide v0, p0, Landroid/security/keystore/BackendBusyException;->mBackOffHintMillis:J

    return-wide v0
.end method
