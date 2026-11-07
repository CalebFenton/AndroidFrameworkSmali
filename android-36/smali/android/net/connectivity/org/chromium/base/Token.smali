.class public final Landroid/net/connectivity/org/chromium/base/Token;
.super Landroid/net/connectivity/org/chromium/base/TokenBase;
.source "Token.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "This is a simple value object."
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/Token$Natives;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "high"    # J
    .param p3, "low"    # J

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/base/TokenBase;-><init>(JJ)V

    .line 35
    return-void
.end method

.method public static blacklist createRandom()Landroid/net/connectivity/org/chromium/base/Token;
    .registers 1

    .line 22
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TokenJni;->get()Landroid/net/connectivity/org/chromium/base/Token$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/Token$Natives;->createRandom()Landroid/net/connectivity/org/chromium/base/Token;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getHigh()J
    .registers 3

    .line 44
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/Token;->mHigh:J

    return-wide v0
.end method

.method public blacklist getLow()J
    .registers 3

    .line 49
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/Token;->mLow:J

    return-wide v0
.end method

.method public blacklist isZero()Z
    .registers 5

    .line 39
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/Token;->mHigh:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/Token;->mLow:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 54
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/Token;->mHigh:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/Token;->mLow:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%016X%016X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
