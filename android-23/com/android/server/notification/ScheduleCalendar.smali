.class public Lcom/android/server/notification/ScheduleCalendar;
.super Ljava/lang/Object;
.source "ScheduleCalendar.java"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Landroid/util/ArraySet;

    #@5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    #@a
    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@10
    .line 26
    return-void
.end method

.method private addDays(JI)J
    .locals 3
    .param p1, "time"    # J
    .param p3, "days"    # I

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@5
    .line 114
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@7
    const/4 v1, 0x5

    #@8
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    #@b
    .line 115
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@d
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@10
    move-result-wide v0

    #@11
    return-wide v0
.end method

.method private getDayOfWeek(J)I
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@5
    .line 100
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@7
    const/4 v1, 0x7

    #@8
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private getNextTime(JII)J
    .locals 3
    .param p1, "now"    # J
    .param p3, "hr"    # I
    .param p4, "min"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    #@3
    move-result-wide v0

    #@4
    .line 68
    .local v0, "time":J
    cmp-long v2, v0, p1

    #@6
    if-gtz v2, :cond_0

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    #@c
    move-result-wide v0

    #@d
    .end local v0    # "time":J
    :cond_0
    return-wide v0
.end method

.method private getTime(JII)J
    .locals 3
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 72
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@6
    .line 73
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@8
    const/16 v1, 0xb

    #@a
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    #@d
    .line 74
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@f
    const/16 v1, 0xc

    #@11
    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    #@14
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@16
    const/16 v1, 0xd

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@1b
    .line 76
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@1d
    const/16 v1, 0xe

    #@1f
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@22
    .line 77
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@24
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@27
    move-result-wide v0

    #@28
    return-wide v0
.end method

.method private isInSchedule(IJJJ)Z
    .locals 6
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 91
    const/4 v1, 0x7

    #@2
    .line 92
    .local v1, "n":I
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/ScheduleCalendar;->getDayOfWeek(J)I

    #@5
    move-result v3

    #@6
    add-int/lit8 v3, v3, -0x1

    #@8
    rem-int/lit8 v4, p1, 0x7

    #@a
    add-int/2addr v3, v4

    #@b
    add-int/lit8 v3, v3, 0x7

    #@d
    rem-int/lit8 v3, v3, 0x7

    #@f
    add-int/lit8 v0, v3, 0x1

    #@11
    .line 93
    .local v0, "day":I
    invoke-direct {p0, p4, p5, p1}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    #@14
    move-result-wide p4

    #@15
    .line 94
    invoke-direct {p0, p6, p7, p1}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    #@18
    move-result-wide p6

    #@19
    .line 95
    iget-object v3, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    #@1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    cmp-long v3, p2, p4

    #@27
    if-ltz v3, :cond_0

    #@29
    cmp-long v3, p2, p6

    #@2b
    if-gez v3, :cond_0

    #@2d
    const/4 v2, 0x1

    #@2e
    :cond_0
    return v2
.end method

.method private updateDays()V
    .locals 3

    #@0
    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    #@5
    .line 105
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@b
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 106
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@12
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@14
    array-length v1, v1

    #@15
    if-ge v0, v1, :cond_0

    #@17
    .line 107
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    #@19
    iget-object v2, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@1b
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@1d
    aget v2, v2, v0

    #@1f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@26
    .line 106
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 103
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getNextChangeTime(J)J
    .locals 7
    .param p1, "now"    # J

    #@0
    .prologue
    .line 60
    iget-object v4, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@2
    if-nez v4, :cond_0

    #@4
    const-wide/16 v4, 0x0

    #@6
    return-wide v4

    #@7
    .line 61
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@9
    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@b
    iget-object v5, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@d
    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@f
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/notification/ScheduleCalendar;->getNextTime(JII)J

    #@12
    move-result-wide v2

    #@13
    .line 62
    .local v2, "nextStart":J
    iget-object v4, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@15
    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@17
    iget-object v5, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@19
    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@1b
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/notification/ScheduleCalendar;->getNextTime(JII)J

    #@1e
    move-result-wide v0

    #@1f
    .line 63
    .local v0, "nextEnd":J
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@22
    move-result-wide v4

    #@23
    return-wide v4
.end method

.method public isInSchedule(J)Z
    .locals 11
    .param p1, "time"    # J

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 81
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    #@8
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    :cond_0
    return v9

    #@f
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@11
    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@13
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@15
    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@17
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    #@1a
    move-result-wide v4

    #@1b
    .line 83
    .local v4, "start":J
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@1d
    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@1f
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@21
    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@23
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    #@26
    move-result-wide v6

    #@27
    .line 84
    .local v6, "end":J
    cmp-long v0, v6, v4

    #@29
    if-gtz v0, :cond_2

    #@2b
    .line 85
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    #@2e
    move-result-wide v6

    #@2f
    .line 87
    :cond_2
    const/4 v1, -0x1

    #@30
    move-object v0, p0

    #@31
    move-wide v2, p1

    #@32
    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_3

    #@38
    move-object v0, p0

    #@39
    move v1, v9

    #@3a
    move-wide v2, p1

    #@3b
    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    #@3e
    move-result v0

    #@3f
    :goto_0
    return v0

    #@40
    :cond_3
    move v0, v8

    #@41
    goto :goto_0
.end method

.method public nextScheduleStart(J)J
    .locals 11
    .param p1, "time"    # J

    #@0
    .prologue
    const-wide v8, 0x7fffffffffffffffL

    #@5
    .line 44
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    :cond_0
    return-wide v8

    #@12
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@14
    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@16
    iget-object v6, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@18
    iget v6, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@1a
    invoke-direct {p0, p1, p2, v1, v6}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    #@1d
    move-result-wide v2

    #@1e
    .line 46
    .local v2, "start":J
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    #@20
    if-ge v0, v1, :cond_3

    #@22
    .line 47
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    #@25
    move-result-wide v4

    #@26
    .line 48
    .local v4, "t":J
    cmp-long v1, v4, p1

    #@28
    if-lez v1, :cond_2

    #@2a
    invoke-virtual {p0, v4, v5}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(J)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 49
    return-wide v4

    #@31
    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 52
    .end local v4    # "t":J
    :cond_3
    return-wide v8
.end method

.method public setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V
    .locals 1
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    return-void

    #@9
    .line 39
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@b
    .line 40
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleCalendar;->updateDays()V

    #@e
    .line 37
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@5
    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ScheduleCalendar[mDays="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
