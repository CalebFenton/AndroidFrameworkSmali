.class public final Landroid/system/StructTimeval;
.super Ljava/lang/Object;
.source "StructTimeval.java"


# instance fields
.field public final whitelist test-api tv_sec:J

.field public final whitelist test-api tv_usec:J


# direct methods
.method private constructor greylist-max-o <init>(JJ)V
    .registers 8
    .param p1, "tv_sec"    # J
    .param p3, "tv_usec"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Landroid/system/StructTimeval;->tv_sec:J

    .line 34
    iput-wide p3, p0, Landroid/system/StructTimeval;->tv_usec:J

    .line 35
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_15

    const-wide/32 v0, 0xf423f

    cmp-long v0, p3, v0

    if-gtz v0, :cond_15

    .line 39
    return-void

    .line 36
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tv_usec value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in [0, 999999]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api fromMillis(J)Landroid/system/StructTimeval;
    .registers 8
    .param p0, "millis"    # J

    .line 45
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 46
    .local v2, "tv_sec":J
    mul-long v4, v2, v0

    cmp-long v4, v4, p0

    if-lez v4, :cond_d

    .line 47
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 49
    :cond_d
    mul-long v4, v2, v0

    sub-long v4, p0, v4

    mul-long/2addr v4, v0

    .line 50
    .local v4, "tv_usec":J
    new-instance v0, Landroid/system/StructTimeval;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/system/StructTimeval;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 65
    return v0

    .line 67
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 70
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/system/StructTimeval;

    .line 71
    .local v2, "that":Landroid/system/StructTimeval;
    iget-wide v3, p0, Landroid/system/StructTimeval;->tv_sec:J

    iget-wide v5, v2, Landroid/system/StructTimeval;->tv_sec:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    iget-wide v3, p0, Landroid/system/StructTimeval;->tv_usec:J

    iget-wide v5, v2, Landroid/system/StructTimeval;->tv_usec:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 68
    .end local v2    # "that":Landroid/system/StructTimeval;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 77
    iget-wide v0, p0, Landroid/system/StructTimeval;->tv_sec:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/system/StructTimeval;->tv_usec:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toMillis()J
    .registers 7

    .line 54
    iget-wide v0, p0, Landroid/system/StructTimeval;->tv_sec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v4, p0, Landroid/system/StructTimeval;->tv_usec:J

    div-long/2addr v4, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 59
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
