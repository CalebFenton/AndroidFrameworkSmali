.class public abstract Landroid/net/connectivity/org/chromium/base/TokenBase;
.super Ljava/lang/Object;
.source "TokenBase.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation


# instance fields
.field protected final blacklist mHigh:J

.field protected final blacklist mLow:J


# direct methods
.method protected constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "high"    # J
    .param p3, "low"    # J

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mHigh:J

    .line 20
    iput-wide p3, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mLow:J

    .line 21
    return-void
.end method

.method private blacklist getHighForSerialization()J
    .registers 3

    .line 25
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mHigh:J

    return-wide v0
.end method

.method private blacklist getLowForSerialization()J
    .registers 3

    .line 30
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mLow:J

    return-wide v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_23

    .line 38
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/TokenBase;

    .line 39
    .local v1, "other":Landroid/net/connectivity/org/chromium/base/TokenBase;
    iget-wide v2, v1, Landroid/net/connectivity/org/chromium/base/TokenBase;->mHigh:J

    iget-wide v4, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mHigh:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    iget-wide v2, v1, Landroid/net/connectivity/org/chromium/base/TokenBase;->mLow:J

    iget-wide v4, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mLow:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    .line 36
    .end local v1    # "other":Landroid/net/connectivity/org/chromium/base/TokenBase;
    :cond_23
    :goto_23
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 44
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mLow:J

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mLow:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 45
    .local v0, "mLowHash":I
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mHigh:J

    iget-wide v5, p0, Landroid/net/connectivity/org/chromium/base/TokenBase;->mHigh:J

    ushr-long v3, v5, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    .line 46
    .local v1, "mHighHash":I
    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v2, v1

    return v2
.end method
