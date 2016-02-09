.class public Landroid/icu/util/HebrewHoliday;
.super Landroid/icu/util/Holiday;
.source "HebrewHoliday.java"


# static fields
.field public static ESTHER:Landroid/icu/util/HebrewHoliday;

.field public static GEDALIAH:Landroid/icu/util/HebrewHoliday;

.field public static HANUKKAH:Landroid/icu/util/HebrewHoliday;

.field public static HOSHANAH_RABBAH:Landroid/icu/util/HebrewHoliday;

.field public static LAG_BOMER:Landroid/icu/util/HebrewHoliday;

.field public static PASSOVER:Landroid/icu/util/HebrewHoliday;

.field public static PESACH_SHEINI:Landroid/icu/util/HebrewHoliday;

.field public static PURIM:Landroid/icu/util/HebrewHoliday;

.field public static ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

.field public static SELIHOT:Landroid/icu/util/HebrewHoliday;

.field public static SHAVUOT:Landroid/icu/util/HebrewHoliday;

.field public static SHEMINI_ATZERET:Landroid/icu/util/HebrewHoliday;

.field public static SHUSHAN_PURIM:Landroid/icu/util/HebrewHoliday;

.field public static SIMCHAT_TORAH:Landroid/icu/util/HebrewHoliday;

.field public static SUKKOT:Landroid/icu/util/HebrewHoliday;

.field public static TAMMUZ_17:Landroid/icu/util/HebrewHoliday;

.field public static TEVET_10:Landroid/icu/util/HebrewHoliday;

.field public static TISHA_BAV:Landroid/icu/util/HebrewHoliday;

.field public static TU_BSHEVAT:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HAATZMAUT:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HASHOAH:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HAZIKARON:Landroid/icu/util/HebrewHoliday;

.field public static YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

.field public static YOM_YERUSHALAYIM:Landroid/icu/util/HebrewHoliday;

