.class public Landroid/icu/util/DangiCalendar;
.super Landroid/icu/util/ChineseCalendar;
.source "DangiCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DANGI_EPOCH_YEAR:I = -0x91c

.field private static final KOREA_ZONE:Landroid/icu/util/TimeZone;

.field private static final serialVersionUID:J = 0x7130fd50087bac21L


# direct methods
.method static constructor <clinit>()V
    .locals 20

    #@0
    .prologue
    .line 62
    new-instance v18, Landroid/icu/util/InitialTimeZoneRule;

    #@2
    const-string/jumbo v3, "GMT+8"

    #@5
    const v4, 0x1b77400

    #@8
    const/4 v5, 0x0

    #@9
    move-object/from16 v0, v18

    #@b
    invoke-direct {v0, v3, v4, v5}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@e
    .line 63
    .local v18, "initialTimeZone":Landroid/icu/util/InitialTimeZoneRule;
    const/4 v3, 0x1

    #@f
    new-array v6, v3, [J

    #@11
    const-wide v4, -0x21801858c00L

    #@16
    const/4 v3, 0x0

    #@17
    aput-wide v4, v6, v3

    #@19
    .line 64
    .local v6, "millis1897":[J
    const/4 v3, 0x1

    #@1a
    new-array v11, v3, [J

    #@1c
    const-wide v4, -0x210a9d46000L

    #@21
    const/4 v3, 0x0

    #@22
    aput-wide v4, v11, v3

    #@24
    .line 65
    .local v11, "millis1898":[J
    const/4 v3, 0x1

    #@25
    new-array v0, v3, [J

    #@27
    move-object/from16 v16, v0

    #@29
    const-wide v4, -0x1a9de23f800L

    #@2e
    const/4 v3, 0x0

    #@2f
    aput-wide v4, v16, v3

    #@31
    .line 66
    .local v16, "millis1912":[J
    new-instance v2, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@33
    const-string/jumbo v3, "Korean 1897"

    #@36
    const v4, 0x1808580

    #@39
    const/4 v5, 0x0

    #@3a
    .line 67
    const/4 v7, 0x1

    #@3b
    .line 66
    invoke-direct/range {v2 .. v7}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    #@3e
    .line 68
    .local v2, "rule1897":Landroid/icu/util/TimeZoneRule;
    new-instance v7, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@40
    const-string/jumbo v8, "Korean 1898-1911"

    #@43
    const v9, 0x1b77400

    #@46
    const/4 v10, 0x0

    #@47
    .line 69
    const/4 v12, 0x1

    #@48
    .line 68
    invoke-direct/range {v7 .. v12}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    #@4b
    .line 70
    .local v7, "rule1898to1911":Landroid/icu/util/TimeZoneRule;
    new-instance v12, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@4d
    const-string/jumbo v13, "Korean 1912-"

    #@50
    const v14, 0x1ee6280

    #@53
    const/4 v15, 0x0

    #@54
    .line 71
    const/16 v17, 0x1

    #@56
    .line 70
    invoke-direct/range {v12 .. v17}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    #@59
    .line 73
    .local v12, "ruleFrom1912":Landroid/icu/util/TimeZoneRule;
    new-instance v19, Landroid/icu/util/RuleBasedTimeZone;

    #@5b
    const-string/jumbo v3, "KOREA_ZONE"

    #@5e
    move-object/from16 v0, v19

    #@60
    move-object/from16 v1, v18

    #@62
    invoke-direct {v0, v3, v1}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    #@65
    .line 74
    .local v19, "tz":Landroid/icu/util/RuleBasedTimeZone;
    move-object/from16 v0, v19

    #@67
    invoke-virtual {v0, v2}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    #@6a
    .line 75
    move-object/from16 v0, v19

    #@6c
    invoke-virtual {v0, v7}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    #@6f
    .line 76
    move-object/from16 v0, v19

    #@71
    invoke-virtual {v0, v12}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    #@74
    .line 77
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/RuleBasedTimeZone;->freeze()Landroid/icu/util/TimeZone;

    #@77
    .line 78
    sput-object v19, Landroid/icu/util/DangiCalendar;->KOREA_ZONE:Landroid/icu/util/TimeZone;

    #@79
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 117
    sget-object v0, Landroid/icu/util/DangiCalendar;->KOREA_ZONE:Landroid/icu/util/TimeZone;

    #@2
    const/16 v1, -0x91c

    #@4
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@7
    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 103
    invoke-virtual {p0, p1}, Landroid/icu/util/DangiCalendar;->setTime(Ljava/util/Date;)V

    #@10
    .line 101
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 128
    const-string/jumbo v0, "dangi"

    #@3
    return-object v0
.end method
