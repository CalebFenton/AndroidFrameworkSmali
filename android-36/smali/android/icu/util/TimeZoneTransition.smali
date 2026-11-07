.class public Landroid/icu/util/TimeZoneTransition;
.super Ljava/lang/Object;
.source "TimeZoneTransition.java"


# instance fields
.field private final greylist-max-o from:Landroid/icu/util/TimeZoneRule;

.field private final greylist-max-o time:J

.field private final greylist-max-o to:Landroid/icu/util/TimeZoneRule;


# direct methods
.method public constructor greylist-max-o <init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "from"    # Landroid/icu/util/TimeZoneRule;
    .param p4, "to"    # Landroid/icu/util/TimeZoneRule;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    .line 33
    iput-object p3, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    .line 34
    iput-object p4, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    .line 35
    return-void
.end method


# virtual methods
.method public greylist-max-o getFrom()Landroid/icu/util/TimeZoneRule;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    return-object v0
.end method

.method public greylist-max-o getTime()J
    .registers 3

    .line 43
    iget-wide v0, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    return-wide v0
.end method

.method public greylist-max-o getTo()Landroid/icu/util/TimeZoneRule;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", from={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", to={"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
