.class public abstract Ljava/time/chrono/AbstractChronology;
.super Ljava/lang/Object;
.source "AbstractChronology.java"

# interfaces
.implements Ljava/time/chrono/Chronology;


# static fields
.field private static final greylist-max-o CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    return-void
.end method

.method static greylist-max-o getAvailableChronologies()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    .line 311
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 315
    .local v0, "chronos":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/time/chrono/Chronology;>;"
    const-class v1, Ljava/time/chrono/Chronology;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 316
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/Chronology;

    .line 317
    .local v3, "chrono":Ljava/time/chrono/Chronology;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v3    # "chrono":Ljava/time/chrono/Chronology;
    goto :goto_18

    .line 319
    :cond_28
    return-object v0
.end method

.method private static greylist-max-o initCache()Z
    .registers 8

    .line 186
    sget-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_69

    .line 190
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-static {v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 191
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-static {v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 192
    sget-object v0, Ljava/time/chrono/MinguoChronology;->INSTANCE:Ljava/time/chrono/MinguoChronology;

    invoke-static {v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 193
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-static {v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 197
    const-class v0, Ljava/time/chrono/AbstractChronology;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 198
    .local v0, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/AbstractChronology;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/AbstractChronology;

    .line 199
    .local v3, "chrono":Ljava/time/chrono/AbstractChronology;
    invoke-virtual {v3}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {v3}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    move-result-object v5

    if-eqz v5, :cond_61

    .line 202
    :cond_45
    const-string v5, "java.time.chrono"

    invoke-static {v5}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v5

    .line 203
    .local v5, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate Chronology, from ServiceLoader configuration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 205
    .end local v3    # "chrono":Ljava/time/chrono/AbstractChronology;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_61
    goto :goto_29

    .line 208
    :cond_62
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {v1}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 209
    const/4 v1, 0x1

    return v1

    .line 211
    .end local v0    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/AbstractChronology;>;"
    :cond_69
    const/4 v0, 0x0

    return v0
.end method

.method static greylist-max-o of(Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    .line 263
    const-string v0, "id"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    :cond_5
    invoke-static {p0}, Ljava/time/chrono/AbstractChronology;->of0(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 266
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_c

    .line 267
    return-object v0

    .line 270
    .end local v0    # "chrono":Ljava/time/chrono/Chronology;
    :cond_c
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    move-result v0

    if-nez v0, :cond_5

    .line 275
    const-class v0, Ljava/time/chrono/Chronology;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 276
    .local v0, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/Chronology;

    .line 277
    .local v2, "chrono":Ljava/time/chrono/Chronology;
    invoke-interface {v2}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-interface {v2}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    .line 280
    .end local v2    # "chrono":Ljava/time/chrono/Chronology;
    :cond_3d
    goto :goto_1c

    .line 278
    .restart local v2    # "chrono":Ljava/time/chrono/Chronology;
    :cond_3e
    :goto_3e
    return-object v2

    .line 281
    .end local v2    # "chrono":Ljava/time/chrono/Chronology;
    :cond_3f
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown chronology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o of0(Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .line 292
    sget-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 293
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_13

    .line 294
    sget-object v1, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 296
    :cond_13
    return-object v0
.end method

.method static greylist-max-o ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 225
    const-string v0, "locale"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_6a

    const-string v1, "iso"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "iso8601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_6a

    .line 232
    :cond_1e
    sget-object v1, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/Chronology;

    .line 233
    .local v1, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v1, :cond_29

    .line 234
    return-object v1

    .line 237
    .end local v1    # "chrono":Ljava/time/chrono/Chronology;
    :cond_29
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 242
    const-class v1, Ljava/time/chrono/Chronology;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 243
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/Chronology;

    .line 244
    .local v3, "chrono":Ljava/time/chrono/Chronology;
    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 245
    return-object v3

    .line 247
    .end local v3    # "chrono":Ljava/time/chrono/Chronology;
    :cond_50
    goto :goto_39

    .line 248
    :cond_51
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown calendar system: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    .end local v1    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    :cond_6a
    :goto_6a
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v1
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/chrono/Chronology;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v1

    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 745
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;
    .registers 2
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;

    .line 147
    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .registers 5
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;
    .param p1, "id"    # Ljava/lang/String;

    .line 160
    sget-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 161
    .local v0, "prev":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_15

    .line 162
    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 164
    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1    # "type":Ljava/lang/String;
    :cond_15
    return-object v0
.end method


# virtual methods
.method greylist-max-o addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V
    .registers 10
    .param p2, "field"    # Ljava/time/temporal/ChronoField;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/ChronoField;",
            "J)V"
        }
    .end annotation

    .line 644
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 645
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-nez v1, :cond_11

    goto :goto_46

    .line 646
    :cond_11
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " differs from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_46
    :goto_46
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    return-void
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 127
    check-cast p1, Ljava/time/chrono/Chronology;

    invoke-virtual {p0, p1}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/chrono/Chronology;)I
    .registers 4
    .param p1, "other"    # Ljava/time/chrono/Chronology;

    .line 668
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 685
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 686
    return v0

    .line 688
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/AbstractChronology;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 689
    move-object v1, p1

    check-cast v1, Ljava/time/chrono/AbstractChronology;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 691
    :cond_15
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 707
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;
    .registers 16
    .param p1, "base"    # Ljava/time/chrono/ChronoLocalDate;
    .param p2, "months"    # J
    .param p4, "weeks"    # J
    .param p6, "dow"    # J

    .line 620
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, p4, p5, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 621
    .local v0, "date":Ljava/time/chrono/ChronoLocalDate;
    const-wide/16 v1, 0x7

    cmp-long v3, p6, v1

    const-wide/16 v4, 0x1

    if-lez v3, :cond_23

    .line 622
    sub-long v6, p6, v4

    div-long/2addr v6, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v6, v7, v3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 623
    sub-long v6, p6, v4

    rem-long/2addr v6, v1

    add-long p6, v6, v4

    goto :goto_38

    .line 624
    :cond_23
    cmp-long v3, p6, v4

    if-gez v3, :cond_38

    .line 625
    invoke-static {p6, p7, v1, v2}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    div-long/2addr v6, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v6, v7, v3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 626
    const-wide/16 v6, 0x6

    add-long/2addr v6, p6

    rem-long/2addr v6, v1

    add-long p6, v6, v4

    .line 628
    :cond_38
    :goto_38
    long-to-int v1, p6

    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 425
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 426
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/AbstractChronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 430
    :cond_19
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveProlepticMonth(Ljava/util/Map;Ljava/time/format/ResolverStyle;)V

    .line 433
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 434
    .local v0, "resolved":Ljava/time/chrono/ChronoLocalDate;
    if-eqz v0, :cond_23

    .line 435
    return-object v0

    .line 439
    :cond_23
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 440
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 441
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 442
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 444
    :cond_40
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 445
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 446
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 448
    :cond_55
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 449
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 453
    :cond_62
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 454
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 456
    :cond_6f
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 457
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 458
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 460
    :cond_84
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 461
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 465
    :cond_91
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o resolveProlepticMonth(Ljava/util/Map;Ljava/time/format/ResolverStyle;)V
    .registers 8
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")V"
        }
    .end annotation

    .line 469
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 470
    .local v0, "pMonth":Ljava/lang/Long;
    if-eqz v0, :cond_45

    .line 471
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v1, :cond_17

    .line 472
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 476
    :cond_17
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->dateNow()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 477
    const-wide/16 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 478
    .local v1, "chronoDate":Ljava/time/chrono/ChronoLocalDate;
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, p1, v2, v3, v4}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 479
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, p1, v2, v3, v4}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 481
    .end local v1    # "chronoDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_45
    return-void
.end method

.method greylist-max-o resolveYAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 12
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 588
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 589
    .local v0, "y":I
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_50

    .line 590
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    .line 591
    .local v3, "weeks":J
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v5

    .line 592
    .local v5, "days":J
    invoke-virtual {p0, v0, v2}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 594
    .end local v3    # "weeks":J
    .end local v5    # "days":J
    :cond_50
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 595
    .local v1, "aw":I
    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 596
    .local v3, "ad":I
    invoke-virtual {p0, v0, v2}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    mul-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v3, -0x1

    add-int/2addr v4, v5

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 597
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v4, :cond_a7

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    if-ne v4, v0, :cond_9f

    goto :goto_a7

    .line 598
    :cond_9f
    new-instance v4, Ljava/time/DateTimeException;

    const-string v5, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 600
    :cond_a7
    :goto_a7
    return-object v2
.end method

.method greylist-max-o resolveYAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 14
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 604
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    .line 605
    .local v8, "y":I
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_4c

    .line 606
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    .line 607
    .local v3, "weeks":J
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    .line 608
    .local v6, "dow":J
    invoke-virtual {p0, v8, v2}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    move-wide v4, v3

    .end local v3    # "weeks":J
    .local v4, "weeks":J
    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava/time/chrono/AbstractChronology;->resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 610
    .end local v4    # "weeks":J
    .end local v6    # "dow":J
    :cond_4c
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 611
    .local v1, "aw":I
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 612
    .local v3, "dow":I
    invoke-virtual {p0, v8, v2}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    mul-int/lit8 v4, v4, 0x7

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {v3}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-static {v4}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 613
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v4, :cond_ac

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    if-ne v4, v8, :cond_a4

    goto :goto_ac

    .line 614
    :cond_a4
    new-instance v4, Ljava/time/DateTimeException;

    const-string v5, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 616
    :cond_ac
    :goto_ac
    return-object v2
.end method

.method greylist-max-o resolveYD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 8
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 542
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 543
    .local v0, "y":I
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v1, :cond_3a

    .line 544
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    .line 545
    .local v1, "days":J
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v1, v2, v4}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3

    .line 547
    .end local v1    # "days":J
    :cond_3a
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 548
    .local v1, "doy":I
    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2
.end method

.method greylist-max-o resolveYMAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 14
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 552
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 553
    .local v0, "y":I
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_66

    .line 554
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    .line 555
    .local v3, "months":J
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v7

    .line 556
    .local v7, "weeks":J
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v5

    .line 557
    .local v5, "days":J
    invoke-virtual {p0, v0, v2, v2}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v7, v8, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 559
    .end local v3    # "months":J
    .end local v5    # "days":J
    .end local v7    # "weeks":J
    :cond_66
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 560
    .local v1, "moy":I
    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 561
    .local v3, "aw":I
    sget-object v4, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v4

    .line 562
    .local v4, "ad":I
    invoke-virtual {p0, v0, v1, v2}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x7

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v5, v6, v7}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 563
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v5, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v5, :cond_d5

    sget-object v5, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    if-ne v5, v1, :cond_cd

    goto :goto_d5

    .line 564
    :cond_cd
    new-instance v5, Ljava/time/DateTimeException;

    const-string v6, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 566
    :cond_d5
    :goto_d5
    return-object v2
