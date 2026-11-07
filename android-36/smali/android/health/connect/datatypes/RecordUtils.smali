.class public Landroid/health/connect/datatypes/RecordUtils;
.super Ljava/lang/Object;
.source "RecordUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDefaultZoneOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 43
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "sequence1"    # Ljava/lang/CharSequence;
    .param p1, "sequence2"    # Ljava/lang/CharSequence;

    .line 35
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    .line 36
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    .line 39
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/CharSequence;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    return v0
.end method
