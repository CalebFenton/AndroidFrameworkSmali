.class public final Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;
.super Ljava/lang/Object;
.source "PowerRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/PowerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerRecordSample"
.end annotation


# instance fields
.field private final blacklist mPower:Landroid/health/connect/datatypes/units/Power;

.field private final blacklist mTime:Ljava/time/Instant;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/Power;Ljava/time/Instant;)V
    .registers 4
    .param p1, "power"    # Landroid/health/connect/datatypes/units/Power;
    .param p2, "time"    # Ljava/time/Instant;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;-><init>(Landroid/health/connect/datatypes/units/Power;Ljava/time/Instant;Z)V

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Power;Ljava/time/Instant;Z)V
    .registers 11
    .param p1, "power"    # Landroid/health/connect/datatypes/units/Power;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "skipValidation"    # Z

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    if-nez p3, :cond_1b

    .line 115
    invoke-virtual {p1}, Landroid/health/connect/datatypes/units/Power;->getInWatts()D

    move-result-wide v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    const-string v6, "power"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 117
    :cond_1b
    iput-object p2, p0, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->mTime:Ljava/time/Instant;

    .line 118
    iput-object p1, p0, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->mPower:Landroid/health/connect/datatypes/units/Power;

    .line 119
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 145
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 146
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 147
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;

    .line 148
    .local v1, "that":Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;
    iget-object v3, p0, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->mPower:Landroid/health/connect/datatypes/units/Power;

    iget-object v4, v1, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->mPower:Landroid/health/connect/datatypes/units/Power;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->mTime:Ljava/time/Instant;

    .line 149
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    iget-object v5, v1, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->mTime:Ljava/time/Instant;

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    .line 148
    :goto_29
    return v0
.end method

.method public whitelist getPower()Landroid/health/connect/datatypes/units/Power;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->mPower:Landroid/health/connect/datatypes/units/Power;

    return-object v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->mTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 159
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->getPower()Landroid/health/connect/datatypes/units/Power;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
