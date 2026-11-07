.class public final Landroid/system/StructTimespec;
.super Ljava/lang/Object;
.source "StructTimespec.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/system/StructTimespec;",
        ">;"
    }
.end annotation


# instance fields
.field public final whitelist test-api tv_nsec:J

.field public final whitelist test-api tv_sec:J


# direct methods
.method public constructor whitelist test-api <init>(JJ)V
    .registers 8
    .param p1, "tv_sec"    # J
    .param p3, "tv_nsec"    # J

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/system/StructTimespec;->tv_sec:J

    .line 33
    iput-wide p3, p0, Landroid/system/StructTimespec;->tv_nsec:J

    .line 34
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_15

    const-wide/32 v0, 0x3b9ac9ff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_15

    .line 38
    return-void

    .line 35
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tv_nsec value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in [0, 999999999]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api compareTo(Landroid/system/StructTimespec;)I
    .registers 9
    .param p1, "other"    # Landroid/system/StructTimespec;

    .line 42
    iget-wide v0, p0, Landroid/system/StructTimespec;->tv_sec:J

    iget-wide v2, p1, Landroid/system/StructTimespec;->tv_sec:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_a

    .line 43
    return v1

    .line 45
    :cond_a
    iget-wide v2, p0, Landroid/system/StructTimespec;->tv_sec:J

    iget-wide v4, p1, Landroid/system/StructTimespec;->tv_sec:J

    cmp-long v0, v2, v4

    const/4 v2, -0x1

    if-gez v0, :cond_14

    .line 46
    return v2

    .line 48
    :cond_14
    iget-wide v3, p0, Landroid/system/StructTimespec;->tv_nsec:J

    iget-wide v5, p1, Landroid/system/StructTimespec;->tv_nsec:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1d

    .line 49
    return v1

    .line 51
    :cond_1d
    iget-wide v0, p0, Landroid/system/StructTimespec;->tv_nsec:J

    iget-wide v3, p1, Landroid/system/StructTimespec;->tv_nsec:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_26

    .line 52
    return v2

    .line 54
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    check-cast p1, Landroid/system/StructTimespec;

    invoke-virtual {p0, p1}, Landroid/system/StructTimespec;->compareTo(Landroid/system/StructTimespec;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 60
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 62
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/system/StructTimespec;

    .line 64
    .local v2, "that":Landroid/system/StructTimespec;
    iget-wide v3, p0, Landroid/system/StructTimespec;->tv_sec:J

    iget-wide v5, v2, Landroid/system/StructTimespec;->tv_sec:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    return v1

    .line 65
    :cond_1e
    iget-wide v3, p0, Landroid/system/StructTimespec;->tv_nsec:J

    iget-wide v5, v2, Landroid/system/StructTimespec;->tv_nsec:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    .line 60
    .end local v2    # "that":Landroid/system/StructTimespec;
    :cond_29
    :goto_29
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 70
    iget-wide v0, p0, Landroid/system/StructTimespec;->tv_sec:J

    iget-wide v2, p0, Landroid/system/StructTimespec;->tv_sec:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 71
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/system/StructTimespec;->tv_nsec:J

    iget-wide v5, p0, Landroid/system/StructTimespec;->tv_nsec:J

    ushr-long v4, v5, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 72
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 77
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
