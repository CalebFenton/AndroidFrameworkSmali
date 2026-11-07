.class Ljava/time/temporal/WeekFields$ComputedDayOfField;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/WeekFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputedDayOfField"
.end annotation


# static fields
.field private static final greylist-max-o DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

.field private static final greylist-max-o WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

.field private static final greylist-max-o WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

.field private static final greylist-max-o WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;


# instance fields
.field private final greylist-max-o baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o range:Ljava/time/temporal/ValueRange;

.field private final greylist-max-o rangeUnit:Ljava/time/temporal/TemporalUnit;

.field private final greylist-max-o weekDef:Ljava/time/temporal/WeekFields;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 778
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

    .line 779
    const-wide/16 v5, 0x4

    const-wide/16 v7, 0x6

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-static/range {v1 .. v8}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

    .line 780
    const-wide/16 v5, 0x34

    const-wide/16 v7, 0x36

    invoke-static/range {v1 .. v8}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    .line 781
    const-wide/16 v3, 0x34

    const-wide/16 v5, 0x35

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weekDef"    # Ljava/time/temporal/WeekFields;
    .param p3, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p4, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "range"    # Ljava/time/temporal/ValueRange;

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput-object p1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    .line 772
    iput-object p2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    .line 773
    iput-object p3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 774
    iput-object p4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 775
    iput-object p5, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    .line 776
    return-void
.end method

