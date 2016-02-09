.class final enum Landroid/icu/util/Calendar$CalType;
.super Ljava/lang/Enum;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/Calendar$CalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/Calendar$CalType;

.field public static final enum BUDDHIST:Landroid/icu/util/Calendar$CalType;

.field public static final enum CHINESE:Landroid/icu/util/Calendar$CalType;

.field public static final enum COPTIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum DANGI:Landroid/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

.field public static final enum GREGORIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum HEBREW:Landroid/icu/util/Calendar$CalType;

.field public static final enum INDIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISO8601:Landroid/icu/util/Calendar$CalType;

.field public static final enum JAPANESE:Landroid/icu/util/Calendar$CalType;

.field public static final enum PERSIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum ROC:Landroid/icu/util/Calendar$CalType;

.field public static final enum UNKNOWN:Landroid/icu/util/Calendar$CalType;


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 1779
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@7
    const-string/jumbo v1, "GREGORIAN"

    #@a
    const-string/jumbo v2, "gregorian"

    #@d
    invoke-direct {v0, v1, v4, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@10
    sput-object v0, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    #@12
    .line 1780
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@14
    const-string/jumbo v1, "ISO8601"

    #@17
    const-string/jumbo v2, "iso8601"

    #@1a
    invoke-direct {v0, v1, v5, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1d
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISO8601:Landroid/icu/util/Calendar$CalType;

    #@1f
    .line 1782
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@21
    const-string/jumbo v1, "BUDDHIST"

    #@24
    const-string/jumbo v2, "buddhist"

    #@27
    invoke-direct {v0, v1, v6, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@2a
    sput-object v0, Landroid/icu/util/Calendar$CalType;->BUDDHIST:Landroid/icu/util/Calendar$CalType;

    #@2c
    .line 1783
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@2e
    const-string/jumbo v1, "CHINESE"

    #@31
    const-string/jumbo v2, "chinese"

    #@34
    invoke-direct {v0, v1, v7, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@37
    sput-object v0, Landroid/icu/util/Calendar$CalType;->CHINESE:Landroid/icu/util/Calendar$CalType;

    #@39
    .line 1784
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@3b
    const-string/jumbo v1, "COPTIC"

    #@3e
    const-string/jumbo v2, "coptic"

    #@41
    invoke-direct {v0, v1, v8, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@44
    sput-object v0, Landroid/icu/util/Calendar$CalType;->COPTIC:Landroid/icu/util/Calendar$CalType;

    #@46
    .line 1785
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@48
    const-string/jumbo v1, "DANGI"

    #@4b
    const-string/jumbo v2, "dangi"

    #@4e
    const/4 v3, 0x5

    #@4f
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@52
    sput-object v0, Landroid/icu/util/Calendar$CalType;->DANGI:Landroid/icu/util/Calendar$CalType;

    #@54
    .line 1786
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@56
    const-string/jumbo v1, "ETHIOPIC"

    #@59
    const-string/jumbo v2, "ethiopic"

    #@5c
    const/4 v3, 0x6

    #@5d
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@60
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ETHIOPIC:Landroid/icu/util/Calendar$CalType;

    #@62
    .line 1787
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@64
    const-string/jumbo v1, "ETHIOPIC_AMETE_ALEM"

    #@67
    const-string/jumbo v2, "ethiopic-amete-alem"

    #@6a
    const/4 v3, 0x7

    #@6b
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@6e
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

    #@70
    .line 1788
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@72
    const-string/jumbo v1, "HEBREW"

    #@75
    const-string/jumbo v2, "hebrew"

    #@78
    const/16 v3, 0x8

    #@7a
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@7d
    sput-object v0, Landroid/icu/util/Calendar$CalType;->HEBREW:Landroid/icu/util/Calendar$CalType;

    #@7f
    .line 1789
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@81
    const-string/jumbo v1, "INDIAN"

    #@84
    const-string/jumbo v2, "indian"

    #@87
    const/16 v3, 0x9

    #@89
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@8c
    sput-object v0, Landroid/icu/util/Calendar$CalType;->INDIAN:Landroid/icu/util/Calendar$CalType;

    #@8e
    .line 1790
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@90
    const-string/jumbo v1, "ISLAMIC"

    #@93
    const-string/jumbo v2, "islamic"

    #@96
    const/16 v3, 0xa

    #@98
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@9b
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC:Landroid/icu/util/Calendar$CalType;

    #@9d
    .line 1791
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@9f
    const-string/jumbo v1, "ISLAMIC_CIVIL"

    #@a2
    const-string/jumbo v2, "islamic-civil"

    #@a5
    const/16 v3, 0xb

    #@a7
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@aa
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

    #@ac
    .line 1792
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@ae
    const-string/jumbo v1, "ISLAMIC_RGSA"

    #@b1
    const-string/jumbo v2, "islamic-rgsa"

    #@b4
    const/16 v3, 0xc

    #@b6
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@b9
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

    #@bb
    .line 1793
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@bd
    const-string/jumbo v1, "ISLAMIC_TBLA"

    #@c0
    const-string/jumbo v2, "islamic-tbla"

    #@c3
    const/16 v3, 0xd

    #@c5
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@c8
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

    #@ca
    .line 1794
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@cc
    const-string/jumbo v1, "ISLAMIC_UMALQURA"

    #@cf
    const-string/jumbo v2, "islamic-umalqura"

    #@d2
    const/16 v3, 0xe

    #@d4
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@d7
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

    #@d9
    .line 1795
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@db
    const-string/jumbo v1, "JAPANESE"

    #@de
    const-string/jumbo v2, "japanese"

    #@e1
    const/16 v3, 0xf

    #@e3
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@e6
    sput-object v0, Landroid/icu/util/Calendar$CalType;->JAPANESE:Landroid/icu/util/Calendar$CalType;

    #@e8
    .line 1796
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@ea
    const-string/jumbo v1, "PERSIAN"

    #@ed
    const-string/jumbo v2, "persian"

    #@f0
    const/16 v3, 0x10

    #@f2
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@f5
    sput-object v0, Landroid/icu/util/Calendar$CalType;->PERSIAN:Landroid/icu/util/Calendar$CalType;

    #@f7
    .line 1797
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@f9
    const-string/jumbo v1, "ROC"

    #@fc
    const-string/jumbo v2, "roc"

    #@ff
    const/16 v3, 0x11

    #@101
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@104
    sput-object v0, Landroid/icu/util/Calendar$CalType;->ROC:Landroid/icu/util/Calendar$CalType;

    #@106
    .line 1799
    new-instance v0, Landroid/icu/util/Calendar$CalType;

    #@108
    const-string/jumbo v1, "UNKNOWN"

    #@10b
    const-string/jumbo v2, "unknown"

    #@10e
    const/16 v3, 0x12

    #@110
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@113
    sput-object v0, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    #@115
    .line 1778
    const/16 v0, 0x13

    #@117
    new-array v0, v0, [Landroid/icu/util/Calendar$CalType;

    #@119
    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    #@11b
    aput-object v1, v0, v4

    #@11d
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISO8601:Landroid/icu/util/Calendar$CalType;

    #@11f
    aput-object v1, v0, v5

    #@121
    sget-object v1, Landroid/icu/util/Calendar$CalType;->BUDDHIST:Landroid/icu/util/Calendar$CalType;

    #@123
    aput-object v1, v0, v6

    #@125
    sget-object v1, Landroid/icu/util/Calendar$CalType;->CHINESE:Landroid/icu/util/Calendar$CalType;

    #@127
    aput-object v1, v0, v7

    #@129
    sget-object v1, Landroid/icu/util/Calendar$CalType;->COPTIC:Landroid/icu/util/Calendar$CalType;

    #@12b
    aput-object v1, v0, v8

    #@12d
    sget-object v1, Landroid/icu/util/Calendar$CalType;->DANGI:Landroid/icu/util/Calendar$CalType;

    #@12f
    const/4 v2, 0x5

    #@130
    aput-object v1, v0, v2

    #@132
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC:Landroid/icu/util/Calendar$CalType;

    #@134
    const/4 v2, 0x6

    #@135
    aput-object v1, v0, v2

    #@137
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

    #@139
    const/4 v2, 0x7

    #@13a
    aput-object v1, v0, v2

    #@13c
    sget-object v1, Landroid/icu/util/Calendar$CalType;->HEBREW:Landroid/icu/util/Calendar$CalType;

    #@13e
    const/16 v2, 0x8

    #@140
    aput-object v1, v0, v2

    #@142
    sget-object v1, Landroid/icu/util/Calendar$CalType;->INDIAN:Landroid/icu/util/Calendar$CalType;

    #@144
    const/16 v2, 0x9

    #@146
    aput-object v1, v0, v2

    #@148
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC:Landroid/icu/util/Calendar$CalType;

    #@14a
    const/16 v2, 0xa

    #@14c
    aput-object v1, v0, v2

    #@14e
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

    #@150
    const/16 v2, 0xb

    #@152
    aput-object v1, v0, v2

    #@154
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

    #@156
    const/16 v2, 0xc

    #@158
    aput-object v1, v0, v2

    #@15a
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

    #@15c
    const/16 v2, 0xd

    #@15e
    aput-object v1, v0, v2

    #@160
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

    #@162
    const/16 v2, 0xe

    #@164
    aput-object v1, v0, v2

    #@166
    sget-object v1, Landroid/icu/util/Calendar$CalType;->JAPANESE:Landroid/icu/util/Calendar$CalType;

    #@168
    const/16 v2, 0xf

    #@16a
    aput-object v1, v0, v2

    #@16c
    sget-object v1, Landroid/icu/util/Calendar$CalType;->PERSIAN:Landroid/icu/util/Calendar$CalType;

    #@16e
    const/16 v2, 0x10

    #@170
    aput-object v1, v0, v2

    #@172
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ROC:Landroid/icu/util/Calendar$CalType;

    #@174
    const/16 v2, 0x11

    #@176
    aput-object v1, v0, v2

    #@178
    sget-object v1, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    #@17a
    const/16 v2, 0x12

    #@17c
    aput-object v1, v0, v2

    #@17e
    sput-object v0, Landroid/icu/util/Calendar$CalType;->$VALUES:[Landroid/icu/util/Calendar$CalType;

    #@180
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1803
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 1804
    iput-object p3, p0, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    #@5
    .line 1803
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/Calendar$CalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1778
    const-class v0, Landroid/icu/util/Calendar$CalType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/Calendar$CalType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/Calendar$CalType;
    .locals 1

    #@0
    .prologue
    .line 1778
    sget-object v0, Landroid/icu/util/Calendar$CalType;->$VALUES:[Landroid/icu/util/Calendar$CalType;

    #@2
    return-object v0
.end method
