.class public final Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/CountryTimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeZoneMapping"
.end annotation


# instance fields
.field private final blacklist alternativeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist notUsedAfter:Ljava/lang/Long;

.field private final blacklist shownInPicker:Z

.field private blacklist timeZone:Landroid/icu/util/TimeZone;

.field private final blacklist timeZoneId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettimeZoneId(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/List;)V
    .registers 6
    .param p1, "timeZoneId"    # Ljava/lang/String;
    .param p2, "shownInPicker"    # Z
    .param p3, "notUsedAfter"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p4, "alternativeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->shownInPicker:Z

    .line 59
    iput-object p3, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->alternativeIds:Ljava/util/List;

    .line 61
    return-void
.end method

.method static blacklist containsTimeZoneId(Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .param p1, "timeZoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 157
    .local p0, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 158
    .local v1, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    iget-object v2, v1, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 159
    const/4 v0, 0x1

    return v0

    .line 161
    .end local v1    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_1a
    goto :goto_4

    .line 162
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist test-api createForTests(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/List;)Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    .registers 5
    .param p0, "timeZoneId"    # Ljava/lang/String;
    .param p1, "showInPicker"    # Z
    .param p2, "notUsedAfter"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;"
        }
    .end annotation

    .line 118
    .local p3, "alternativeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;-><init>(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 124
    return v0

    .line 126
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 129
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 130
    .local v2, "that":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    iget-boolean v3, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->shownInPicker:Z

    iget-boolean v4, v2, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->shownInPicker:Z

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    .line 131
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    iget-object v4, v2, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->alternativeIds:Ljava/util/List;

    iget-object v4, v2, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->alternativeIds:Ljava/util/List;

    .line 133
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 130
    :goto_3b
    return v0

    .line 127
    .end local v2    # "that":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public blacklist test-api getAlternativeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->alternativeIds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist test-api getTimeZone()Landroid/icu/util/TimeZone;
    .registers 5

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZone:Landroid/icu/util/TimeZone;

    if-nez v0, :cond_35

    .line 90
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 91
    .local v0, "tz":Landroid/icu/util/TimeZone;
    iput-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZone:Landroid/icu/util/TimeZone;

    .line 92
    const-string v1, "Etc/Unknown"

    iget-object v2, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_35

    .line 95
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid zone in TimeZoneMapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    throw v1

    .line 98
    .end local v0    # "tz":Landroid/icu/util/TimeZone;
    .restart local p0    # "this":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_35
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_49

    .line 100
    const-string v0, "Etc/Unknown"

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    goto :goto_48

    :cond_46
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZone:Landroid/icu/util/TimeZone;

    :goto_48
    return-object v0

    .line 98
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public blacklist test-api getTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->shownInPicker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->alternativeIds:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist isEffectiveAt(J)Z
    .registers 5
    .param p1, "whenMillis"    # J

    .line 111
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public blacklist test-api isShownInPickerAt(Ljava/time/Instant;)Z
    .registers 6
    .param p1, "time"    # Ljava/time/Instant;

    .line 70
    iget-boolean v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->shownInPicker:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 70
    :goto_19
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneMapping{timeZoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shownInPicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->shownInPicker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notUsedAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alternativeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->alternativeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