.method private greylist-max-o computeWeek(II)I
    .registers 5
    .param p1, "offset"    # I
    .param p2, "day"    # I

    .line 914
    add-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private greylist-max-o localizedDayOfWeek(I)I
    .registers 5
    .param p1, "isoDow"    # I

    .line 807
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 808
    .local v0, "sow":I
    sub-int v1, p1, v0

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private greylist-max-o localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 801
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 802
    .local v0, "sow":I
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 803
    .local v1, "isoDow":I
    sub-int v2, v1, v0

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private greylist-max-o localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I
    .registers 11
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 832
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 833
    .local v0, "dow":I
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 834
    .local v1, "year":I
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 835
    .local v2, "doy":I
    invoke-direct {p0, v2, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v3

    .line 836
    .local v3, "offset":I
    invoke-direct {p0, v3, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    .line 837
    .local v4, "week":I
    if-nez v4, :cond_1d

    .line 839
    add-int/lit8 v5, v1, -0x1

    return v5

    .line 843
    :cond_1d
    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    .line 844
    .local v5, "dayRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v5}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    long-to-int v6, v6

    .line 845
    .local v6, "yearLen":I
    iget-object v7, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v7}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {p0, v3, v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v7

    .line 846
    .local v7, "newYearWeek":I
    if-lt v4, v7, :cond_38

    .line 847
    add-int/lit8 v8, v1, 0x1

    return v8

    .line 850
    .end local v5    # "dayRange":Ljava/time/temporal/ValueRange;
    .end local v6    # "yearLen":I
    .end local v7    # "newYearWeek":I
    :cond_38
    return v1
.end method

.method private greylist-max-o localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J
    .registers 7
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 812
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 813
    .local v0, "dow":I
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 814
    .local v1, "dom":I
    invoke-direct {p0, v1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 815
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    return-wide v3
.end method

.method private greylist-max-o localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I
    .registers 10
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 863
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 864
    .local v0, "dow":I
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 865
    .local v1, "doy":I
    invoke-direct {p0, v1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 866
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    .line 867
    .local v3, "week":I
    if-nez v3, :cond_28

    .line 870
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 871
    .local v4, "date":Ljava/time/chrono/ChronoLocalDate;
    int-to-long v5, v1

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 872
    invoke-direct {p0, v4}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v5

    return v5

    .line 873
    .end local v4    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_28
    const/16 v4, 0x32

    if-le v3, v4, :cond_48

    .line 876
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    .line 877
    .local v4, "dayRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v5, v5

    .line 878
    .local v5, "yearLen":I
    iget-object v6, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v6}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {p0, v2, v6}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    .line 879
    .local v6, "newYearWeek":I
    if-lt v3, v6, :cond_48

    .line 881
    sub-int v7, v3, v6

    add-int/lit8 v3, v7, 0x1

    .line 884
    .end local v4    # "dayRange":Ljava/time/temporal/ValueRange;
    .end local v5    # "yearLen":I
    .end local v6    # "newYearWeek":I
    :cond_48
    return v3
.end method

.method private greylist-max-o localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J
    .registers 7
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 819
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 820
    .local v0, "dow":I
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 821
    .local v1, "doy":I
    invoke-direct {p0, v1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 822
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    return-wide v3
.end method

.method static greylist-max-o ofDayOfWeekField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .line 701
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

    const-string v1, "DayOfWeek"

    move-object v2, p0

    .end local p0    # "weekDef":Ljava/time/temporal/WeekFields;
    .local v2, "weekDef":Ljava/time/temporal/WeekFields;
    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method private greylist-max-o ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 14
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "yowby"    # I
    .param p3, "wowby"    # I
    .param p4, "dow"    # I

    .line 751
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 752
    .local v1, "date":Ljava/time/chrono/ChronoLocalDate;
    invoke-direct {p0, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v2

    .line 753
    .local v2, "ldow":I
    invoke-direct {p0, v0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v0

    .line 756
    .local v0, "offset":I
    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->lengthOfYear()I

    move-result v3

    .line 757
    .local v3, "yearLen":I
    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v4}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {p0, v0, v4}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    .line 758
    .local v4, "newYearWeek":I
    add-int/lit8 v5, v4, -0x1

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 760
    neg-int v5, v0

    add-int/lit8 v6, p4, -0x1

    add-int/2addr v5, v6

    add-int/lit8 v6, p3, -0x1

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    .line 761
    .local v5, "days":I
    int-to-long v6, v5

    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v6, v7, v8}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v6

    return-object v6
.end method

.method static greylist-max-o ofWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .line 737
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v5

    const-string v1, "WeekBasedYear"

    move-object v2, p0

    .end local p0    # "weekDef":Ljava/time/temporal/WeekFields;
    .local v2, "weekDef":Ljava/time/temporal/WeekFields;
    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static greylist-max-o ofWeekOfMonthField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .line 710
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

    const-string v1, "WeekOfMonth"

    move-object v2, p0

    .end local p0    # "weekDef":Ljava/time/temporal/WeekFields;
    .local v2, "weekDef":Ljava/time/temporal/WeekFields;
    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static greylist-max-o ofWeekOfWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .line 728
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    const-string v1, "WeekOfWeekBasedYear"

    move-object v2, p0

    .end local p0    # "weekDef":Ljava/time/temporal/WeekFields;
    .local v2, "weekDef":Ljava/time/temporal/WeekFields;
    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static greylist-max-o ofWeekOfYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .line 719
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    const-string v1, "WeekOfYear"

    move-object v2, p0

    .end local p0    # "weekDef":Ljava/time/temporal/WeekFields;
    .local v2, "weekDef":Ljava/time/temporal/WeekFields;
    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method private greylist-max-o rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 10
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;

    .line 1145
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 1146
    .local v0, "dow":I
    invoke-interface {p1, p2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v1

    .line 1147
    .local v1, "offset":I
    invoke-interface {p1, p2}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    .line 1148
    .local v2, "fieldRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v2}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v1, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    .line 1149
    invoke-virtual {v2}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {p0, v1, v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    int-to-long v5, v5

    .line 1148
    invoke-static {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 13
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 1158
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1159
    sget-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    return-object v0

    .line 1161
    :cond_b
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 1162
    .local v0, "dow":I
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 1163
    .local v1, "doy":I
    invoke-direct {p0, v1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 1164
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    .line 1165
    .local v3, "week":I
    if-nez v3, :cond_35

    .line 1168
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 1169
    .local v4, "date":Ljava/time/chrono/ChronoLocalDate;
    add-int/lit8 v5, v1, 0x7

    int-to-long v5, v5

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 1170
    invoke-direct {p0, v4}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    return-object v5

    .line 1173
    .end local v4    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_35
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    .line 1174
    .local v4, "dayRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v5, v5

    .line 1175
    .local v5, "yearLen":I
    iget-object v6, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v6}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {p0, v2, v6}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    .line 1177
    .local v6, "newYearWeek":I
    if-lt v3, v6, :cond_67

    .line 1179
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v7

    .line 1180
    .local v7, "date":Ljava/time/chrono/ChronoLocalDate;
    sub-int v8, v5, v1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x7

    int-to-long v8, v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v7

    .line 1181
    invoke-direct {p0, v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    return-object v8

    .line 1183
    .end local v7    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_67
    add-int/lit8 v7, v6, -0x1

    int-to-long v7, v7

    const-wide/16 v9, 0x1

    invoke-static {v9, v10, v7, v8}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    return-object v7
.end method

.method private greylist-max-o resolveWBY(Ljava/util/Map;Ljava/time/chrono/Chronology;ILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 12
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "localDow"    # I
    .param p4, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "I",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 1032
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v0}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v1}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v1

    .line 1033
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v3}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v3

    .line 1032
    invoke-virtual {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 1035
    .local v0, "yowby":I
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p4, v1, :cond_4a

    .line 1036
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 1037
    .local v1, "date":Ljava/time/chrono/ChronoLocalDate;
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v2}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1038
    .local v2, "wowby":J
    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 1039
    .local v4, "weeks":J
    sget-object v6, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 1040
    .end local v2    # "wowby":J
    .end local v4    # "weeks":J
    goto :goto_86

    .line 1041
    .end local v1    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_4a
    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v1}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v2}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v2

    .line 1042
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    .line 1041
    invoke-virtual {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 1043
    .local v1, "wowby":I
    invoke-direct {p0, p2, v0, v1, p3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 1044
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p4, v3, :cond_85

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v3

    if-ne v3, v0, :cond_7d

    goto :goto_85

    .line 1045
    :cond_7d
    new-instance v3, Ljava/time/DateTimeException;

    const-string v4, "Strict mode rejected resolved date as it is in a different week-based-year"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1048
    .end local v1    # "wowby":I
    :cond_85
    :goto_85
    move-object v1, v2

    .end local v2    # "date":Ljava/time/chrono/ChronoLocalDate;
    .local v1, "date":Ljava/time/chrono/ChronoLocalDate;
    :goto_86
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v2}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v2}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    return-object v1
.end method

.method private greylist-max-o resolveWoM(Ljava/util/Map;Ljava/time/chrono/Chronology;IJJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 27
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "year"    # I
    .param p4, "month"    # J
    .param p6, "wom"    # J
    .param p8, "localDow"    # I
    .param p9, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "IJJI",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 985
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p9

    sget-object v9, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const/4 v10, 0x1

    if-ne v8, v9, :cond_43

    .line 986
    invoke-interface {v2, v3, v10, v10}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v9

    const-wide/16 v10, 0x1

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v10

    sget-object v12, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v9, v10, v11, v12}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v9

    .line 987
    .local v9, "date":Ljava/time/chrono/ChronoLocalDate;
    invoke-direct {v0, v9}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v10

    .line 988
    .local v10, "weeks":J
    invoke-direct {v0, v9}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v12

    sub-int v12, p8, v12

    .line 989
    .local v12, "days":I
    const/4 v13, 0x7

    invoke-static {v10, v11, v13}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v13

    move-wide v15, v10

    .end local v10    # "weeks":J
    .local v15, "weeks":J
    int-to-long v10, v12

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    sget-object v13, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v9, v10, v11, v13}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v9

    .line 990
    .end local v12    # "days":I
    .end local v15    # "weeks":J
    goto :goto_82

    .line 991
    .end local v9    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_43
    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    .line 992
    .local v9, "monthValid":I
    invoke-interface {v2, v3, v9, v10}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v10

    .line 993
    .local v10, "date":Ljava/time/chrono/ChronoLocalDate;
    iget-object v11, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    invoke-virtual {v11, v6, v7, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v11

    .line 994
    .local v11, "womInt":I
    int-to-long v12, v11

    invoke-direct {v0, v10}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-int v12, v12

    .line 995
    .local v12, "weeks":I
    invoke-direct {v0, v10}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v13

    sub-int v13, p8, v13

    .line 996
    .local v13, "days":I
    mul-int/lit8 v14, v12, 0x7

    add-int/2addr v14, v13

    int-to-long v14, v14

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v10, v14, v15, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 997
    .end local v10    # "date":Ljava/time/chrono/ChronoLocalDate;
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v10, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v8, v10, :cond_81

    sget-object v10, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v10}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v14

    cmp-long v10, v14, v4

    if-nez v10, :cond_79

    goto :goto_81

    .line 998
    :cond_79
    new-instance v10, Ljava/time/DateTimeException;

    const-string v14, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v10, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1001
    .end local v9    # "monthValid":I
    .end local v11    # "womInt":I
    .end local v12    # "weeks":I
    .end local v13    # "days":I
    :cond_81
    :goto_81
    move-object v9, v2

    .end local v2    # "date":Ljava/time/chrono/ChronoLocalDate;
    .local v9, "date":Ljava/time/chrono/ChronoLocalDate;
    :goto_82
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    return-object v9
.end method

.method private greylist-max-o resolveWoY(Ljava/util/Map;Ljava/time/chrono/Chronology;IJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 16
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "year"    # I
    .param p4, "woy"    # J
    .param p6, "localDow"    # I
    .param p7, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "IJI",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 1010
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    const/4 v0, 0x1

    invoke-interface {p2, p3, v0, v0}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 1011
    .local v0, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p7, v1, :cond_28

    .line 1012
    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    .line 1013
    .local v1, "weeks":J
    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v3

    sub-int v3, p6, v3

    .line 1014
    .local v3, "days":I
    const/4 v4, 0x7

    invoke-static {v1, v2, v4}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v4

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 1015
    .end local v1    # "weeks":J
    .end local v3    # "days":I
    goto :goto_5d

    .line 1016
    :cond_28
    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    invoke-virtual {v1, p4, p5, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 1017
    .local v1, "womInt":I
    int-to-long v2, v1

    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 1018
    .local v2, "weeks":I
    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v3

    sub-int v3, p6, v3

    .line 1019
    .restart local v3    # "days":I
    mul-int/lit8 v4, v2, 0x7

    add-int/2addr v4, v3

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 1020
    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p7, v4, :cond_5d

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v4}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    int-to-long v6, p3

    cmp-long v4, v4, v6

    if-nez v4, :cond_55

    goto :goto_5d

    .line 1021
    :cond_55
    new-instance v4, Ljava/time/DateTimeException;

    const-string v5, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1024
    .end local v1    # "womInt":I
    .end local v2    # "weeks":I
    .end local v3    # "days":I
    :cond_5d
    :goto_5d
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    return-object v0
.end method

.method private greylist-max-o startOfWeekOffset(II)I
    .registers 7
    .param p1, "day"    # I
    .param p2, "dow"    # I

    .line 896
    sub-int v0, p1, p2

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    .line 897
    .local v0, "weekStart":I
    neg-int v1, v0

    .line 898
    .local v1, "offset":I
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v3}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-le v2, v3, :cond_14

    .line 900
    rsub-int/lit8 v1, v0, 0x7

    .line 902
    :cond_14
    return v1
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 10
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 921
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    invoke-virtual {v0, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 922
    .local v0, "newVal":I
    invoke-interface {p1, p0}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 923
    .local v1, "currentVal":I
    if-ne v0, v1, :cond_d

    .line 924
    return-object p1

    .line 927
    :cond_d
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_31

    .line 930
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v2}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetdayOfWeek(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 931
    .local v2, "idow":I
    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v3}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    .line 932
    .local v3, "wowby":I
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v4

    long-to-int v5, p2

    invoke-direct {p0, v4, v5, v3, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 935
    .end local v2    # "idow":I
    .end local v3    # "wowby":I
    :cond_31
    sub-int v2, v0, v1

    int-to-long v2, v2

    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 1079
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1058
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1059
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_27

    .line 1068
    nop

    .line 1069
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 1070
    .local v0, "dateTimePatternGenerator":Landroid/icu/text/DateTimePatternGenerator;
    nop

    .line 1071
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, "icuName":Ljava/lang/String;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    move-object v2, v1

    goto :goto_26

    :cond_24
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    :goto_26
    return-object v2

    .line 1074
    .end local v0    # "dateTimePatternGenerator":Landroid/icu/text/DateTimePatternGenerator;
    .end local v1    # "icuName":Ljava/lang/String;
    :cond_27
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 785
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_c

    .line 786
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 787
    :cond_c
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_17

    .line 788
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 789
    :cond_17
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_22

    .line 790
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 791
    :cond_22
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_2e

    .line 792
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 793
    :cond_2e
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_3a

    .line 794
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 796
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreachable, rangeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 1084
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api isDateBased()Z
    .registers 2

    .line 1089
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 1105
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1106
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_10

    .line 1107
    const/4 v0, 0x1

    return v0

    .line 1108
    :cond_10
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1d

    .line 1109
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1110
    :cond_1d
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2a

    .line 1111
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1112
    :cond_2a
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_37

    .line 1113
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1114
    :cond_37
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_44

    .line 1115
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1118
    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isTimeBased()Z
    .registers 2

    .line 1094
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api range()Ljava/time/temporal/ValueRange;
    .registers 2

    .line 1099
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 1123
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_9

    .line 1124
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    return-object v0

    .line 1125
    :cond_9
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_16

    .line 1126
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1127
    :cond_16
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_23

    .line 1128
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1129
    :cond_23
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_2e

    .line 1130
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1131
    :cond_2e
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_3b

    .line 1132
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreachable, rangeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 18
    .param p2, "partialTemporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 942
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 943
    .local v10, "value":J
    invoke-static {v10, v11}, Ljava/lang/Math;->toIntExact(J)I

    move-result v12

    .line 947
    .local v12, "newValue":I
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3f

    .line 948
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    invoke-virtual {v2, v10, v11, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    .line 949
    .local v2, "checkedValue":I
    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v3}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/DayOfWeek;->getValue()I

    move-result v3

    .line 950
    .local v3, "startDow":I
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-static {v5, v6}, Ljava/lang/Math;->floorMod(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    .line 951
    .local v5, "isoDow":J
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    return-object v4

    .line 957
    .end local v2    # "checkedValue":I
    .end local v3    # "startDow":I
    .end local v5    # "isoDow":J
    :cond_3f
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 958
    return-object v4

    .line 960
    :cond_48
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v13

    .line 961
    .local v13, "isoDow":I
    invoke-direct {p0, v13}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(I)I

    move-result v6

    .line 964
    .local v6, "dow":I
    invoke-static/range {p2 .. p2}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v2

    .line 965
    .local v2, "chrono":Ljava/time/chrono/Chronology;
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 966
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    .line 967
    .local v3, "year":I
    iget-object v5, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v5, v7, :cond_a1

    sget-object v5, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 968
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 969
    .local v4, "month":J
    move v8, v6

    .end local v6    # "dow":I
    .local v8, "dow":I
    int-to-long v6, v12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWoM(Ljava/util/Map;Ljava/time/chrono/Chronology;IJJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v6

    return-object v6

    .line 967
    .end local v4    # "month":J
    .end local v8    # "dow":I
    .restart local v6    # "dow":I
    :cond_a1
    move v8, v6

    .line 971
    .end local v6    # "dow":I
    .restart local v8    # "dow":I
    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v1, v5, :cond_b3

    .line 972
    int-to-long v4, v12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p3

    move v6, v8

    .end local v8    # "dow":I
    .restart local v6    # "dow":I
    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWoY(Ljava/util/Map;Ljava/time/chrono/Chronology;IJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    .end local v6    # "dow":I
    .restart local v8    # "dow":I
    return-object v4

    .line 971
    .end local v3    # "year":I
    :cond_b3
    goto :goto_c2

    .line 974
    .end local v8    # "dow":I
    .restart local v6    # "dow":I
    :cond_b4
    move v8, v6

    .end local v6    # "dow":I
    .restart local v8    # "dow":I
    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-eq v3, v5, :cond_c5

    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v3, v5, :cond_c2

    goto :goto_c5

    :cond_c2
    :goto_c2
    move-object/from16 v7, p3

    goto :goto_e9

    :cond_c5
    :goto_c5
    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v3}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v3

    .line 975
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v3}, Ljava/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v3

    .line 976
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 977
    move-object/from16 v7, p3

    invoke-direct {p0, p1, v2, v8, v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWBY(Ljava/util/Map;Ljava/time/chrono/Chronology;ILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3

    .line 976
    :cond_e4
    move-object/from16 v7, p3

    goto :goto_e9

    .line 975
    :cond_e7
    move-object/from16 v7, p3

    .line 979
    :goto_e9
    return-object v4
.end method

.method public bridge synthetic whitelist test-api resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
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

    .line 691
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
