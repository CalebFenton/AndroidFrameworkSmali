.class public Landroid/icu/util/SimpleHoliday;
.super Landroid/icu/util/Holiday;
.source "SimpleHoliday.java"


# static fields
.field public static final greylist-max-o ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o ALL_SOULS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o ASSUMPTION:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o BOXING_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o CHRISTMAS:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o EPIPHANY:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o MAY_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

.field public static final greylist-max-o ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 170
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string v1, "New Year\'s Day"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    .line 177
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/4 v1, 0x6

    const-string v4, "Epiphany"

    invoke-direct {v0, v2, v1, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    .line 184
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/4 v1, 0x4

    const-string v2, "May Day"

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    .line 191
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v1, 0xf

    const-string v2, "Assumption"

    const/4 v4, 0x7

    invoke-direct {v0, v4, v1, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    .line 198
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string v1, "All Saints\' Day"

    const/16 v2, 0xa

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    .line 205
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/4 v1, 0x2

    const-string v3, "All Souls\' Day"

    invoke-direct {v0, v2, v1, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ALL_SOULS_DAY:Landroid/icu/util/SimpleHoliday;

    .line 212
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v1, 0x8

    const-string v2, "Immaculate Conception"

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

    .line 219
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v1, 0x18

    const-string v2, "Christmas Eve"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

    .line 226
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v1, 0x19

    const-string v2, "Christmas"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    .line 233
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string v1, "Boxing Day"

    const/16 v2, 0x1a

    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    .line 240
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string v1, "St. Stephen\'s Day"

    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;

    .line 247
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v1, 0x1f

    const-string v2, "New Year\'s Eve"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIILjava/lang/String;)V
    .registers 8
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    .line 112
    if-lez p3, :cond_6

    move v1, p3

    goto :goto_7

    :cond_6
    neg-int v1, p3

    :goto_7
    if-lez p3, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    invoke-direct {v0, p1, p2, v1, v2}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    .line 111
    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 114
    return-void
.end method

.method public constructor greylist-max-o <init>(IIILjava/lang/String;I)V
    .registers 10
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "startYear"    # I

    .line 122
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    .line 124
    if-lez p3, :cond_6

    move v1, p3

    goto :goto_7

    :cond_6
    neg-int v1, p3

    :goto_7
    const/4 v2, 0x0

    if-lez p3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    invoke-direct {v0, p1, p2, v1, v3}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    .line 122
    invoke-static {p5, v2, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 126
    return-void
.end method

.method public constructor greylist-max-o <init>(IIILjava/lang/String;II)V
    .registers 10
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "startYear"    # I
    .param p6, "endYear"    # I

    .line 135
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    .line 137
    if-lez p3, :cond_6

    move v1, p3

    goto :goto_7

    :cond_6
    neg-int v1, p3

    :goto_7
    if-lez p3, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    invoke-direct {v0, p1, p2, v1, v2}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    .line 135
    invoke-static {p5, p6, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 139
    return-void
.end method

.method public constructor greylist-max-o <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 43
    return-void
.end method

.method public constructor greylist-max-o <init>(IILjava/lang/String;I)V
    .registers 7
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "startYear"    # I

    .line 62
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    const/4 v1, 0x0

    invoke-static {p4, v1, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 63
    return-void
.end method

.method public constructor greylist-max-o <init>(IILjava/lang/String;II)V
    .registers 7
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "startYear"    # I
    .param p5, "endYear"    # I

    .line 82
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    invoke-static {p4, p5, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 83
    return-void
.end method

.method private static greylist-max-o rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;
    .registers 7
    .param p0, "startYear"    # I
    .param p1, "endYear"    # I
    .param p2, "rule"    # Landroid/icu/util/DateRule;

    .line 143
    if-nez p0, :cond_5

    if-nez p1, :cond_5

    .line 144
    return-object p2

    .line 147
    :cond_5
    new-instance v0, Landroid/icu/util/RangeDateRule;

    invoke-direct {v0}, Landroid/icu/util/RangeDateRule;-><init>()V

    .line 149
    .local v0, "rangeRule":Landroid/icu/util/RangeDateRule;
    if-eqz p0, :cond_1b

    .line 150
    new-instance v1, Landroid/icu/util/GregorianCalendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    .line 151
    .local v1, "start":Landroid/icu/util/Calendar;
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    .line 152
    .end local v1    # "start":Landroid/icu/util/Calendar;
    goto :goto_1e

    .line 153
    :cond_1b
    invoke-virtual {v0, p2}, Landroid/icu/util/RangeDateRule;->add(Landroid/icu/util/DateRule;)V

    .line 155
    :goto_1e
    if-eqz p1, :cond_31

    .line 156
    new-instance v1, Landroid/icu/util/GregorianCalendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-direct {v1, p1, v2, v3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v1}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 157
    .local v1, "end":Ljava/util/Date;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    .line 160
    .end local v1    # "end":Ljava/util/Date;
    :cond_31
    return-object v0
.end method
