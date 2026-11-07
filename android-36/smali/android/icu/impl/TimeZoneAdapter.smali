.class public Landroid/icu/impl/TimeZoneAdapter;
.super Ljava/util/TimeZone;
.source "TimeZoneAdapter.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x1c4fcadfcee9017dL


# instance fields
.field private blacklist zone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 62
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    .line 64
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist wrap(Landroid/icu/util/TimeZone;)Ljava/util/TimeZone;
    .registers 2
    .param p0, "tz"    # Landroid/icu/util/TimeZone;

    .line 49
    new-instance v0, Landroid/icu/impl/TimeZoneAdapter;

    invoke-direct {v0, p0}, Landroid/icu/impl/TimeZoneAdapter;-><init>(Landroid/icu/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 131
    new-instance v0, Landroid/icu/impl/TimeZoneAdapter;

    iget-object v1, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/TimeZone;

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneAdapter;-><init>(Landroid/icu/util/TimeZone;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 147
    if-ne p0, p1, :cond_4

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_4
    instance-of v0, p1, Landroid/icu/impl/TimeZoneAdapter;

    if-eqz v0, :cond_14

    .line 151
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/TimeZoneAdapter;

    iget-object v0, v0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    .line 152
    .local v0, "anotherZone":Landroid/icu/util/TimeZone;
    iget-object v1, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1, v0}, Landroid/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 154
    .end local v0    # "anotherZone":Landroid/icu/util/TimeZone;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 14
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    .line 91
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "era":I
    .end local p2    # "year":I
    .end local p3    # "month":I
    .end local p4    # "day":I
    .end local p5    # "dayOfWeek":I
    .end local p6    # "millis":I
    .local v1, "era":I
    .local v2, "year":I
    .local v3, "month":I
    .local v4, "day":I
    .local v5, "dayOfWeek":I
    .local v6, "millis":I
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    return p1
.end method

.method public whitelist test-api getRawOffset()I
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasSameRules(Ljava/util/TimeZone;)Z
    .registers 4
    .param p1, "other"    # Ljava/util/TimeZone;

    .line 81
    instance-of v0, p1, Landroid/icu/impl/TimeZoneAdapter;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/TimeZoneAdapter;

    iget-object v1, v1, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    .line 82
    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 81
    :goto_14
    return v0
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 2

    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->hashCode()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 139
    .end local p0    # "this":Landroid/icu/impl/TimeZoneAdapter;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 123
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setID(Ljava/lang/String;)V
    .registers 3
    .param p1, "ID"    # Ljava/lang/String;

    .line 72
    invoke-super {p0, p1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 3
    .param p1, "offsetMillis"    # I

    .line 107
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->setRawOffset(I)V

    .line 108
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unwrap()Landroid/icu/util/TimeZone;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method
