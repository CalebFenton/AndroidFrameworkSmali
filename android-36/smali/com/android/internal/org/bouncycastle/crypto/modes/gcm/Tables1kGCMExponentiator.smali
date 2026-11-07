.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;
.super Ljava/lang/Object;
.source "Tables1kGCMExponentiator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private blacklist lookupPowX2:Ljava/util/List;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getPowX2(I)[J
    .registers 6
    .param p1, "bit"    # I

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 49
    .local v0, "last":I
    if-ge v0, p1, :cond_22

    .line 51
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 54
    .local v1, "prev":[J
    :cond_12
    const/4 v2, 0x2

    new-array v2, v2, [J

    .line 55
    .local v2, "next":[J
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->square([J[J)V

    .line 56
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    move-object v1, v2

    .line 59
    .end local v2    # "next":[J
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_12

    .line 62
    .end local v1    # "prev":[J
    :cond_22
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    return-object v1
.end method


# virtual methods
.method public blacklist exponentiateX(J[B)V
    .registers 10
    .param p1, "pow"    # J
    .param p3, "output"    # [B

    .line 31
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsLongs()[J

    move-result-object v0

    .line 32
    .local v0, "y":[J
    const/4 v1, 0x0

    .line 33
    .local v1, "bit":I
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1e

    .line 35
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_19

    .line 37
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->getPowX2(I)[J

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 39
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 40
    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    goto :goto_5

    .line 43
    :cond_1e
    invoke-static {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 44
    return-void
.end method

.method public blacklist init([B)V
    .registers 7
    .param p1, "x"    # [B

    .line 19
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    .line 20
    .local v0, "y":[J
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/List;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([J[J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1c

    .line 22
    return-void

    .line 25
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/List;

    .line 26
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
