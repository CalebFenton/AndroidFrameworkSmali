.class public Landroid/icu/util/EasterHoliday;
.super Landroid/icu/util/Holiday;
.source "EasterHoliday.java"


# static fields
.field public static final greylist-max-o ASCENSION:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o ASH_WEDNESDAY:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o CORPUS_CHRISTI:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o MAUNDY_THURSDAY:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o PALM_SUNDAY:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o PENTECOST:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o SHROVE_TUESDAY:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

.field public static final greylist-max-o WHIT_SUNDAY:Landroid/icu/util/EasterHoliday;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 70
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/16 v1, -0x30

    const-string v2, "Shrove Tuesday"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->SHROVE_TUESDAY:Landroid/icu/util/EasterHoliday;

    .line 76
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/16 v1, -0x2f

    const-string v2, "Ash Wednesday"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->ASH_WEDNESDAY:Landroid/icu/util/EasterHoliday;

    .line 82
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/4 v1, -0x7

    const-string v2, "Palm Sunday"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->PALM_SUNDAY:Landroid/icu/util/EasterHoliday;

    .line 88
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/4 v1, -0x3

    const-string v2, "Maundy Thursday"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->MAUNDY_THURSDAY:Landroid/icu/util/EasterHoliday;

    .line 94
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/4 v1, -0x2

    const-string v2, "Good Friday"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    .line 100
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/4 v1, 0x0

    const-string v2, "Easter Sunday"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    .line 106
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/4 v1, 0x1

    const-string v2, "Easter Monday"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    .line 112
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/16 v1, 0x27

    const-string v2, "Ascension"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->ASCENSION:Landroid/icu/util/EasterHoliday;

    .line 118
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const-string v1, "Pentecost"

    const/16 v2, 0x31

    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->PENTECOST:Landroid/icu/util/EasterHoliday;

    .line 124
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const-string v1, "Whit Sunday"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->WHIT_SUNDAY:Landroid/icu/util/EasterHoliday;

    .line 130
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/16 v1, 0x32

    const-string v2, "Whit Monday"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

    .line 136
    new-instance v0, Landroid/icu/util/EasterHoliday;

    const/16 v1, 0x3c

    const-string v2, "Corpus Christi"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/EasterHoliday;->CORPUS_CHRISTI:Landroid/icu/util/EasterHoliday;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "daysAfter"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/icu/util/EasterRule;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/util/EasterRule;-><init>(IZ)V

    invoke-direct {p0, p2, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(IZLjava/lang/String;)V
    .registers 5
    .param p1, "daysAfter"    # I
    .param p2, "orthodox"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/icu/util/EasterRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/EasterRule;-><init>(IZ)V

    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 64
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/icu/util/EasterRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/icu/util/EasterRule;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    .line 36
    return-void
.end method
