.class public abstract Lsun/util/calendar/CalendarSystem;
.super Ljava/lang/Object;
.source "CalendarSystem.java"


# static fields
.field private static final GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

.field private static final calendars:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/util/calendar/CalendarSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static final names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    #@7
    .line 87
    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    #@9
    const-string/jumbo v1, "gregorian"

    #@c
    const-class v2, Lsun/util/calendar/Gregorian;

    #@e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 88
    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    #@13
    const-string/jumbo v1, "japanese"

    #@16
    const-class v2, Lsun/util/calendar/LocalGregorianCalendar;

    #@18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 89
    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    #@1d
    const-string/jumbo v1, "julian"

    #@20
    const-class v2, Lsun/util/calendar/JulianCalendar;

    #@22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@2a
    .line 97
    sput-object v0, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    #@2c
    .line 100
    new-instance v0, Lsun/util/calendar/Gregorian;

    #@2e
    invoke-direct {v0}, Lsun/util/calendar/Gregorian;-><init>()V

    #@31
    sput-object v0, Lsun/util/calendar/CalendarSystem;->GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

    #@33
    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;
    .locals 6
    .param p0, "calendarName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 123
    const-string/jumbo v4, "gregorian"

    #@4
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 124
    sget-object v4, Lsun/util/calendar/CalendarSystem;->GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

    #@c
    return-object v4

    #@d
    .line 127
    :cond_0
    sget-object v4, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    #@f
    invoke-interface {v4, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lsun/util/calendar/CalendarSystem;

    #@15
    .line 128
    .local v0, "cal":Lsun/util/calendar/CalendarSystem;
    if-eqz v0, :cond_1

    #@17
    .line 129
    return-object v0

    #@18
    .line 132
    :cond_1
    sget-object v4, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    #@1a
    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/Class;

    #@20
    .line 133
    .local v1, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_2

    #@22
    .line 134
    return-object v5

    #@23
    .line 137
    :cond_2
    const-class v4, Lsun/util/calendar/LocalGregorianCalendar;

    #@25
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 139
    invoke-static {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getLocalGregorianCalendar(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;

    #@2e
    move-result-object v0

    #@2f
    .line 147
    :goto_0
    if-nez v0, :cond_4

    #@31
    .line 148
    return-object v5

    #@32
    .line 142
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    .end local v0    # "cal":Lsun/util/calendar/CalendarSystem;
    check-cast v0, Lsun/util/calendar/CalendarSystem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .restart local v0    # "cal":Lsun/util/calendar/CalendarSystem;
    goto :goto_0

    #@39
    .line 143
    .end local v0    # "cal":Lsun/util/calendar/CalendarSystem;
    :catch_0
    move-exception v3

    #@3a
    .line 144
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@3c
    const-string/jumbo v5, "internal error"

    #@3f
    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    throw v4

    #@43
    .line 151
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cal":Lsun/util/calendar/CalendarSystem;
    :cond_4
    sget-object v4, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    #@45
    invoke-interface {v4, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Lsun/util/calendar/CalendarSystem;

    #@4b
    .line 152
    .local v2, "cs":Lsun/util/calendar/CalendarSystem;
    if-nez v2, :cond_5

    #@4d
    .end local v0    # "cal":Lsun/util/calendar/CalendarSystem;
    :goto_1
    return-object v0

    #@4e
    .restart local v0    # "cal":Lsun/util/calendar/CalendarSystem;
    :cond_5
    move-object v0, v2

    #@4f
    goto :goto_1
.end method

.method public static getGregorianCalendar()Lsun/util/calendar/Gregorian;
    .locals 1

    #@0
    .prologue
    .line 109
    sget-object v0, Lsun/util/calendar/CalendarSystem;->GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

    #@2
    return-object v0
.end method


# virtual methods
.method public abstract getCalendarDate()Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(J)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
.end method

.method public abstract getEras()[Lsun/util/calendar/Era;
.end method

.method public abstract getMonthLength(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getTime(Lsun/util/calendar/CalendarDate;)J
.end method

.method public abstract getWeekLength()I
.end method

.method public abstract getYearLength(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract getYearLengthInMonths(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract newCalendarDate()Lsun/util/calendar/CalendarDate;
.end method

.method public abstract newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract normalize(Lsun/util/calendar/CalendarDate;)Z
.end method

.method public abstract setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
.end method

.method public abstract setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract validate(Lsun/util/calendar/CalendarDate;)Z
.end method
