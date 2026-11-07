.class public final Ljava/time/chrono/HijrahChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist CONF_PATH:Ljava/nio/file/Path;

.field public static final whitelist test-api INSTANCE:Ljava/time/chrono/HijrahChronology;

.field private static final greylist-max-o KEY_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o KEY_ISO_START:Ljava/lang/String; = "iso-start"

.field private static final greylist-max-o KEY_TYPE:Ljava/lang/String; = "type"

.field private static final greylist-max-o KEY_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist RESOURCE_PREFIX:Ljava/lang/String; = "hijrah-config-"

.field private static final blacklist RESOURCE_SUFFIX:Ljava/lang/String; = ".properties"

.field private static final whitelist serialVersionUID:J = 0x2b668b59cb61d531L


# instance fields
.field private final transient greylist-max-o calendarType:Ljava/lang/String;

.field private transient greylist-max-o hijrahEpochMonthStartDays:[I

.field private transient greylist-max-o hijrahStartEpochMonth:I

.field private volatile transient greylist-max-o initComplete:Z

.field private transient greylist-max-o maxEpochDay:I

.field private transient greylist-max-o maxMonthLength:I

.field private transient greylist-max-o maxYearLength:I

.field private transient greylist-max-o minEpochDay:I

.field private transient greylist-max-o minMonthLength:I

.field private transient greylist-max-o minYearLength:I

.field private final transient greylist-max-o typeId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 289
    new-instance v0, Ljava/time/chrono/HijrahChronology;

    const-string v1, "Hijrah-umalqura"

    const-string v2, "islamic-umalqura"

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/HijrahChronology;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    .line 291
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    const-string v1, "Hijrah"

    invoke-static {v0, v1}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;

    .line 292
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    const-string v1, "islamic"

    invoke-static {v0, v1}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;

    .line 295
    new-instance v0, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "conf"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "chronology"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/HijrahChronology;->CONF_PATH:Ljava/nio/file/Path;

    .line 297
    invoke-static {}, Ljava/time/chrono/HijrahChronology;->registerCustomChrono()V

    .line 298
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "calType"    # Ljava/lang/String;

    .line 307
    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 311
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 314
    iput-object p1, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    .line 315
    iput-object p2, p0, Ljava/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    .line 316
    return-void

    .line 312
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calendar typeId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calendar id is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkCalendarInit()V
    .registers 2

    .line 332
    iget-boolean v0, p0, Ljava/time/chrono/HijrahChronology;->initComplete:Z

    if-nez v0, :cond_a

    .line 333
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->loadCalendarData()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/time/chrono/HijrahChronology;->initComplete:Z

    .line 336
    :cond_a
    return-void
.end method

.method private greylist-max-o createEpochMonths(IIILjava/util/Map;)[I
    .registers 15
    .param p1, "epochDay"    # I
    .param p2, "minYear"    # I
    .param p3, "maxYear"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;)[I"
        }
    .end annotation

    .line 967
    .local p4, "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 970
    .local v0, "numMonths":I
    const/4 v2, 0x0

    .line 971
    .local v2, "epochMonth":I
    new-array v3, v0, [I

    .line 972
    .local v3, "epochMonths":[I
    const v4, 0x7fffffff

    iput v4, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    .line 973
    const/high16 v4, -0x80000000

    iput v4, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    .line 976
    move v4, p2

    .local v4, "year":I
    :goto_16
    if-gt v4, p3, :cond_64

    .line 977
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 978
    .local v5, "months":[I
    const/4 v6, 0x0

    .local v6, "month":I
    :goto_23
    if-ge v6, v1, :cond_61

    .line 979
    aget v7, v5, v6

    .line 980
    .local v7, "length":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "epochMonth":I
    .local v8, "epochMonth":I
    aput p1, v3, v2

    .line 982
    const/16 v2, 0x1d

    if-lt v7, v2, :cond_48

    const/16 v2, 0x20

    if-gt v7, v2, :cond_48

    .line 985
    add-int/2addr p1, v7

    .line 986
    iget v2, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    .line 987
    iget v2, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    .line 978
    .end local v7    # "length":I
    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_23

    .line 983
    .restart local v7    # "length":I
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid month length in year: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 976
    .end local v5    # "months":[I
    .end local v6    # "month":I
    .end local v7    # "length":I
    .end local v8    # "epochMonth":I
    .restart local v2    # "epochMonth":I
    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 992
    .end local v4    # "year":I
    :cond_64
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "epochMonth":I
    .local v1, "epochMonth":I
    aput p1, v3, v2

    .line 994
    array-length v2, v3

    if-ne v1, v2, :cond_6c

    .line 999
    return-object v3

    .line 995
    :cond_6c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did not fill epochMonths exactly: ndx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " should be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o epochDayToEpochMonth(I)I
    .registers 4
    .param p1, "epochDay"    # I

    .line 741
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 742
    .local v0, "ndx":I
    if-gez v0, :cond_b

    .line 743
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    .line 745
    :cond_b
    return v0
.end method

.method private greylist-max-o epochMonthLength(I)I
    .registers 4
    .param p1, "epochMonth"    # I

    .line 811
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o epochMonthToEpochDay(I)I
    .registers 3
    .param p1, "epochMonth"    # I

    .line 785
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v0, v0, p1

    return v0
.end method

.method private greylist-max-o epochMonthToMonth(I)I
    .registers 3
    .param p1, "epochMonth"    # I

    .line 775
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private greylist-max-o epochMonthToYear(I)I
    .registers 3
    .param p1, "epochMonth"    # I

    .line 755
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method static synthetic blacklist lambda$readConfigProperties$1(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .param p0, "resourceName"    # Ljava/lang/String;

    .line 842
    const-class v0, Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$readConfigProperties$2(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p0, "resourceName"    # Ljava/lang/String;

    .line 845
    :try_start_0
    sget-object v0, Ljava/time/chrono/HijrahChronology;->CONF_PATH:Ljava/nio/file/Path;

    invoke-interface {v0, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 847
    :catch_13
    move-exception v0

    .line 848
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic blacklist lambda$registerCustomChrono$3(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 2
    .param p0, "p"    # Ljava/nio/file/Path;

    .line 1059
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerCustomChrono$4(Ljava/lang/String;)Z
    .registers 2
    .param p0, "fn"    # Ljava/lang/String;

    .line 1060
    const-string v0, "hijrah-config-[^\\.]+\\.properties"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$registerCustomChrono$5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fn"    # Ljava/lang/String;

    .line 1061
    const-string v0, "(hijrah-config-|\\.properties)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerCustomChrono$6(Ljava/lang/String;)V
    .registers 5
    .param p0, "idtype"    # Ljava/lang/String;

    .line 1063
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1065
    .local v0, "delimiterPos":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_24

    .line 1066
    new-instance v1, Ljava/time/chrono/HijrahChronology;

    .line 1068
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    .line 1069
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/HijrahChronology;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-static {v1}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    goto :goto_40

    .line 1071
    :cond_24
    const-string v1, "java.time.chrono"

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hijrah custom config init failed.\'<id>_<type>\' name convention not followed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1075
    :goto_40
    return-void
.end method

.method static synthetic blacklist lambda$registerCustomChrono$7()Ljava/lang/Void;
    .registers 3

    .line 1056
    sget-object v0, Ljava/time/chrono/HijrahChronology;->CONF_PATH:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1058
    :try_start_b
    sget-object v0, Ljava/time/chrono/HijrahChronology;->CONF_PATH:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda0;-><init>()V

    .line 1059
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda1;-><init>()V

    .line 1060
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda2;-><init>()V

    .line 1061
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda3;-><init>()V

    .line 1062
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_34} :catch_35

    .line 1079
    goto :goto_41

    .line 1076
    :catch_35
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "java.time.chrono"

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v1

    .line 1078
    const-string v2, "Hijrah custom config init failed."

    invoke-virtual {v1, v2, v0}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1081
    .end local v0    # "e":Ljava/io/IOException;
    :cond_41
    :goto_41
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/String;
    .registers 1

    .line 296
    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o loadCalendarData()V
    .registers 16

    .line 881
    :try_start_0
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/time/chrono/HijrahChronology;->readConfigProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 883
    .local v0, "props":Ljava/util/Properties;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 884
    .local v1, "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const v2, 0x7fffffff

    .line 885
    .local v2, "minYear":I
    const/high16 v3, -0x80000000

    .line 886
    .local v3, "maxYear":I
    const/4 v4, 0x0

    .line 887
    .local v4, "id":Ljava/lang/String;
    const/4 v5, 0x0

    .line 888
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 889
    .local v6, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 890
    .local v7, "isoStart":I
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_d5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 891
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 892
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    sparse-switch v12, :sswitch_data_1a4

    :cond_3a
    goto :goto_63

    :sswitch_3b
    const-string v12, "version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a

    move v12, v13

    goto :goto_64

    :sswitch_45
    const-string v12, "type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a

    move v12, v10

    goto :goto_64

    :sswitch_4f
    const-string v12, "id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a

    move v12, v14

    goto :goto_64

    :sswitch_59
    const-string v12, "iso-start"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_169

    if-eqz v12, :cond_3a

    const/4 v12, 0x3

    goto :goto_64

    :goto_63
    const/4 v12, -0x1

    :goto_64
    packed-switch v12, :pswitch_data_1b6

    .line 910
    :try_start_67
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6b} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6b} :catch_169

    goto :goto_9e

    .line 903
    :pswitch_6c
    :try_start_6c
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {p0, v12}, Ljava/time/chrono/HijrahChronology;->parseYMD(Ljava/lang/String;)[I

    move-result-object v12

    .line 904
    .local v12, "ymd":[I
    aget v14, v12, v14

    aget v10, v12, v10

    aget v13, v12, v13

    invoke-static {v14, v10, v13}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v13

    long-to-int v7, v13

    .line 905
    goto :goto_b9

    .line 900
    .end local v12    # "ymd":[I
    :pswitch_86
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 901
    .end local v6    # "version":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    move-object v6, v10

    goto :goto_b9

    .line 897
    .end local v10    # "version":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :pswitch_8e
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 898
    .end local v5    # "type":Ljava/lang/String;
    .local v10, "type":Ljava/lang/String;
    move-object v5, v10

    goto :goto_b9

    .line 894
    .end local v10    # "type":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    :pswitch_96
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_9c} :catch_169

    .line 895
    .end local v4    # "id":Ljava/lang/String;
    .local v10, "id":Ljava/lang/String;
    move-object v4, v10

    goto :goto_b9

    .line 911
    .restart local v4    # "id":Ljava/lang/String;
    .local v10, "year":I
    :goto_9e
    :try_start_9e
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {p0, v12}, Ljava/time/chrono/HijrahChronology;->parseMonths(Ljava/lang/String;)[I

    move-result-object v12

    .line 912
    .local v12, "months":[I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v3, v13

    .line 914
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v13
    :try_end_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_b8} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b8} :catch_169

    .line 917
    .end local v2    # "minYear":I
    .end local v10    # "year":I
    .end local v12    # "months":[I
    .local v13, "minYear":I
    move v2, v13

    .line 919
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "minYear":I
    .restart local v2    # "minYear":I
    :goto_b9
    goto/16 :goto_1e

    .line 915
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v11    # "key":Ljava/lang/String;
    :catch_bb
    move-exception v8

    .line 916
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    :try_start_bc
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bad key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v10

    .line 921
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v11    # "key":Ljava/lang/String;
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_d5
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_150

    .line 924
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getCalendarType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_137

    .line 927
    if-eqz v6, :cond_12f

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12f

    .line 930
    if-eqz v7, :cond_127

    .line 935
    mul-int/lit8 v8, v2, 0xc

    iput v8, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    .line 936
    iput v7, p0, Ljava/time/chrono/HijrahChronology;->minEpochDay:I

    .line 937
    iget v8, p0, Ljava/time/chrono/HijrahChronology;->minEpochDay:I

    invoke-direct {p0, v8, v2, v3, v1}, Ljava/time/chrono/HijrahChronology;->createEpochMonths(IIILjava/util/Map;)[I

    move-result-object v8

    iput-object v8, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    .line 938
    iget-object v8, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    iget-object v9, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v9, v9

    sub-int/2addr v9, v10

    aget v8, v8, v9

    iput v8, p0, Ljava/time/chrono/HijrahChronology;->maxEpochDay:I

    .line 941
    move v8, v2

    .local v8, "year":I
    :goto_10c
    if-ge v8, v3, :cond_125

    .line 942
    invoke-virtual {p0, v8}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v9

    .line 943
    .local v9, "length":I
    iget v10, p0, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    .line 944
    iget v10, p0, Ljava/time/chrono/HijrahChronology;->maxYearLength:I

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Ljava/time/chrono/HijrahChronology;->maxYearLength:I

    .line 941
    .end local v9    # "length":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_10c

    .line 951
    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .end local v2    # "minYear":I
    .end local v3    # "maxYear":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "isoStart":I
    .end local v8    # "year":I
    :cond_125
    nop

    .line 952
    return-void

    .line 931
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local v1    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .restart local v2    # "minYear":I
    .restart local v3    # "maxYear":I
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    .restart local v7    # "isoStart":I
    :cond_127
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Configuration does not contain a ISO start date"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v8

    .line 928
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_12f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Configuration does not contain a version"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v8

    .line 925
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_137
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configuration is for a different calendar type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v8

    .line 922
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_150
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configuration is for a different calendar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v8
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_169} :catch_169

    .line 946
    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .end local v2    # "minYear":I
    .end local v3    # "maxYear":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "isoStart":I
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :catch_169
    move-exception v0

    .line 948
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "java.time.chrono"

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v1

    .line 949
    .local v1, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to initialize Hijrah calendar proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to initialize HijrahCalendar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_1a4
    .sparse-switch
        -0x429ec6e6 -> :sswitch_59
        0xd1b -> :sswitch_4f
        0x368f3a -> :sswitch_45
        0x14f51cd8 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_96
        :pswitch_8e
        :pswitch_86
        :pswitch_6c
    .end packed-switch
.end method

.method private greylist-max-o parseMonths(Ljava/lang/String;)[I
    .registers 9
    .param p1, "line"    # Ljava/lang/String;

    .line 1011
    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 1012
    .local v1, "months":[I
    const-string v2, "\\s"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1013
    .local v2, "numbers":[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v0, :cond_39

    .line 1016
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_38

    .line 1018
    :try_start_10
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_18} :catch_1c

    .line 1021
    nop

    .line 1016
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1019
    :catch_1c
    move-exception v0

    .line 1020
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1023
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v3    # "i":I
    :cond_38
    return-object v1

    .line 1014
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong number of months on line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o parseYMD(Ljava/lang/String;)[I
    .registers 8
    .param p1, "string"    # Ljava/lang/String;

    .line 1034
    const-string v0, "date must be yyyy-MM-dd"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1036
    const/4 v1, 0x4

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_34

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_34

    .line 1039
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 1040
    .local v3, "ymd":[I
    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {p1, v4, v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result v1

    aput v1, v3, v4

    .line 1041
    const/4 v1, 0x5

    invoke-static {p1, v1, v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v3, v2

    .line 1042
    const/16 v1, 0x8

    invoke-static {p1, v1, v5, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v3, v2

    .line 1043
    return-object v3

    .line 1037
    .end local v3    # "ymd":[I
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    .end local p1    # "string":Ljava/lang/String;
    throw v1
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_3a} :catch_3a

    .line 1044
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    .restart local p1    # "string":Ljava/lang/String;
    :catch_3a
    move-exception v1

    .line 1045
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist readConfigProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .registers 8
    .param p0, "chronologyId"    # Ljava/lang/String;
    .param p1, "calendarType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hijrah-config-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "resourceName":Ljava/lang/String;
    const-string v1, "islamic-umalqura"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 842
    new-instance v1, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    goto :goto_36

    .line 843
    :cond_31
    new-instance v1, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    :goto_36
    nop

    .line 857
    .local v1, "getResourceAction":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/io/InputStream;>;"
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 859
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_50

    .line 862
    :try_start_3f
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 863
    .local v3, "props":Ljava/util/Properties;
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_4e

    .line 864
    nop

    .line 865
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 864
    :cond_4d
    return-object v3

    .line 857
    .end local v3    # "props":Ljava/util/Properties;
    :catchall_4e
    move-exception v3

    goto :goto_69

    .line 860
    :cond_50
    :try_start_50
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hijrah calendar resource not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v1    # "getResourceAction":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/io/InputStream;>;"
    .end local v2    # "is":Ljava/io/InputStream;
    .end local p0    # "chronologyId":Ljava/lang/String;
    .end local p1    # "calendarType":Ljava/lang/String;
    throw v3
    :try_end_69
    .catchall {:try_start_50 .. :try_end_69} :catchall_4e

    .line 857
    .restart local v0    # "resourceName":Ljava/lang/String;
    .restart local v1    # "getResourceAction":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/io/InputStream;>;"
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local p0    # "chronologyId":Ljava/lang/String;
    .restart local p1    # "calendarType":Ljava/lang/String;
    :goto_69
    if-eqz v2, :cond_73

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    throw v3
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1113
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist registerCustomChrono()V
    .registers 5

    .line 1054
    new-instance v0, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/time/chrono/HijrahChronology$$ExternalSyntheticLambda5;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/Permission;

    new-instance v2, Ljava/io/FilePermission;

    const-string v3, "<<ALL FILES>>"

    const-string v4, "read"

    invoke-direct {v2, v3, v4}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;[Ljava/security/Permission;)Ljava/lang/Object;

    .line 1085
    return-void
.end method

.method private greylist-max-o yearMonthToDayOfYear(II)I
    .registers 6
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I

    .line 797
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    .line 798
    .local v0, "epochMonthFirst":I
    add-int v1, v0, p2

    invoke-direct {p0, v1}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    .line 799
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 798
    return v1
.end method

.method private greylist-max-o yearToEpochMonth(I)I
    .registers 4
    .param p1, "year"    # I

    .line 765
    mul-int/lit8 v0, p1, 0xc

    iget v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method greylist-max-o checkValidDayOfYear(I)V
    .registers 5
    .param p1, "dayOfYear"    # I

    .line 579
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v0

    if-gt p1, v0, :cond_a

    .line 582
    return-void

    .line 580
    :cond_a
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah day of year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o checkValidMonth(I)V
    .registers 5
    .param p1, "month"    # I

    .line 585
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/16 v0, 0xc

    if-gt p1, v0, :cond_8

    .line 588
    return-void

    .line 586
    :cond_8
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o checkValidYear(J)I
    .registers 6
    .param p1, "prolepticYear"    # J

    .line 572
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 575
    long-to-int v0, p1

    return v0

    .line 573
    :cond_14
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api date(III)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api date(III)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 399
    invoke-static {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 384
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 466
    instance-of v0, p1, Ljava/time/chrono/HijrahDate;

    if-eqz v0, :cond_8

    .line 467
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0

    .line 469
    :cond_8
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->dateEpochDay(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateEpochDay(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "epochDay"    # J

    .line 446
    invoke-static {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 206
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->dateNow()Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateNow()Ljava/time/chrono/HijrahDate;
    .registers 2

    .line 451
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "clock"    # Ljava/time/Clock;

    .line 461
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 456
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateYearDay(II)Ljava/time/chrono/HijrahDate;
    .registers 7
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 430
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    .line 431
    .local v0, "date":Ljava/time/chrono/HijrahDate;
    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    if-gt p2, v1, :cond_13

    .line 434
    add-int/lit8 v1, p2, -0x1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1

    .line 432
    :cond_13
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dayOfYear: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 415
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api eraOf(I)Ljava/time/chrono/Era;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->eraOf(I)Ljava/time/chrono/HijrahEra;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api eraOf(I)Ljava/time/chrono/HijrahEra;
    .registers 4
    .param p1, "eraValue"    # I

    .line 521
    packed-switch p1, :pswitch_data_e

    .line 525
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "invalid Hijrah era"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :pswitch_b
    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist test-api eras()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .line 531
    invoke-static {}, Ljava/time/chrono/HijrahEra;->values()[Ljava/time/chrono/HijrahEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getDayOfYear(II)I
    .registers 4
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I

    .line 647
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Ljava/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method greylist-max-o getEpochDay(III)J
    .registers 8
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .line 626
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 627
    invoke-virtual {p0, p2}, Ljava/time/chrono/HijrahChronology;->checkValidMonth(I)V

    .line 628
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    .line 629
    .local v0, "epochMonth":I
    if-ltz v0, :cond_3f

    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3f

    .line 633
    const/4 v1, 0x1

    if-lt p3, v1, :cond_26

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v1

    if-gt p3, v1, :cond_26

    .line 636
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    return-wide v1

    .line 634
    :cond_26
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah day of month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :cond_3f
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getHijrahDateInfo(I)[I
    .registers 10
    .param p1, "epochDay"    # I

    .line 599
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 600
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->minEpochDay:I

    if-lt p1, v0, :cond_2e

    iget v0, p0, Ljava/time/chrono/HijrahChronology;->maxEpochDay:I

    if-ge p1, v0, :cond_2e

    .line 604
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->epochDayToEpochMonth(I)I

    move-result v0

    .line 605
    .local v0, "epochMonth":I
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v1

    .line 606
    .local v1, "year":I
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToMonth(I)I

    move-result v2

    .line 607
    .local v2, "month":I
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v3

    .line 608
    .local v3, "day1":I
    sub-int v4, p1, v3

    .line 610
    .local v4, "date":I
    const/4 v5, 0x3

    new-array v5, v5, [I

    .line 611
    .local v5, "dateInfo":[I
    const/4 v6, 0x0

    aput v1, v5, v6

    .line 612
    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 613
    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 614
    return-object v5

    .line 601
    .end local v0    # "epochMonth":I
    .end local v1    # "year":I
    .end local v2    # "month":I
    .end local v3    # "day1":I
    .end local v4    # "date":I
    .end local v5    # "dateInfo":[I
    :cond_2e
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Hijrah date out of range"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getId()Ljava/lang/String;
    .registers 2

    .line 350
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getMaximumDayOfYear()I
    .registers 2

    .line 719
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->maxYearLength:I

    return v0
.end method

.method greylist-max-o getMaximumMonthLength()I
    .registers 2

    .line 701
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    return v0
.end method

.method greylist-max-o getMaximumYear()I
    .registers 2

    .line 692
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method greylist-max-o getMinimumMonthLength()I
    .registers 2

    .line 710
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    return v0
.end method

.method greylist-max-o getMinimumYear()I
    .registers 2

    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    return v0
.end method

.method greylist-max-o getMonthLength(II)I
    .registers 7
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I

    .line 658
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    .line 659
    .local v0, "epochMonth":I
    if-ltz v0, :cond_13

    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 663
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthLength(I)I

    move-result v1

    return v1

    .line 660
    :cond_13
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getSmallestMaximumDayOfYear()I
    .registers 2

    .line 728
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    return v0
.end method

.method greylist-max-o getYearLength(I)I
    .registers 3
    .param p1, "prolepticYear"    # I

    .line 674
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Ljava/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isLeapYear(J)Z
    .registers 7
    .param p1, "prolepticYear"    # J

    .line 493
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 494
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_22

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-lez v0, :cond_17

    goto :goto_22

    .line 497
    :cond_17
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    .line 498
    .local v0, "len":I
    const/16 v2, 0x162

    if-le v0, v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 495
    .end local v0    # "len":I
    :cond_22
    :goto_22
    return v1
.end method

.method public whitelist test-api localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 475
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api prolepticYear(Ljava/time/chrono/Era;I)I
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 503
    instance-of v0, p1, Ljava/time/chrono/HijrahEra;

    if-eqz v0, :cond_5

    .line 506
    return p2

    .line 504
    :cond_5
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be HijrahEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/ChronoField;

    .line 537
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 538
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_52

    .line 539
    move-object v0, p1

    .line 540
    .local v0, "f":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/chrono/HijrahChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_58

    .line 553
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 551
    :pswitch_1a
    invoke-static {v2, v3, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 549
    :pswitch_1f
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 546
    :pswitch_2e
    const-wide/16 v4, 0x5

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 544
    :pswitch_35
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 542
    :pswitch_3f
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumMonthLength()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumMonthLength()I

    move-result v1

    int-to-long v8, v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-static/range {v2 .. v9}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 556
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_52
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_35
        :pswitch_2e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1a
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/HijrahDate;
    .registers 4
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
            "Ljava/time/chrono/HijrahDate;"
        }
    .end annotation

    .line 562
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1102
    invoke-super {p0}, Ljava/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 481
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
