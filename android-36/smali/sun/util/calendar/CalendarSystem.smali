.class public abstract Lsun/util/calendar/CalendarSystem;
.super Ljava/lang/Object;
.source "CalendarSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/CalendarSystem$GregorianHolder;
    }
.end annotation


# static fields
.field private static final blacklist calendars:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lsun/util/calendar/CalendarSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    .line 104
    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    const-string v1, "gregorian"

    const-class v2, Lsun/util/calendar/Gregorian;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    const-string v1, "japanese"

    const-class v2, Lsun/util/calendar/LocalGregorianCalendar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    const-string v1, "julian"

    const-class v2, Lsun/util/calendar/JulianCalendar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;
    .registers 5
    .param p0, "calendarName"    # Ljava/lang/String;

    .line 165
    const-string v0, "gregorian"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 166
    invoke-static {}, Lsun/util/calendar/CalendarSystem$GregorianHolder;->-$$Nest$sfgetGREGORIAN_INSTANCE()Lsun/util/calendar/Gregorian;

    move-result-object v0

    return-object v0

    .line 177
    :cond_d
    sget-object v0, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/CalendarSystem;

    .line 178
    .local v0, "cal":Lsun/util/calendar/CalendarSystem;
    if-eqz v0, :cond_18

    .line 179
    return-object v0

    .line 187
    :cond_18
    sget-object v1, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 188
    .local v1, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 190
    return-object v2

    .line 197
    :cond_24
    const-class v3, Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 200
    invoke-static {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getLocalGregorianCalendar(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;

    move-result-object v0

    goto :goto_39

    .line 209
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/CalendarSystem;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_37} :catch_4a

    move-object v0, v3

    .line 213
    nop

    .line 215
    :goto_39
    if-nez v0, :cond_3c

    .line 216
    return-object v2

    .line 218
    :cond_3c
    sget-object v2, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/CalendarSystem;

    .line 219
    .local v2, "cs":Lsun/util/calendar/CalendarSystem;
    if-nez v2, :cond_48

    move-object v3, v0

    goto :goto_49

    :cond_48
    move-object v3, v2

    :goto_49
    return-object v3

    .line 211
    .end local v2    # "cs":Lsun/util/calendar/CalendarSystem;
    :catch_4a
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist getCalendarProperties()Ljava/util/Properties;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 233
    .local v0, "calendarProps":Ljava/util/Properties;
    const-string v1, "calendars.properties"

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 234
    .local v1, "is":Ljava/io/InputStream;
    :try_start_b
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_14

    .line 235
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 236
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_13
    return-object v0

    .line 233
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_14
    move-exception v2

    if-eqz v1, :cond_1f

    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v2
.end method

.method public static greylist-max-r getGregorianCalendar()Lsun/util/calendar/Gregorian;
    .registers 1

    .line 151
    invoke-static {}, Lsun/util/calendar/CalendarSystem$GregorianHolder;->-$$Nest$sfgetGREGORIAN_INSTANCE()Lsun/util/calendar/Gregorian;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getCalendarDate()Lsun/util/calendar/CalendarDate;
.end method

.method public abstract blacklist getCalendarDate(J)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract blacklist getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract blacklist getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract blacklist getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
.end method

.method public abstract blacklist getEras()[Lsun/util/calendar/Era;
.end method

.method public abstract blacklist getMonthLength(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract greylist-max-r getTime(Lsun/util/calendar/CalendarDate;)J
.end method

.method public abstract blacklist getWeekLength()I
.end method

.method public abstract blacklist getYearLength(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract blacklist getYearLengthInMonths(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract blacklist newCalendarDate()Lsun/util/calendar/CalendarDate;
.end method

.method public abstract greylist-max-r newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract blacklist normalize(Lsun/util/calendar/CalendarDate;)Z
.end method

.method public abstract blacklist setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
.end method

.method public abstract blacklist setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract greylist-max-r validate(Lsun/util/calendar/CalendarDate;)Z
.end method
