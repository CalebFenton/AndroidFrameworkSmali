.class public Landroid/icu/util/HebrewHoliday;
.super Landroid/icu/util/Holiday;
.source "HebrewHoliday.java"


# static fields
.field public static greylist-max-o ESTHER:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o GEDALIAH:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o HANUKKAH:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o HOSHANAH_RABBAH:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o LAG_BOMER:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o PASSOVER:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o PESACH_SHEINI:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o PURIM:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o SELIHOT:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o SHAVUOT:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o SHEMINI_ATZERET:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o SHUSHAN_PURIM:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o SIMCHAT_TORAH:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o SUKKOT:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o TAMMUZ_17:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o TEVET_10:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o TISHA_BAV:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o TU_BSHEVAT:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o YOM_HAATZMAUT:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o YOM_HASHOAH:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o YOM_HAZIKARON:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

.field public static greylist-max-o YOM_YERUSHALAYIM:Landroid/icu/util/HebrewHoliday;

.field private static final greylist-max-o gCalendar:Landroid/icu/util/HebrewCalendar;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 22
    new-instance v0, Landroid/icu/util/HebrewCalendar;

    invoke-direct {v0}, Landroid/icu/util/HebrewCalendar;-><init>()V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->gCalendar:Landroid/icu/util/HebrewCalendar;

    .line 46
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Rosh Hashanah"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

    .line 51
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Fast of Gedaliah"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->GEDALIAH:Landroid/icu/util/HebrewHoliday;

    .line 56
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Yom Kippur"

    const/16 v5, 0xa

    invoke-direct {v0, v2, v5, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

    .line 61
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Sukkot"

    const/16 v6, 0xf

    const/4 v7, 0x6

    invoke-direct {v0, v2, v6, v7, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SUKKOT:Landroid/icu/util/HebrewHoliday;

    .line 66
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Hoshanah Rabbah"

    const/16 v8, 0x15

    invoke-direct {v0, v2, v8, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->HOSHANAH_RABBAH:Landroid/icu/util/HebrewHoliday;

    .line 71
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0x16

    const-string v9, "Shemini Atzeret"

    invoke-direct {v0, v2, v1, v9}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHEMINI_ATZERET:Landroid/icu/util/HebrewHoliday;

    .line 76
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0x17

    const-string v9, "Simchat Torah"

    invoke-direct {v0, v2, v1, v9}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SIMCHAT_TORAH:Landroid/icu/util/HebrewHoliday;

    .line 81
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0x19

    const-string v2, "Hanukkah"

    invoke-direct {v0, v4, v1, v2}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->HANUKKAH:Landroid/icu/util/HebrewHoliday;

    .line 86
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Fast of Tevet 10"

    invoke-direct {v0, v3, v5, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TEVET_10:Landroid/icu/util/HebrewHoliday;

    .line 91
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Tu B\'Shevat"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v6, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TU_BSHEVAT:Landroid/icu/util/HebrewHoliday;

    .line 96
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0xd

    const-string v3, "Fast of Esther"

    invoke-direct {v0, v7, v1, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->ESTHER:Landroid/icu/util/HebrewHoliday;

    .line 101
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Purim"

    const/16 v3, 0xe

    invoke-direct {v0, v7, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PURIM:Landroid/icu/util/HebrewHoliday;

    .line 106
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Shushan Purim"

    invoke-direct {v0, v7, v6, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHUSHAN_PURIM:Landroid/icu/util/HebrewHoliday;

    .line 111
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Passover"

    const/4 v9, 0x7

    const/16 v10, 0x8

    invoke-direct {v0, v9, v6, v10, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PASSOVER:Landroid/icu/util/HebrewHoliday;

    .line 116
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0x1b

    const-string v6, "Yom Hashoah"

    invoke-direct {v0, v9, v1, v6}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HASHOAH:Landroid/icu/util/HebrewHoliday;

    .line 121
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Yom Hazikaron"

    invoke-direct {v0, v10, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HAZIKARON:Landroid/icu/util/HebrewHoliday;

    .line 126
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/4 v1, 0x5

    const-string v2, "Yom Ha\'Atzmaut"

    invoke-direct {v0, v10, v1, v2}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HAATZMAUT:Landroid/icu/util/HebrewHoliday;

    .line 131
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Pesach Sheini"

    invoke-direct {v0, v10, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PESACH_SHEINI:Landroid/icu/util/HebrewHoliday;

    .line 136
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0x12

    const-string v2, "Lab B\'Omer"

    invoke-direct {v0, v10, v1, v2}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->LAG_BOMER:Landroid/icu/util/HebrewHoliday;

    .line 141
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0x1c

    const-string v2, "Yom Yerushalayim"

    invoke-direct {v0, v10, v1, v2}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_YERUSHALAYIM:Landroid/icu/util/HebrewHoliday;

    .line 146
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v1, "Shavuot"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v7, v4, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHAVUOT:Landroid/icu/util/HebrewHoliday;

    .line 151
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0x11

    const-string v3, "Fast of Tammuz 17"

    invoke-direct {v0, v5, v1, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TAMMUZ_17:Landroid/icu/util/HebrewHoliday;

    .line 156
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0xb

    const-string v3, "Fast of Tisha B\'Av"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TISHA_BAV:Landroid/icu/util/HebrewHoliday;

    .line 161
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0xc

    const-string v2, "Selihot"

    invoke-direct {v0, v1, v8, v2}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SELIHOT:Landroid/icu/util/HebrewHoliday;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIILjava/lang/String;)V
    .registers 7
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "length"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    sget-object v1, Landroid/icu/util/HebrewHoliday;->gCalendar:Landroid/icu/util/HebrewCalendar;

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/util/SimpleDateRule;-><init>(IILandroid/icu/util/Calendar;)V

    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 41
    return-void
.end method

.method public constructor greylist-max-o <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    .line 33
    return-void
.end method
