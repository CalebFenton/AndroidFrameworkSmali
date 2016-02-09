.class public final Landroid/icu/util/DateInterval;
.super Ljava/lang/Object;
.source "DateInterval.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fromDate:J

.field private final toDate:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-wide p1, p0, Landroid/icu/util/DateInterval;->fromDate:J

    #@5
    .line 34
    iput-wide p3, p0, Landroid/icu/util/DateInterval;->toDate:J

    #@7
    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "a"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    instance-of v2, p1, Landroid/icu/util/DateInterval;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 63
    check-cast v0, Landroid/icu/util/DateInterval;

    #@8
    .line 64
    .local v0, "di":Landroid/icu/util/DateInterval;
    iget-wide v2, p0, Landroid/icu/util/DateInterval;->fromDate:J

    #@a
    iget-wide v4, v0, Landroid/icu/util/DateInterval;->fromDate:J

    #@c
    cmp-long v2, v2, v4

    #@e
    if-nez v2, :cond_0

    #@10
    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    #@12
    iget-wide v4, v0, Landroid/icu/util/DateInterval;->toDate:J

    #@14
    cmp-long v2, v2, v4

    #@16
    if-nez v2, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    :cond_0
    return v1

    #@1a
    .line 66
    .end local v0    # "di":Landroid/icu/util/DateInterval;
    :cond_1
    return v1
.end method

.method public getFromDate()J
    .locals 2

    #@0
    .prologue
    .line 44
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->fromDate:J

    #@2
    return-wide v0
.end method

.method public getToDate()J
    .locals 2

    #@0
    .prologue
    .line 54
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->toDate:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 74
    iget-wide v0, p0, Landroid/icu/util/DateInterval;->fromDate:J

    #@2
    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    #@4
    add-long/2addr v0, v2

    #@5
    long-to-int v0, v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-wide v2, p0, Landroid/icu/util/DateInterval;->fromDate:J

    #@7
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, " "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-wide v2, p0, Landroid/icu/util/DateInterval;->toDate:J

    #@18
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method
