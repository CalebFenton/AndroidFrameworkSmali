.class public final Ljava/time/chrono/JapaneseEra;
.super Ljava/lang/Object;
.source "JapaneseEra.java"

# interfaces
.implements Ljava/time/chrono/Era;
.implements Ljava/io/Serializable;


# static fields
.field static final greylist-max-o ERA_CONFIG:[Lsun/util/calendar/Era;

.field static final greylist-max-o ERA_OFFSET:I = 0x2

.field public static final whitelist test-api HEISEI:Ljava/time/chrono/JapaneseEra;

.field private static final greylist-max-o KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

.field public static final whitelist test-api MEIJI:Ljava/time/chrono/JapaneseEra;

.field private static final greylist-max-o N_ERA_CONSTANTS:I

.field public static final whitelist test-api REIWA:Ljava/time/chrono/JapaneseEra;

.field public static final whitelist test-api SHOWA:Ljava/time/chrono/JapaneseEra;

.field public static final whitelist test-api TAISHO:Ljava/time/chrono/JapaneseEra;

.field private static final whitelist serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final transient greylist-max-o eraValue:I

.field private final transient greylist-max-o since:Ljava/time/LocalDate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 137
    new-instance v0, Ljava/time/chrono/JapaneseEra;

    const/16 v1, 0x74c

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v0, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    .line 142
    new-instance v0, Ljava/time/chrono/JapaneseEra;

    const/4 v1, 0x7

    const/16 v3, 0x1e

    const/16 v4, 0x778

    invoke-static {v4, v1, v3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v0, Ljava/time/chrono/JapaneseEra;->TAISHO:Ljava/time/chrono/JapaneseEra;

    .line 147
    new-instance v0, Ljava/time/chrono/JapaneseEra;

    const/16 v1, 0xc

    const/16 v4, 0x19

    const/16 v5, 0x786

    invoke-static {v5, v1, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v0, Ljava/time/chrono/JapaneseEra;->SHOWA:Ljava/time/chrono/JapaneseEra;

    .line 152
    new-instance v0, Ljava/time/chrono/JapaneseEra;

    const/16 v1, 0x7c5

    const/16 v4, 0x8

    invoke-static {v1, v2, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v4, 0x2

    invoke-direct {v0, v4, v1}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v0, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    .line 160
    new-instance v0, Ljava/time/chrono/JapaneseEra;

    const/16 v1, 0x7e3

    const/4 v5, 0x5

    invoke-static {v1, v5, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v5, 0x3

    invoke-direct {v0, v5, v1}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v0, Ljava/time/chrono/JapaneseEra;->REIWA:Ljava/time/chrono/JapaneseEra;

    .line 164
    sget-object v0, Ljava/time/chrono/JapaneseEra;->REIWA:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    add-int/2addr v0, v4

    sput v0, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    .line 176
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    .line 178
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v0, v0

    new-array v0, v0, [Ljava/time/chrono/JapaneseEra;

    sput-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    .line 179
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v1, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    aput-object v1, v0, v3

    .line 180
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v1, Ljava/time/chrono/JapaneseEra;->TAISHO:Ljava/time/chrono/JapaneseEra;

    aput-object v1, v0, v2

    .line 181
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v1, Ljava/time/chrono/JapaneseEra;->SHOWA:Ljava/time/chrono/JapaneseEra;

    aput-object v1, v0, v4

    .line 182
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v1, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    aput-object v1, v0, v5

    .line 183
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    const/4 v1, 0x4

    sget-object v3, Ljava/time/chrono/JapaneseEra;->REIWA:Ljava/time/chrono/JapaneseEra;

    aput-object v3, v0, v1

    .line 184
    sget v0, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    .local v0, "i":I
    :goto_89
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v1, v1

    if-ge v0, v1, :cond_b5

    .line 185
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    .line 186
    .local v1, "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v3

    .line 187
    .local v3, "isoDate":Ljava/time/LocalDate;
    sget-object v4, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    new-instance v5, Ljava/time/chrono/JapaneseEra;

    add-int/lit8 v6, v0, -0x2

    add-int/2addr v6, v2

    invoke-direct {v5, v6, v3}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    aput-object v5, v4, v0

    .line 184
    .end local v1    # "date":Lsun/util/calendar/CalendarDate;
    .end local v3    # "isoDate":Ljava/time/LocalDate;
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 189
    .end local v0    # "i":I
    :cond_b5
    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/time/LocalDate;)V
    .registers 3
    .param p1, "eraValue"    # I
    .param p2, "since"    # Ljava/time/LocalDate;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    .line 208
    iput-object p2, p0, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    .line 209
    return-void
.end method

.method static greylist-max-o from(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseEra;
    .registers 4
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 318
    sget-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 321
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-lez v0, :cond_1f

    .line 322
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    .line 323
    .local v1, "era":Ljava/time/chrono/JapaneseEra;
    iget-object v2, v1, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_1c

    .line 324
    return-object v1

    .line 321
    .end local v1    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 327
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0

    .line 319
    :cond_21
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 are not supported"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api of(I)Ljava/time/chrono/JapaneseEra;
    .registers 5
    .param p0, "japaneseEra"    # I

    .line 242
    invoke-static {p0}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v0

    .line 243
    .local v0, "i":I
    if-ltz v0, :cond_10

    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 246
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    return-object v1

    .line 244
    :cond_10
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid era: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o ordinal(I)I
    .registers 2
    .param p0, "eraValue"    # I

    .line 357
    add-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static greylist-max-o privateEraFrom(Ljava/time/LocalDate;)Lsun/util/calendar/Era;
    .registers 4
    .param p0, "isoDate"    # Ljava/time/LocalDate;

    .line 340
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-lez v0, :cond_1b

    .line 341
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    .line 342
    .local v1, "era":Ljava/time/chrono/JapaneseEra;
    iget-object v2, v1, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_18

    .line 343
    sget-object v2, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v2, v2, v0

    return-object v2

    .line 340
    .end local v1    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 346
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 458
    .local v0, "eraValue":B
    invoke-static {v0}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o toJapaneseEra(Lsun/util/calendar/Era;)Ljava/time/chrono/JapaneseEra;
    .registers 3
    .param p0, "privateEra"    # Lsun/util/calendar/Era;

    .line 331
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_19

    .line 332
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lsun/util/calendar/Era;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 333
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    return-object v1

    .line 331
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 336
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;
    .registers 6
    .param p0, "japaneseEra"    # Ljava/lang/String;

    .line 262
    const-string v0, "japaneseEra"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 264
    .local v3, "era":Ljava/time/chrono/JapaneseEra;
    invoke-virtual {v3}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 265
    return-object v3

    .line 263
    .end local v3    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 268
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "japaneseEra is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api values()[Ljava/time/chrono/JapaneseEra;
    .registers 2

    .line 285
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/JapaneseEra;

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 449
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method greylist-max-o getAbbreviation()Ljava/lang/String;
    .registers 3

    .line 411
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 298
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    sget v1, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_21

    .line 299
    const-string v0, "locale"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p1}, Ljava/time/format/TextStyle;->asNormal()Ljava/time/format/TextStyle;

    move-result-object v0

    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    .line 303
    :cond_21
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    .line 304
    invoke-virtual {v0, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    .line 306
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 307
    sget-object v1, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    if-ne p0, v1, :cond_3d

    sget-object v1, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    goto :goto_3f

    :cond_3d
    iget-object v1, p0, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 303
    return-object v0
.end method

.method greylist-max-o getName()Ljava/lang/String;
    .registers 3

    .line 415
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getPrivateEra()Lsun/util/calendar/Era;
    .registers 3

    .line 218
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    iget v1, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getValue()I
    .registers 2

    .line 372
    iget v0, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    return v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 403
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    .line 404
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 406
    :cond_d
    invoke-super {p0, p1}, Ljava/time/chrono/Era;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 420
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

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

    .line 453
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 454
    return-void
.end method
