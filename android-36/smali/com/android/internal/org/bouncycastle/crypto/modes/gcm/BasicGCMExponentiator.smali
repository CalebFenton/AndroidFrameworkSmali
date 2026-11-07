.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;
.super Ljava/lang/Object;
.source "BasicGCMExponentiator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private blacklist x:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist exponentiateX(J[B)V
    .registers 10
    .param p1, "pow"    # J
    .param p3, "output"    # [B

    .line 20
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsLongs()[J

    move-result-object v0

    .line 22
    .local v0, "y":[J
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_25

    .line 24
    const/4 v3, 0x2

    new-array v3, v3, [J

    .line 25
    .local v3, "powX":[J
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[J

    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([J[J)V

    .line 29
    :cond_12
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v4, v4, v1

    if-eqz v4, :cond_1c

    .line 31
    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 33
    :cond_1c
    invoke-static {v3, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->square([J[J)V

    .line 34
    const/4 v4, 0x1

    ushr-long/2addr p1, v4

    .line 36
    cmp-long v4, p1, v1

    if-gtz v4, :cond_12

    .line 39
    .end local v3    # "powX":[J
    :cond_25
    invoke-static {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 40
    return-void
.end method

.method public blacklist init([B)V
    .registers 3
    .param p1, "x"    # [B

    .line 14
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[J

    .line 15
    return-void
.end method
