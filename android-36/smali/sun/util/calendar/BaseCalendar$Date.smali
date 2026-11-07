.class public abstract Lsun/util/calendar/BaseCalendar$Date;
.super Lsun/util/calendar/CalendarDate;
.source "BaseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/BaseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Date"
.end annotation


# instance fields
.field blacklist cachedFixedDateJan1:J

.field blacklist cachedFixedDateNextJan1:J

.field blacklist cachedYear:I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 5

    .line 145
    invoke-direct {p0}, Lsun/util/calendar/CalendarDate;-><init>()V

    .line 164
    const/16 v0, 0x7d4

    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    .line 165
    const-wide/32 v0, 0xb29bd

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    .line 166
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    const-wide/16 v2, 0x16e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    .line 146
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/TimeZone;)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 148
    invoke-direct {p0, p1}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    .line 164
    const/16 v0, 0x7d4

    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    .line 165
    const-wide/32 v0, 0xb29bd

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    .line 166
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    const-wide/16 v2, 0x16e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    .line 149
    return-void
.end method


# virtual methods
.method protected blacklist getCachedJan1()J
    .registers 3

    .line 181
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    return-wide v0
.end method

.method protected blacklist getCachedYear()I
    .registers 2

    .line 177
    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    return v0
.end method

.method public abstract greylist-max-r getNormalizedYear()I
.end method

.method protected final blacklist hit(I)Z
    .registers 3
    .param p1, "year"    # I

    .line 169
    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected final blacklist hit(J)Z
    .registers 5
    .param p1, "fixedDate"    # J

    .line 173
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_e

    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected blacklist setCache(IJI)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "jan1"    # J
    .param p4, "len"    # I

    .line 185
    iput p1, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    .line 186
    iput-wide p2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    .line 187
    int-to-long v0, p4

    add-long/2addr v0, p2

    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    .line 188
    return-void
.end method

.method public blacklist setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;
    .registers 5
    .param p1, "normalizedYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 152
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 153
    invoke-virtual {p0, p2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 154
    return-object p0
.end method

.method public abstract greylist-max-r setNormalizedYear(I)V
.end method
