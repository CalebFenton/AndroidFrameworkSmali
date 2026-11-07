.class public final Landroid/icu/util/DateInterval;
.super Ljava/lang/Object;
.source "DateInterval.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final greylist-max-o fromDate:J

.field private final greylist-max-o toDate:J


# direct methods
.method public constructor whitelist test-api <init>(JJ)V
    .registers 5
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Landroid/icu/util/DateInterval;->fromDate:J

    .line 35
    iput-wide p3, p0, Landroid/icu/util/DateInterval;->toDate:J

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "a"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Landroid/icu/util/DateInterval;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 61
    move-object v0, p1

    check-cast v0, Landroid/icu/util/DateInterval;

    .line 62
    .local v0, "di":Landroid/icu/util/DateInterval;
    iget-wide v2, p0, Landroid/icu/util/DateInterval;->fromDate:J

    iget-wide v4, v0, Landroid/icu/util/DateInterval;->fromDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    iget-wide v4, v0, Landroid/icu/util/DateInterval;->toDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 64
    .end local v0    # "di":Landroid/icu/util/DateInterval;
    :cond_1a
    return v1
.end method

.method public whitelist test-api getFromDate()J
    .registers 3

    .line 44
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->fromDate:J

    return-wide v0
.end method

.method public whitelist test-api getToDate()J
    .registers 3

    .line 53
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->toDate:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 71
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->fromDate:J

    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/icu/util/DateInterval;->fromDate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/icu/util/DateInterval;->toDate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