.end method

.method greylist-max-o resolveYMAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 18
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 570
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    .line 571
    .local v10, "y":I
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne v9, v1, :cond_5f

    .line 572
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    .line 573
    .local v3, "months":J
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v11

    .line 574
    .local v11, "weeks":J
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    .line 575
    .local v6, "dow":J
    invoke-virtual {p0, v10, v2, v2}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, v11

    .end local v3    # "months":J
    .end local v11    # "weeks":J
    .local v2, "months":J
    .local v4, "weeks":J
    invoke-virtual/range {v0 .. v7}, Ljava/time/chrono/AbstractChronology;->resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 577
    .end local v2    # "months":J
    .end local v4    # "weeks":J
    .end local v6    # "dow":J
    :cond_5f
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 578
    .local v1, "moy":I
    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 579
    .local v3, "aw":I
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v4

    .line 580
    .local v4, "dow":I
    invoke-virtual {p0, v10, v1, v2}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x7

    int-to-long v5, v5

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v5, v6, v7}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {v4}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v5

    invoke-static {v5}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 581
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v5, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v9, v5, :cond_d7

    sget-object v5, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    if-ne v5, v1, :cond_cf

    goto :goto_d7

    .line 582
    :cond_cf
    new-instance v5, Ljava/time/DateTimeException;

    const-string v6, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 584
    :cond_d7
    :goto_d7
    return-object v2
