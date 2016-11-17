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
.field cachedFixedDateJan1:J

.field cachedFixedDateNextJan1:J

.field cachedYear:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Lsun/util/calendar/CalendarDate;-><init>()V

    #@3
    .line 165
    const/16 v0, 0x7d4

    #@5
    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    #@7
    .line 166
    const-wide/32 v0, 0xb29bd

    #@a
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    #@c
    .line 167
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    #@e
    const-wide/16 v2, 0x16e

    #@10
    add-long/2addr v0, v2

    #@11
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    #@13
    .line 145
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 4
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 149
    invoke-direct {p0, p1}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    #@3
    .line 165
    const/16 v0, 0x7d4

    #@5
    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    #@7
    .line 166
    const-wide/32 v0, 0xb29bd

    #@a
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    #@c
    .line 167
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    #@e
    const-wide/16 v2, 0x16e

    #@10
    add-long/2addr v0, v2

    #@11
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    #@13
    .line 148
    return-void
.end method


# virtual methods
.method protected getCachedJan1()J
    .locals 2

    #@0
    .prologue
    .line 182
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    #@2
    return-wide v0
.end method

.method protected getCachedYear()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    #@2
    return v0
.end method

.method public abstract getNormalizedYear()I
.end method

.method protected final hit(I)Z
    .locals 1
    .param p1, "year"    # I

    #@0
    .prologue
    .line 170
    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method protected final hit(J)Z
    .locals 5
    .param p1, "fixedDate"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 174
    iget-wide v2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    #@3
    cmp-long v1, p1, v2

    #@5
    if-ltz v1, :cond_0

    #@7
    .line 175
    iget-wide v2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    #@9
    cmp-long v1, p1, v2

    #@b
    if-gez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 174
    :cond_0
    return v0
.end method

.method protected setCache(IJI)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "jan1"    # J
    .param p4, "len"    # I

    #@0
    .prologue
    .line 186
    iput p1, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedYear:I

    #@2
    .line 187
    iput-wide p2, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateJan1:J

    #@4
    .line 188
    int-to-long v0, p4

    #@5
    add-long/2addr v0, p2

    #@6
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->cachedFixedDateNextJan1:J

    #@8
    .line 185
    return-void
.end method

.method public setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;
    .locals 1
    .param p1, "normalizedYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@3
    .line 154
    invoke-virtual {p0, p2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@a
    .line 155
    return-object p0
.end method

.method public abstract setNormalizedYear(I)V
.end method
