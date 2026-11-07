.class public final Ljava/time/temporal/WeekFields;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/WeekFields$ComputedDayOfField;
    }
.end annotation


# static fields
.field private static final greylist-max-o CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/time/temporal/WeekFields;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api ISO:Ljava/time/temporal/WeekFields;

.field public static final whitelist test-api SUNDAY_START:Ljava/time/temporal/WeekFields;

.field public static final whitelist test-api WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

.field private static final whitelist serialVersionUID:J = -0x1056d36d74f0f639L


# instance fields
.field private final transient greylist-max-o dayOfWeek:Ljava/time/temporal/TemporalField;

.field private final greylist-max-o firstDayOfWeek:Ljava/time/DayOfWeek;

.field private final greylist-max-o minimalDays:I

.field private final transient greylist-max-o weekBasedYear:Ljava/time/temporal/TemporalField;

.field private final transient greylist-max-o weekOfMonth:Ljava/time/temporal/TemporalField;

.field private final transient greylist-max-o weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

.field private final transient greylist-max-o weekOfYear:Ljava/time/temporal/TemporalField;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdayOfWeek(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;
    .registers 1

    iget-object p0, p0, Ljava/time/temporal/WeekFields;->dayOfWeek:Ljava/time/temporal/TemporalField;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetweekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;
    .registers 1

    iget-object p0, p0, Ljava/time/temporal/WeekFields;->weekBasedYear:Ljava/time/temporal/TemporalField;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetweekOfWeekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;
    .registers 1

    iget-object p0, p0, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 215
    sget-object v0, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-static {v0, v3}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    .line 224
    sget-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields;->SUNDAY_START:Ljava/time/temporal/WeekFields;

    .line 242
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sput-object v0, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/DayOfWeek;I)V
    .registers 5
    .param p1, "firstDayOfWeek"    # Ljava/time/DayOfWeek;
    .param p2, "minimalDaysInFirstWeek"    # I

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofDayOfWeekField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->dayOfWeek:Ljava/time/temporal/TemporalField;

    .line 265
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfMonthField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfMonth:Ljava/time/temporal/TemporalField;

    .line 269
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfYear:Ljava/time/temporal/TemporalField;

    .line 277
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    .line 285
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->weekBasedYear:Ljava/time/temporal/TemporalField;

    .line 357
    const-string v0, "firstDayOfWeek"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    const/4 v0, 0x1

    if-lt p2, v0, :cond_31

    const/4 v0, 0x7

    if-gt p2, v0, :cond_31

    .line 361
    iput-object p1, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    .line 362
    iput p2, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    .line 363
    return-void

    .line 359
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;
    .registers 5
    .param p0, "firstDayOfWeek"    # Ljava/time/DayOfWeek;
    .param p1, "minimalDaysInFirstWeek"    # I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/WeekFields;

    .line 340
    .local v1, "rules":Ljava/time/temporal/WeekFields;
    if-nez v1, :cond_31

    .line 341
    new-instance v2, Ljava/time/temporal/WeekFields;

    invoke-direct {v2, p0, p1}, Ljava/time/temporal/WeekFields;-><init>(Ljava/time/DayOfWeek;I)V

    .line 342
    .end local v1    # "rules":Ljava/time/temporal/WeekFields;
    .local v2, "rules":Ljava/time/temporal/WeekFields;
    sget-object v1, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v1, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/WeekFields;

    .line 345
    .end local v2    # "rules":Ljava/time/temporal/WeekFields;
    .restart local v1    # "rules":Ljava/time/temporal/WeekFields;
    :cond_31
    return-object v1
.end method

.method public static whitelist test-api of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;

    .line 303
    const-string v0, "locale"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    invoke-static {p0}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 308
    .local v0, "calendar":Landroid/icu/util/Calendar;
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getWeekData()Landroid/icu/util/Calendar$WeekData;

    move-result-object v1

    .line 309
    .local v1, "weekData":Landroid/icu/util/Calendar$WeekData;
    iget v2, v1, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-static {p0, v2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFirstDayOfWeek(Ljava/util/Locale;I)I

    move-result v2

    .line 310
    .local v2, "calDow":I
    sget-object v3, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    add-int/lit8 v4, v2, -0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v3

    .line 313
    .local v3, "dow":Ljava/time/DayOfWeek;
    iget v4, v1, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    .line 314
    .local v4, "minDays":I
    invoke-static {v3, v4}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v5

    return-object v5
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 380
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 381
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v0, :cond_1a

    .line 385
    iget v0, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    iget v0, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_12

    .line 388
    return-void

    .line 386
    :cond_12
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1a
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "firstDayOfWeek is null"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 400
    :try_start_0
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    iget v1, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 401
    :catch_9
    move-exception v0

    .line 402
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid serialized WeekFields: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api dayOfWeek()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 454
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->dayOfWeek:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 652
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 653
    return v0

    .line 655
    :cond_4
    instance-of v1, p1, Ljava/time/temporal/WeekFields;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 656
    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0

    .line 658
    :cond_16
    return v2
.end method

.method public whitelist test-api getFirstDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .line 417
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    return-object v0
.end method

.method public whitelist test-api getMinimalDaysInFirstWeek()I
    .registers 2

    .line 431
    iget v0, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 668
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeekFields["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api weekBasedYear()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 637
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekBasedYear:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public whitelist test-api weekOfMonth()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 500
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfMonth:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public whitelist test-api weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 595
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public whitelist test-api weekOfYear()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 545
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfYear:Ljava/time/temporal/TemporalField;

    return-object v0
.end method
