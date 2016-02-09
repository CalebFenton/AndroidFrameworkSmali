.class public Landroid/icu/util/EasterHoliday;
.super Landroid/icu/util/Holiday;
.source "EasterHoliday.java"


# static fields
.field public static final ASCENSION:Landroid/icu/util/EasterHoliday;

.field public static final ASH_WEDNESDAY:Landroid/icu/util/EasterHoliday;

.field public static final CORPUS_CHRISTI:Landroid/icu/util/EasterHoliday;

.field public static final EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

.field public static final EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

.field public static final GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

.field public static final MAUNDY_THURSDAY:Landroid/icu/util/EasterHoliday;

.field public static final PALM_SUNDAY:Landroid/icu/util/EasterHoliday;

.field public static final PENTECOST:Landroid/icu/util/EasterHoliday;

.field public static final SHROVE_TUESDAY:Landroid/icu/util/EasterHoliday;

.field public static final WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

.field public static final WHIT_SUNDAY:Landroid/icu/util/EasterHoliday;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x31

    #@2
    .line 71
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@4
    const-string/jumbo v1, "Shrove Tuesday"

    #@7
    const/16 v2, -0x30

    #@9
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@c
    sput-object v0, Landroid/icu/util/EasterHoliday;->SHROVE_TUESDAY:Landroid/icu/util/EasterHoliday;

    #@e
    .line 78
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@10
    const-string/jumbo v1, "Ash Wednesday"

    #@13
    const/16 v2, -0x2f

    #@15
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@18
    sput-object v0, Landroid/icu/util/EasterHoliday;->ASH_WEDNESDAY:Landroid/icu/util/EasterHoliday;

    #@1a
    .line 85
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@1c
    const-string/jumbo v1, "Palm Sunday"

    #@1f
    const/4 v2, -0x7

    #@20
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@23
    sput-object v0, Landroid/icu/util/EasterHoliday;->PALM_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@25
    .line 92
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@27
    const-string/jumbo v1, "Maundy Thursday"

    #@2a
    const/4 v2, -0x3

    #@2b
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@2e
    sput-object v0, Landroid/icu/util/EasterHoliday;->MAUNDY_THURSDAY:Landroid/icu/util/EasterHoliday;

    #@30
    .line 99
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@32
    const-string/jumbo v1, "Good Friday"

    #@35
    const/4 v2, -0x2

    #@36
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@39
    sput-object v0, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    #@3b
    .line 106
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@3d
    const-string/jumbo v1, "Easter Sunday"

    #@40
    const/4 v2, 0x0

    #@41
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@44
    sput-object v0, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@46
    .line 113
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@48
    const-string/jumbo v1, "Easter Monday"

    #@4b
    const/4 v2, 0x1

    #@4c
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@4f
    sput-object v0, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    #@51
    .line 120
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@53
    const-string/jumbo v1, "Ascension"

    #@56
    const/16 v2, 0x27

    #@58
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@5b
    sput-object v0, Landroid/icu/util/EasterHoliday;->ASCENSION:Landroid/icu/util/EasterHoliday;

    #@5d
    .line 127
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@5f
    const-string/jumbo v1, "Pentecost"

    #@62
    invoke-direct {v0, v3, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@65
    sput-object v0, Landroid/icu/util/EasterHoliday;->PENTECOST:Landroid/icu/util/EasterHoliday;

    #@67
    .line 134
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@69
    const-string/jumbo v1, "Whit Sunday"

    #@6c
    invoke-direct {v0, v3, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@6f
    sput-object v0, Landroid/icu/util/EasterHoliday;->WHIT_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@71
    .line 141
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@73
    const-string/jumbo v1, "Whit Monday"

    #@76
    const/16 v2, 0x32

    #@78
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@7b
    sput-object v0, Landroid/icu/util/EasterHoliday;->WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

    #@7d
    .line 148
    new-instance v0, Landroid/icu/util/EasterHoliday;

    #@7f
    const-string/jumbo v1, "Corpus Christi"

    #@82
    const/16 v2, 0x3c

    #@84
    invoke-direct {v0, v2, v1}, Landroid/icu/util/EasterHoliday;-><init>(ILjava/lang/String;)V

    #@87
    sput-object v0, Landroid/icu/util/EasterHoliday;->CORPUS_CHRISTI:Landroid/icu/util/EasterHoliday;

    #@89
    .line 22
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "daysAfter"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/icu/util/EasterRule;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/icu/util/EasterRule;-><init>(IZ)V

    #@6
    invoke-direct {p0, p2, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@9
    .line 45
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 1
    .param p1, "daysAfter"    # I
    .param p2, "orthodox"    # Z
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    new-instance v0, Landroid/icu/util/EasterRule;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/util/EasterRule;-><init>(IZ)V

    #@5
    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@8
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 33
    new-instance v0, Landroid/icu/util/EasterRule;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/icu/util/EasterRule;-><init>(IZ)V

    #@6
    invoke-direct {p0, p1, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    #@9
    .line 31
    return-void
.end method