.end method

.method greylist-max-o resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 12
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 522
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 523
    .local v0, "y":I
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_50

    .line 524
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    .line 525
    .local v3, "months":J
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v5

    .line 526
    .local v5, "days":J
    invoke-virtual {p0, v0, v2, v2}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 528
    .end local v3    # "months":J
    .end local v5    # "days":J
    :cond_50
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 529
    .local v1, "moy":I
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    .line 530
    .local v3, "domRange":Ljava/time/temporal/ValueRange;
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v4

    .line 531
    .local v4, "dom":I
    sget-object v5, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne p2, v5, :cond_97

    .line 533
    :try_start_84
    invoke-virtual {p0, v0, v1, v4}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2
    :try_end_88
    .catch Ljava/time/DateTimeException; {:try_start_84 .. :try_end_88} :catch_89

    return-object v2

    .line 534
    :catch_89
    move-exception v5

    .line 535
    .local v5, "ex":Ljava/time/DateTimeException;
    invoke-virtual {p0, v0, v1, v2}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {}, Ljava/time/temporal/TemporalAdjusters;->lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2

    .line 538
    .end local v5    # "ex":Ljava/time/DateTimeException;
    :cond_97
    invoke-virtual {p0, v0, v1, v4}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2
.end method

.method greylist-max-o resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 11
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 484
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 485
    .local v0, "yoeLong":Ljava/lang/Long;
    if-eqz v0, :cond_b6

    .line 486
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 488
    .local v1, "eraLong":Ljava/lang/Long;
    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v2, :cond_27

    .line 489
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    .local v2, "yoe":I
    goto :goto_2f

    .line 491
    .end local v2    # "yoe":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    .line 493
    .restart local v2    # "yoe":I
    :goto_2f
    if-eqz v1, :cond_51

    .line 494
    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/time/chrono/AbstractChronology;->eraOf(I)Ljava/time/chrono/Era;

    move-result-object v3

    .line 495
    .local v3, "eraObj":Ljava/time/chrono/Era;
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3, v2}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, p1, v4, v5, v6}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 496
    .end local v3    # "eraObj":Ljava/time/chrono/Era;
    goto/16 :goto_d6

    .line 497
    :cond_51
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_85

    .line 498
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v5, v6, v7}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 499
    .local v3, "year":I
    invoke-virtual {p0, v3, v4}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 500
    .local v4, "chronoDate":Ljava/time/chrono/ChronoLocalDate;
    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4}, Ljava/time/chrono/ChronoLocalDate;->getEra()Ljava/time/chrono/Era;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, p1, v5, v6, v7}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 501
    .end local v3    # "year":I
    .end local v4    # "chronoDate":Ljava/time/chrono/ChronoLocalDate;
    goto :goto_d6

    :cond_85
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v3, :cond_8f

    .line 504
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    .line 506
    :cond_8f
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->eras()Ljava/util/List;

    move-result-object v3

    .line 507
    .local v3, "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 508
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v5, v2

    invoke-virtual {p0, p1, v4, v5, v6}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_d6

    .line 510
    :cond_a0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/chrono/Era;

    .line 511
    .local v4, "eraObj":Ljava/time/chrono/Era;
    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4, v2}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, p1, v5, v6, v7}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_d6

    .line 515
    .end local v1    # "eraLong":Ljava/lang/Long;
    .end local v2    # "yoe":I
    .end local v3    # "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    .end local v4    # "eraObj":Ljava/time/chrono/Era;
    :cond_b6
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 516
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto :goto_d7

    .line 515
    :cond_d6
    :goto_d6
    nop

    .line 518
    :goto_d7
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 718
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 4

    .line 734
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x1

    move-object v2, p0

    check-cast v2, Ljava/io/Serializable;

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method
