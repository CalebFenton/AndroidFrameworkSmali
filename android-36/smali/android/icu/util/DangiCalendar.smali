.class public Landroid/icu/util/DangiCalendar;
.super Landroid/icu/util/ChineseCalendar;
.source "DangiCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DANGI_EPOCH_YEAR:I = -0x91c

.field private static final greylist-max-o KOREA_ZONE:Landroid/icu/util/TimeZone;

.field private static final whitelist serialVersionUID:J = 0x7130fd50087bac21L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 22

    .line 66
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    const-string v1, "GMT+8"

    const v2, 0x1b77400

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 67
    .local v0, "initialTimeZone":Landroid/icu/util/InitialTimeZoneRule;
    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide v4, -0x21801858c00L

    aput-wide v4, v2, v3

    move-object v10, v2

    .line 68
    .local v10, "millis1897":[J
    new-array v2, v1, [J

    const-wide v4, -0x210a9d46000L

    aput-wide v4, v2, v3

    move-object v15, v2

    .line 69
    .local v15, "millis1898":[J
    new-array v1, v1, [J

    const-wide v4, -0x1a9de23f800L

    aput-wide v4, v1, v3

    move-object/from16 v20, v1

    .line 70
    .local v20, "millis1912":[J
    new-instance v6, Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v7, "Korean 1897"

    const v8, 0x1808580

    invoke-direct/range {v6 .. v11}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 72
    .local v6, "rule1897":Landroid/icu/util/TimeZoneRule;
    new-instance v11, Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v14, 0x0

    const/16 v16, 0x1

    const-string v12, "Korean 1898-1911"

    const v13, 0x1b77400

    invoke-direct/range {v11 .. v16}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 74
    .local v11, "rule1898to1911":Landroid/icu/util/TimeZoneRule;
    new-instance v16, Landroid/icu/util/TimeArrayTimeZoneRule;

    const/16 v19, 0x0

    const/16 v21, 0x1

    const-string v17, "Korean 1912-"

    const v18, 0x1ee6280

    invoke-direct/range {v16 .. v21}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    move-object/from16 v1, v16

    .line 77
    .local v1, "ruleFrom1912":Landroid/icu/util/TimeZoneRule;
    new-instance v2, Landroid/icu/util/RuleBasedTimeZone;

    const-string v3, "KOREA_ZONE"

    invoke-direct {v2, v3, v0}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    .line 78
    .local v2, "tz":Landroid/icu/util/RuleBasedTimeZone;
    invoke-virtual {v2, v6}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 79
    invoke-virtual {v2, v11}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 80
    invoke-virtual {v2, v1}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 81
    invoke-virtual {v2}, Landroid/icu/util/RuleBasedTimeZone;->freeze()Landroid/icu/util/TimeZone;

    .line 82
    sput-object v2, Landroid/icu/util/DangiCalendar;->KOREA_ZONE:Landroid/icu/util/TimeZone;

    .line 83
    .end local v0    # "initialTimeZone":Landroid/icu/util/InitialTimeZoneRule;
    .end local v1    # "ruleFrom1912":Landroid/icu/util/TimeZoneRule;
    .end local v2    # "tz":Landroid/icu/util/RuleBasedTimeZone;
    .end local v6    # "rule1897":Landroid/icu/util/TimeZoneRule;
    .end local v10    # "millis1897":[J
    .end local v11    # "rule1898to1911":Landroid/icu/util/TimeZoneRule;
    .end local v15    # "millis1898":[J
    .end local v20    # "millis1912":[J
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 94
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    const/16 v0, -0x91c

    sget-object v1, Landroid/icu/util/DangiCalendar;->KOREA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 122
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/icu/util/DangiCalendar;->setTime(Ljava/util/Date;)V

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    const-string v0, "dangi"

    return-object v0
.end method