.field private static final gCalendar:Landroid/icu/util/HebrewCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/16 v6, 0xf

    #@3
    const/4 v5, 0x6

    #@4
    const/16 v4, 0x8

    #@6
    const/4 v3, 0x0

    #@7
    .line 19
    new-instance v0, Landroid/icu/util/HebrewCalendar;

    #@9
    invoke-direct {v0}, Landroid/icu/util/HebrewCalendar;-><init>()V

    #@c
    sput-object v0, Landroid/icu/util/HebrewHoliday;->gCalendar:Landroid/icu/util/HebrewCalendar;

    #@e
    .line 46
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@10
    const-string/jumbo v1, "Rosh Hashanah"

    #@13
    const/4 v2, 0x1

    #@14
    invoke-direct {v0, v3, v2, v7, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    #@17
    sput-object v0, Landroid/icu/util/HebrewHoliday;->ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

    #@19
    .line 52
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@1b
    const-string/jumbo v1, "Fast of Gedaliah"

    #@1e
    const/4 v2, 0x3

    #@1f
    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@22
    sput-object v0, Landroid/icu/util/HebrewHoliday;->GEDALIAH:Landroid/icu/util/HebrewHoliday;

    #@24
    .line 58
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@26
    const-string/jumbo v1, "Yom Kippur"

    #@29
    const/16 v2, 0xa

    #@2b
    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@2e
    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

    #@30
    .line 64
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@32
    const-string/jumbo v1, "Sukkot"

    #@35
    invoke-direct {v0, v3, v6, v5, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    #@38
    sput-object v0, Landroid/icu/util/HebrewHoliday;->SUKKOT:Landroid/icu/util/HebrewHoliday;

    #@3a
    .line 70
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@3c
    const-string/jumbo v1, "Hoshanah Rabbah"

    #@3f
    const/16 v2, 0x15

    #@41
    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@44
    sput-object v0, Landroid/icu/util/HebrewHoliday;->HOSHANAH_RABBAH:Landroid/icu/util/HebrewHoliday;

    #@46
    .line 76
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@48
    const-string/jumbo v1, "Shemini Atzeret"

    #@4b
    const/16 v2, 0x16

    #@4d
    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@50
    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHEMINI_ATZERET:Landroid/icu/util/HebrewHoliday;

    #@52
    .line 82
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@54
    const-string/jumbo v1, "Simchat Torah"

    #@57
    const/16 v2, 0x17

    #@59
    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@5c
    sput-object v0, Landroid/icu/util/HebrewHoliday;->SIMCHAT_TORAH:Landroid/icu/util/HebrewHoliday;

    #@5e
    .line 88
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@60
    const-string/jumbo v1, "Hanukkah"

    #@63
    const/16 v2, 0x19

    #@65
    invoke-direct {v0, v7, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@68
    sput-object v0, Landroid/icu/util/HebrewHoliday;->HANUKKAH:Landroid/icu/util/HebrewHoliday;

    #@6a
    .line 94
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@6c
    const-string/jumbo v1, "Fast of Tevet 10"

    #@6f
    const/4 v2, 0x3

    #@70
    const/16 v3, 0xa

    #@72
    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@75
    sput-object v0, Landroid/icu/util/HebrewHoliday;->TEVET_10:Landroid/icu/util/HebrewHoliday;

    #@77
    .line 100
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@79
    const-string/jumbo v1, "Tu B\'Shevat"

    #@7c
    const/4 v2, 0x4

    #@7d
    invoke-direct {v0, v2, v6, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@80
    sput-object v0, Landroid/icu/util/HebrewHoliday;->TU_BSHEVAT:Landroid/icu/util/HebrewHoliday;

    #@82
    .line 106
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@84
    const-string/jumbo v1, "Fast of Esther"

    #@87
    const/16 v2, 0xd

    #@89
    invoke-direct {v0, v5, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@8c
    sput-object v0, Landroid/icu/util/HebrewHoliday;->ESTHER:Landroid/icu/util/HebrewHoliday;

    #@8e
    .line 112
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@90
    const-string/jumbo v1, "Purim"

    #@93
    const/16 v2, 0xe

    #@95
    invoke-direct {v0, v5, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@98
    sput-object v0, Landroid/icu/util/HebrewHoliday;->PURIM:Landroid/icu/util/HebrewHoliday;

    #@9a
    .line 118
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@9c
    const-string/jumbo v1, "Shushan Purim"

    #@9f
    invoke-direct {v0, v5, v6, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@a2
    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHUSHAN_PURIM:Landroid/icu/util/HebrewHoliday;

    #@a4
    .line 124
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@a6
    const-string/jumbo v1, "Passover"

    #@a9
    const/4 v2, 0x7

    #@aa
    invoke-direct {v0, v2, v6, v4, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    #@ad
    sput-object v0, Landroid/icu/util/HebrewHoliday;->PASSOVER:Landroid/icu/util/HebrewHoliday;

    #@af
    .line 130
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@b1
    const-string/jumbo v1, "Yom Hashoah"

    #@b4
    const/4 v2, 0x7

    #@b5
    const/16 v3, 0x1b

    #@b7
    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@ba
    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HASHOAH:Landroid/icu/util/HebrewHoliday;

    #@bc
    .line 136
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@be
    const-string/jumbo v1, "Yom Hazikaron"

    #@c1
    const/4 v2, 0x4

    #@c2
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@c5
    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HAZIKARON:Landroid/icu/util/HebrewHoliday;

    #@c7
    .line 142
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@c9
    const-string/jumbo v1, "Yom Ha\'Atzmaut"

    #@cc
    const/4 v2, 0x5

    #@cd
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@d0
    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HAATZMAUT:Landroid/icu/util/HebrewHoliday;

    #@d2
    .line 148
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@d4
    const-string/jumbo v1, "Pesach Sheini"

    #@d7
    const/16 v2, 0xe

    #@d9
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@dc
    sput-object v0, Landroid/icu/util/HebrewHoliday;->PESACH_SHEINI:Landroid/icu/util/HebrewHoliday;

    #@de
    .line 154
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@e0
    const-string/jumbo v1, "Lab B\'Omer"

    #@e3
    const/16 v2, 0x12

    #@e5
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@e8
    sput-object v0, Landroid/icu/util/HebrewHoliday;->LAG_BOMER:Landroid/icu/util/HebrewHoliday;

    #@ea
    .line 160
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@ec
    const-string/jumbo v1, "Yom Yerushalayim"

    #@ef
    const/16 v2, 0x1c

    #@f1
    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@f4
    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_YERUSHALAYIM:Landroid/icu/util/HebrewHoliday;

    #@f6
    .line 166
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@f8
    const-string/jumbo v1, "Shavuot"

    #@fb
    const/16 v2, 0x9

    #@fd
    invoke-direct {v0, v2, v5, v7, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    #@100
    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHAVUOT:Landroid/icu/util/HebrewHoliday;

    #@102
    .line 172
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@104
    const-string/jumbo v1, "Fast of Tammuz 17"

    #@107
    const/16 v2, 0xa

    #@109
    const/16 v3, 0x11

    #@10b
    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@10e
    sput-object v0, Landroid/icu/util/HebrewHoliday;->TAMMUZ_17:Landroid/icu/util/HebrewHoliday;

    #@110
    .line 178
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@112
    const-string/jumbo v1, "Fast of Tisha B\'Av"

    #@115
    const/16 v2, 0xb

    #@117
    const/16 v3, 0x9

    #@119
    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@11c
    sput-object v0, Landroid/icu/util/HebrewHoliday;->TISHA_BAV:Landroid/icu/util/HebrewHoliday;

    #@11e
    .line 184
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    #@120
    const-string/jumbo v1, "Selihot"

    #@123
    const/16 v2, 0xc

    #@125
    const/16 v3, 0x15

    #@127
    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    #@12a
    sput-object v0, Landroid/icu/util/HebrewHoliday;->SELIHOT:Landroid/icu/util/HebrewHoliday;

    #@12c
    .line 17
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "length"    # I
    .param p4, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    #@2
    sget-object v1, Landroid/icu/util/HebrewHoliday;->gCalendar:Landroid/icu/util/HebrewCalendar;

    #@4
    invoke-direct {v0, p1, p2, v1}, Landroid/icu/util/SimpleDateRule;-><init>(IILandroid/icu/util/Calendar;)V

    #@7
    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@a
    .line 37
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    #@4
    .line 28
    return-void
.end method
