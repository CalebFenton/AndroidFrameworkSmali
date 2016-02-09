.class public Landroid/icu/util/SimpleHoliday;
.super Landroid/icu/util/Holiday;
.source "SimpleHoliday.java"


# static fields
.field public static final ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final ALL_SOULS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final ASSUMPTION:Landroid/icu/util/SimpleHoliday;

.field public static final BOXING_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final CHRISTMAS:Landroid/icu/util/SimpleHoliday;

.field public static final CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

.field public static final EPIPHANY:Landroid/icu/util/SimpleHoliday;

.field public static final IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

.field public static final MAY_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

.field public static final ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x1a

    #@2
    const/16 v6, 0xa

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    const/16 v4, 0xb

    #@8
    .line 175
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@a
    const-string/jumbo v1, "New Year\'s Day"

    #@d
    invoke-direct {v0, v3, v5, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@10
    .line 174
    sput-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@12
    .line 183
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@14
    const-string/jumbo v1, "Epiphany"

    #@17
    const/4 v2, 0x6

    #@18
    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@1b
    .line 182
    sput-object v0, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    #@1d
    .line 191
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@1f
    const-string/jumbo v1, "May Day"

    #@22
    const/4 v2, 0x4

    #@23
    invoke-direct {v0, v2, v5, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@26
    .line 190
    sput-object v0, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    #@28
    .line 199
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@2a
    const-string/jumbo v1, "Assumption"

    #@2d
    const/4 v2, 0x7

    #@2e
    const/16 v3, 0xf

    #@30
    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@33
    .line 198
    sput-object v0, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    #@35
    .line 207
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@37
    const-string/jumbo v1, "All Saints\' Day"

    #@3a
    invoke-direct {v0, v6, v5, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@3d
    .line 206
    sput-object v0, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    #@3f
    .line 215
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@41
    const-string/jumbo v1, "All Souls\' Day"

    #@44
    const/4 v2, 0x2

    #@45
    invoke-direct {v0, v6, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@48
    .line 214
    sput-object v0, Landroid/icu/util/SimpleHoliday;->ALL_SOULS_DAY:Landroid/icu/util/SimpleHoliday;

    #@4a
    .line 223
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@4c
    const-string/jumbo v1, "Immaculate Conception"

    #@4f
    const/16 v2, 0x8

    #@51
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@54
    .line 222
    sput-object v0, Landroid/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

    #@56
    .line 231
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@58
    const-string/jumbo v1, "Christmas Eve"

    #@5b
    const/16 v2, 0x18

    #@5d
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@60
    .line 230
    sput-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

    #@62
    .line 239
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@64
    const-string/jumbo v1, "Christmas"

    #@67
    const/16 v2, 0x19

    #@69
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@6c
    .line 238
    sput-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@6e
    .line 247
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@70
    const-string/jumbo v1, "Boxing Day"

    #@73
    invoke-direct {v0, v4, v7, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@76
    .line 246
    sput-object v0, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    #@78
    .line 255
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@7a
    const-string/jumbo v1, "St. Stephen\'s Day"

    #@7d
    invoke-direct {v0, v4, v7, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@80
    .line 254
    sput-object v0, Landroid/icu/util/SimpleHoliday;->ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;

    #@82
    .line 263
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@84
    const-string/jumbo v1, "New Year\'s Eve"

    #@87
    const/16 v2, 0x1f

    #@89
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@8c
    .line 262
    sput-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    #@8e
    .line 22
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 112
    new-instance v2, Landroid/icu/util/SimpleDateRule;

    #@3
    .line 113
    if-lez p3, :cond_1

    #@5
    move v1, p3

    #@6
    .line 114
    :goto_0
    if-lez p3, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 112
    :cond_0
    invoke-direct {v2, p1, p2, v1, v0}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    #@c
    invoke-direct {p0, p4, v2}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@f
    .line 110
    return-void

    #@10
    .line 113
    :cond_1
    neg-int v1, p3

    #@11
    goto :goto_0
.end method

.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 4
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "startYear"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 125
    new-instance v3, Landroid/icu/util/SimpleDateRule;

    #@3
    .line 126
    if-lez p3, :cond_0

    #@5
    move v2, p3

    #@6
    .line 127
    :goto_0
    if-lez p3, :cond_1

    #@8
    const/4 v0, 0x1

    #@9
    .line 125
    :goto_1
    invoke-direct {v3, p1, p2, v2, v0}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    #@c
    .line 124
    invoke-static {p5, v1, v3}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    #@f
    move-result-object v0

    #@10
    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@13
    .line 122
    return-void

    #@14
    .line 126
    :cond_0
    neg-int v0, p3

    #@15
    move v2, v0

    #@16
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    .line 127
    goto :goto_1
.end method

.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 3
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "startYear"    # I
    .param p6, "endYear"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 139
    new-instance v2, Landroid/icu/util/SimpleDateRule;

    #@3
    .line 140
    if-lez p3, :cond_1

    #@5
    move v1, p3

    #@6
    .line 141
    :goto_0
    if-lez p3, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 139
    :cond_0
    invoke-direct {v2, p1, p2, v1, v0}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    #@c
    .line 138
    invoke-static {p5, p6, v2}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    #@f
    move-result-object v0

    #@10
    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@13
    .line 136
    return-void

    #@14
    .line 140
    :cond_1
    neg-int v1, p3

    #@15
    goto :goto_0
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    #@5
    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@8
    .line 38
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 2
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "startYear"    # I

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {p4, v1, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@d
    .line 59
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "startYear"    # I
    .param p5, "endYear"    # I

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    #@5
    invoke-static {p4, p5, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@c
    .line 80
    return-void
.end method

.method private static rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;
    .locals 6
    .param p0, "startYear"    # I
    .param p1, "endYear"    # I
    .param p2, "rule"    # Landroid/icu/util/DateRule;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 146
    if-nez p0, :cond_0

    #@3
    if-nez p1, :cond_0

    #@5
    .line 147
    return-object p2

    #@6
    .line 150
    :cond_0
    new-instance v1, Landroid/icu/util/RangeDateRule;

    #@8
    invoke-direct {v1}, Landroid/icu/util/RangeDateRule;-><init>()V

    #@b
    .line 152
    .local v1, "rangeRule":Landroid/icu/util/RangeDateRule;
    if-eqz p0, :cond_2

    #@d
    .line 153
    new-instance v2, Landroid/icu/util/GregorianCalendar;

    #@f
    const/4 v3, 0x1

    #@10
    invoke-direct {v2, p0, v4, v3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    #@13
    .line 154
    .local v2, "start":Landroid/icu/util/Calendar;
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v1, v3, p2}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    #@1a
    .line 158
    .end local v2    # "start":Landroid/icu/util/Calendar;
    :goto_0
    if-eqz p1, :cond_1

    #@1c
    .line 159
    new-instance v3, Landroid/icu/util/GregorianCalendar;

    #@1e
    const/16 v4, 0xb

    #@20
    const/16 v5, 0x1f

    #@22
    invoke-direct {v3, p1, v4, v5}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    #@25
    invoke-virtual {v3}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    #@28
    move-result-object v0

    #@29
    .line 160
    .local v0, "end":Ljava/util/Date;
    const/4 v3, 0x0

    #@2a
    invoke-virtual {v1, v0, v3}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    #@2d
    .line 163
    .end local v0    # "end":Ljava/util/Date;
    :cond_1
    return-object v1

    #@2e
    .line 156
    :cond_2
    invoke-virtual {v1, p2}, Landroid/icu/util/RangeDateRule;->add(Landroid/icu/util/DateRule;)V

    #@31
    goto :goto_0
.end method
