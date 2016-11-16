.class public enum Ljava/awt/font/NumericShaper$Range;
.super Ljava/lang/Enum;
.source "NumericShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/font/NumericShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/font/NumericShaper$Range$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/awt/font/NumericShaper$Range;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/awt/font/NumericShaper$Range;

.field public static final enum ARABIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum BALINESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum BENGALI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum CHAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum EUROPEAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum GUJARATI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum GURMUKHI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum JAVANESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum KANNADA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum KHMER:Ljava/awt/font/NumericShaper$Range;

.field public static final enum LAO:Ljava/awt/font/NumericShaper$Range;

.field public static final enum LEPCHA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum LIMBU:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MALAYALAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MYANMAR:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum NKO:Ljava/awt/font/NumericShaper$Range;

.field public static final enum OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum ORIYA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum SUNDANESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TAMIL:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TELUGU:Ljava/awt/font/NumericShaper$Range;

.field public static final enum THAI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TIBETAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum VAI:Ljava/awt/font/NumericShaper$Range;


# instance fields
.field private final base:I

.field private final end:I

.field private final start:I


# direct methods
.method static synthetic -get0(Ljava/awt/font/NumericShaper$Range;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/awt/font/NumericShaper$Range;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/awt/font/NumericShaper$Range;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/awt/font/NumericShaper$Range;I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/awt/font/NumericShaper$Range;->inRange(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/awt/font/NumericShaper$Range;)I
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/awt/font/NumericShaper$Range;->getDigitBase()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/awt/font/NumericShaper$Range;)I
    .locals 1
    .param p0, "script"    # Ljava/awt/font/NumericShaper$Range;

    #@0
    .prologue
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->toRangeIndex(Ljava/awt/font/NumericShaper$Range;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/util/Set;)I
    .locals 1
    .param p0, "ranges"    # Ljava/util/Set;

    #@0
    .prologue
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->toRangeMask(Ljava/util/Set;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(I)Ljava/awt/font/NumericShaper$Range;
    .locals 1
    .param p0, "index"    # I

    #@0
    .prologue
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->indexToRange(I)Ljava/awt/font/NumericShaper$Range;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(I)Ljava/util/Set;
    .locals 1
    .param p0, "mask"    # I

    #@0
    .prologue
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->maskToRangeSet(I)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/16 v11, 0x1c50

    #@3
    const/16 v10, 0x1000

    #@5
    const/16 v9, 0xb80

    #@7
    const/4 v2, 0x0

    #@8
    .line 163
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    #@a
    const-string/jumbo v1, "EUROPEAN"

    #@d
    .line 168
    const/16 v3, 0x30

    #@f
    const/16 v5, 0x300

    #@11
    move v4, v2

    #@12
    .line 163
    invoke-direct/range {v0 .. v5}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@15
    .line 168
    sput-object v0, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    #@17
    .line 169
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@19
    const-string/jumbo v4, "ARABIC"

    #@1c
    .line 172
    const/16 v6, 0x660

    #@1e
    const/16 v7, 0x600

    #@20
    const/16 v8, 0x780

    #@22
    move v5, v12

    #@23
    .line 169
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@26
    .line 172
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    #@28
    .line 173
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@2a
    const-string/jumbo v4, "EASTERN_ARABIC"

    #@2d
    .line 176
    const/16 v6, 0x6f0

    #@2f
    const/16 v7, 0x600

    #@31
    const/16 v8, 0x780

    #@33
    .line 173
    const/4 v5, 0x2

    #@34
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@37
    .line 176
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    #@39
    .line 177
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@3b
    const-string/jumbo v4, "DEVANAGARI"

    #@3e
    .line 180
    const/16 v6, 0x966

    #@40
    const/16 v7, 0x900

    #@42
    const/16 v8, 0x980

    #@44
    .line 177
    const/4 v5, 0x3

    #@45
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@48
    .line 180
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

    #@4a
    .line 181
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@4c
    const-string/jumbo v4, "BENGALI"

    #@4f
    .line 184
    const/16 v6, 0x9e6

    #@51
    const/16 v7, 0x980

    #@53
    const/16 v8, 0xa00

    #@55
    .line 181
    const/4 v5, 0x4

    #@56
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@59
    .line 184
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->BENGALI:Ljava/awt/font/NumericShaper$Range;

    #@5b
    .line 185
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@5d
    const-string/jumbo v4, "GURMUKHI"

    #@60
    .line 188
    const/16 v6, 0xa66

    #@62
    const/16 v7, 0xa00

    #@64
    const/16 v8, 0xa80

    #@66
    .line 185
    const/4 v5, 0x5

    #@67
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@6a
    .line 188
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->GURMUKHI:Ljava/awt/font/NumericShaper$Range;

    #@6c
    .line 189
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@6e
    const-string/jumbo v4, "GUJARATI"

    #@71
    .line 192
    const/16 v6, 0xae6

    #@73
    const/16 v7, 0xb00

    #@75
    .line 189
    const/4 v5, 0x6

    #@76
    move v8, v9

    #@77
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@7a
    .line 192
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->GUJARATI:Ljava/awt/font/NumericShaper$Range;

    #@7c
    .line 193
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@7e
    const-string/jumbo v4, "ORIYA"

    #@81
    .line 196
    const/16 v6, 0xb66

    #@83
    const/16 v7, 0xb00

    #@85
    .line 193
    const/4 v5, 0x7

    #@86
    move v8, v9

    #@87
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@8a
    .line 196
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->ORIYA:Ljava/awt/font/NumericShaper$Range;

    #@8c
    .line 197
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@8e
    const-string/jumbo v4, "TAMIL"

    #@91
    .line 200
    const/16 v6, 0xbe6

    #@93
    const/16 v8, 0xc00

    #@95
    .line 197
    const/16 v5, 0x8

    #@97
    move v7, v9

    #@98
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@9b
    .line 200
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TAMIL:Ljava/awt/font/NumericShaper$Range;

    #@9d
    .line 201
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@9f
    const-string/jumbo v4, "TELUGU"

    #@a2
    .line 204
    const/16 v6, 0xc66

    #@a4
    const/16 v7, 0xc00

    #@a6
    const/16 v8, 0xc80

    #@a8
    .line 201
    const/16 v5, 0x9

    #@aa
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@ad
    .line 204
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TELUGU:Ljava/awt/font/NumericShaper$Range;

    #@af
    .line 205
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@b1
    const-string/jumbo v4, "KANNADA"

    #@b4
    .line 208
    const/16 v6, 0xce6

    #@b6
    const/16 v7, 0xc80

    #@b8
    const/16 v8, 0xd00

    #@ba
    .line 205
    const/16 v5, 0xa

    #@bc
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@bf
    .line 208
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->KANNADA:Ljava/awt/font/NumericShaper$Range;

    #@c1
    .line 209
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@c3
    const-string/jumbo v4, "MALAYALAM"

    #@c6
    .line 212
    const/16 v6, 0xd66

    #@c8
    const/16 v7, 0xd00

    #@ca
    const/16 v8, 0xd80

    #@cc
    .line 209
    const/16 v5, 0xb

    #@ce
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@d1
    .line 212
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MALAYALAM:Ljava/awt/font/NumericShaper$Range;

    #@d3
    .line 213
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@d5
    const-string/jumbo v4, "THAI"

    #@d8
    .line 216
    const/16 v6, 0xe50

    #@da
    const/16 v7, 0xe00

    #@dc
    const/16 v8, 0xe80

    #@de
    .line 213
    const/16 v5, 0xc

    #@e0
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@e3
    .line 216
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->THAI:Ljava/awt/font/NumericShaper$Range;

    #@e5
    .line 217
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@e7
    const-string/jumbo v4, "LAO"

    #@ea
    .line 220
    const/16 v6, 0xed0

    #@ec
    const/16 v7, 0xe80

    #@ee
    const/16 v8, 0xf00

    #@f0
    .line 217
    const/16 v5, 0xd

    #@f2
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@f5
    .line 220
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->LAO:Ljava/awt/font/NumericShaper$Range;

    #@f7
    .line 221
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@f9
    const-string/jumbo v4, "TIBETAN"

    #@fc
    .line 224
    const/16 v6, 0xf20

    #@fe
    const/16 v7, 0xf00

    #@100
    .line 221
    const/16 v5, 0xe

    #@102
    move v8, v10

    #@103
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@106
    .line 224
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TIBETAN:Ljava/awt/font/NumericShaper$Range;

    #@108
    .line 225
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@10a
    const-string/jumbo v4, "MYANMAR"

    #@10d
    .line 228
    const/16 v6, 0x1040

    #@10f
    const/16 v8, 0x1080

    #@111
    .line 225
    const/16 v5, 0xf

    #@113
    move v7, v10

    #@114
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@117
    .line 228
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MYANMAR:Ljava/awt/font/NumericShaper$Range;

    #@119
    .line 229
    new-instance v3, Ljava/awt/font/NumericShaper$Range$1;

    #@11b
    const-string/jumbo v4, "ETHIOPIC"

    #@11e
    .line 234
    const/16 v6, 0x1369

    #@120
    const/16 v7, 0x1200

    #@122
    const/16 v8, 0x1380

    #@124
    .line 229
    const/16 v5, 0x10

    #@126
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range$1;-><init>(Ljava/lang/String;IIII)V

    #@129
    .line 234
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

    #@12b
    .line 238
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@12d
    const-string/jumbo v4, "KHMER"

    #@130
    .line 241
    const/16 v6, 0x17e0

    #@132
    const/16 v7, 0x1780

    #@134
    const/16 v8, 0x1800

    #@136
    .line 238
    const/16 v5, 0x11

    #@138
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@13b
    .line 241
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->KHMER:Ljava/awt/font/NumericShaper$Range;

    #@13d
    .line 242
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@13f
    const-string/jumbo v4, "MONGOLIAN"

    #@142
    .line 245
    const/16 v6, 0x1810

    #@144
    const/16 v7, 0x1800

    #@146
    const/16 v8, 0x1900

    #@148
    .line 242
    const/16 v5, 0x12

    #@14a
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@14d
    .line 245
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

    #@14f
    .line 246
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@151
    const-string/jumbo v4, "NKO"

    #@154
    .line 252
    const/16 v6, 0x7c0

    #@156
    const/16 v7, 0x7c0

    #@158
    const/16 v8, 0x800

    #@15a
    .line 246
    const/16 v5, 0x13

    #@15c
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@15f
    .line 252
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->NKO:Ljava/awt/font/NumericShaper$Range;

    #@161
    .line 253
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@163
    const-string/jumbo v4, "MYANMAR_SHAN"

    #@166
    .line 256
    const/16 v6, 0x1090

    #@168
    const/16 v8, 0x10a0

    #@16a
    .line 253
    const/16 v5, 0x14

    #@16c
    move v7, v10

    #@16d
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@170
    .line 256
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

    #@172
    .line 257
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@174
    const-string/jumbo v4, "LIMBU"

    #@177
    .line 260
    const/16 v6, 0x1946

    #@179
    const/16 v7, 0x1900

    #@17b
    const/16 v8, 0x1950

    #@17d
    .line 257
    const/16 v5, 0x15

    #@17f
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@182
    .line 260
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->LIMBU:Ljava/awt/font/NumericShaper$Range;

    #@184
    .line 261
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@186
    const-string/jumbo v4, "NEW_TAI_LUE"

    #@189
    .line 264
    const/16 v6, 0x19d0

    #@18b
    const/16 v7, 0x1980

    #@18d
    const/16 v8, 0x19e0

    #@18f
    .line 261
    const/16 v5, 0x16

    #@191
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@194
    .line 264
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

    #@196
    .line 265
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@198
    const-string/jumbo v4, "BALINESE"

    #@19b
    .line 268
    const/16 v6, 0x1b50

    #@19d
    const/16 v7, 0x1b00

    #@19f
    const/16 v8, 0x1b80

    #@1a1
    .line 265
    const/16 v5, 0x17

    #@1a3
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@1a6
    .line 268
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->BALINESE:Ljava/awt/font/NumericShaper$Range;

    #@1a8
    .line 269
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@1aa
    const-string/jumbo v4, "SUNDANESE"

    #@1ad
    .line 272
    const/16 v6, 0x1bb0

    #@1af
    const/16 v7, 0x1b80

    #@1b1
    const/16 v8, 0x1bc0

    #@1b3
    .line 269
    const/16 v5, 0x18

    #@1b5
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@1b8
    .line 272
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->SUNDANESE:Ljava/awt/font/NumericShaper$Range;

    #@1ba
    .line 273
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@1bc
    const-string/jumbo v4, "LEPCHA"

    #@1bf
    .line 276
    const/16 v6, 0x1c40

    #@1c1
    const/16 v7, 0x1c00

    #@1c3
    .line 273
    const/16 v5, 0x19

    #@1c5
    move v8, v11

    #@1c6
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@1c9
    .line 276
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->LEPCHA:Ljava/awt/font/NumericShaper$Range;

    #@1cb
    .line 277
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@1cd
    const-string/jumbo v4, "OL_CHIKI"

    #@1d0
    .line 280
    const/16 v8, 0x1c80

    #@1d2
    .line 277
    const/16 v5, 0x1a

    #@1d4
    move v6, v11

    #@1d5
    move v7, v11

    #@1d6
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@1d9
    .line 280
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

    #@1db
    .line 281
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@1dd
    const-string/jumbo v4, "VAI"

    #@1e0
    .line 284
    const v6, 0xa620

    #@1e3
    const v7, 0xa500

    #@1e6
    const v8, 0xa640

    #@1e9
    .line 281
    const/16 v5, 0x1b

    #@1eb
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@1ee
    .line 284
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->VAI:Ljava/awt/font/NumericShaper$Range;

    #@1f0
    .line 285
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@1f2
    const-string/jumbo v4, "SAURASHTRA"

    #@1f5
    .line 288
    const v6, 0xa8d0

    #@1f8
    const v7, 0xa880

    #@1fb
    const v8, 0xa8e0

    #@1fe
    .line 285
    const/16 v5, 0x1c

    #@200
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@203
    .line 288
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

    #@205
    .line 289
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@207
    const-string/jumbo v4, "KAYAH_LI"

    #@20a
    .line 292
    const v6, 0xa900

    #@20d
    const v7, 0xa900

    #@210
    const v8, 0xa930

    #@213
    .line 289
    const/16 v5, 0x1d

    #@215
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@218
    .line 292
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

    #@21a
    .line 293
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@21c
    const-string/jumbo v4, "CHAM"

    #@21f
    .line 296
    const v6, 0xaa50

    #@222
    const v7, 0xaa00

    #@225
    const v8, 0xaa60

    #@228
    .line 293
    const/16 v5, 0x1e

    #@22a
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@22d
    .line 296
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->CHAM:Ljava/awt/font/NumericShaper$Range;

    #@22f
    .line 297
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@231
    const-string/jumbo v4, "TAI_THAM_HORA"

    #@234
    .line 300
    const/16 v6, 0x1a80

    #@236
    const/16 v7, 0x1a20

    #@238
    const/16 v8, 0x1ab0

    #@23a
    .line 297
    const/16 v5, 0x1f

    #@23c
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@23f
    .line 300
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    #@241
    .line 301
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@243
    const-string/jumbo v4, "TAI_THAM_THAM"

    #@246
    .line 304
    const/16 v6, 0x1a90

    #@248
    const/16 v7, 0x1a20

    #@24a
    const/16 v8, 0x1ab0

    #@24c
    .line 301
    const/16 v5, 0x20

    #@24e
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@251
    .line 304
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    #@253
    .line 305
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@255
    const-string/jumbo v4, "JAVANESE"

    #@258
    .line 308
    const v6, 0xa9d0

    #@25b
    const v7, 0xa980

    #@25e
    const v8, 0xa9e0

    #@261
    .line 305
    const/16 v5, 0x21

    #@263
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@266
    .line 308
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->JAVANESE:Ljava/awt/font/NumericShaper$Range;

    #@268
    .line 309
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    #@26a
    const-string/jumbo v4, "MEETEI_MAYEK"

    #@26d
    .line 312
    const v6, 0xabf0

    #@270
    const v7, 0xabc0

    #@273
    const v8, 0xac00

    #@276
    .line 309
    const/16 v5, 0x22

    #@278
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@27b
    .line 312
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

    #@27d
    .line 162
    const/16 v0, 0x23

    #@27f
    new-array v0, v0, [Ljava/awt/font/NumericShaper$Range;

    #@281
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    #@283
    aput-object v1, v0, v2

    #@285
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    #@287
    aput-object v1, v0, v12

    #@289
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    #@28b
    const/4 v2, 0x2

    #@28c
    aput-object v1, v0, v2

    #@28e
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

    #@290
    const/4 v2, 0x3

    #@291
    aput-object v1, v0, v2

    #@293
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->BENGALI:Ljava/awt/font/NumericShaper$Range;

    #@295
    const/4 v2, 0x4

    #@296
    aput-object v1, v0, v2

    #@298
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->GURMUKHI:Ljava/awt/font/NumericShaper$Range;

    #@29a
    const/4 v2, 0x5

    #@29b
    aput-object v1, v0, v2

    #@29d
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->GUJARATI:Ljava/awt/font/NumericShaper$Range;

    #@29f
    const/4 v2, 0x6

    #@2a0
    aput-object v1, v0, v2

    #@2a2
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ORIYA:Ljava/awt/font/NumericShaper$Range;

    #@2a4
    const/4 v2, 0x7

    #@2a5
    aput-object v1, v0, v2

    #@2a7
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAMIL:Ljava/awt/font/NumericShaper$Range;

    #@2a9
    const/16 v2, 0x8

    #@2ab
    aput-object v1, v0, v2

    #@2ad
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TELUGU:Ljava/awt/font/NumericShaper$Range;

    #@2af
    const/16 v2, 0x9

    #@2b1
    aput-object v1, v0, v2

    #@2b3
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->KANNADA:Ljava/awt/font/NumericShaper$Range;

    #@2b5
    const/16 v2, 0xa

    #@2b7
    aput-object v1, v0, v2

    #@2b9
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MALAYALAM:Ljava/awt/font/NumericShaper$Range;

    #@2bb
    const/16 v2, 0xb

    #@2bd
    aput-object v1, v0, v2

    #@2bf
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->THAI:Ljava/awt/font/NumericShaper$Range;

    #@2c1
    const/16 v2, 0xc

    #@2c3
    aput-object v1, v0, v2

    #@2c5
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->LAO:Ljava/awt/font/NumericShaper$Range;

    #@2c7
    const/16 v2, 0xd

    #@2c9
    aput-object v1, v0, v2

    #@2cb
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TIBETAN:Ljava/awt/font/NumericShaper$Range;

    #@2cd
    const/16 v2, 0xe

    #@2cf
    aput-object v1, v0, v2

    #@2d1
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MYANMAR:Ljava/awt/font/NumericShaper$Range;

    #@2d3
    const/16 v2, 0xf

    #@2d5
    aput-object v1, v0, v2

    #@2d7
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

    #@2d9
    const/16 v2, 0x10

    #@2db
    aput-object v1, v0, v2

    #@2dd
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->KHMER:Ljava/awt/font/NumericShaper$Range;

    #@2df
    const/16 v2, 0x11

    #@2e1
    aput-object v1, v0, v2

    #@2e3
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

    #@2e5
    const/16 v2, 0x12

    #@2e7
    aput-object v1, v0, v2

    #@2e9
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->NKO:Ljava/awt/font/NumericShaper$Range;

    #@2eb
    const/16 v2, 0x13

    #@2ed
    aput-object v1, v0, v2

    #@2ef
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

    #@2f1
    const/16 v2, 0x14

    #@2f3
    aput-object v1, v0, v2

    #@2f5
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->LIMBU:Ljava/awt/font/NumericShaper$Range;

    #@2f7
    const/16 v2, 0x15

    #@2f9
    aput-object v1, v0, v2

    #@2fb
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

    #@2fd
    const/16 v2, 0x16

    #@2ff
    aput-object v1, v0, v2

    #@301
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->BALINESE:Ljava/awt/font/NumericShaper$Range;

    #@303
    const/16 v2, 0x17

    #@305
    aput-object v1, v0, v2

    #@307
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->SUNDANESE:Ljava/awt/font/NumericShaper$Range;

    #@309
    const/16 v2, 0x18

    #@30b
    aput-object v1, v0, v2

    #@30d
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->LEPCHA:Ljava/awt/font/NumericShaper$Range;

    #@30f
    const/16 v2, 0x19

    #@311
    aput-object v1, v0, v2

    #@313
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

    #@315
    const/16 v2, 0x1a

    #@317
    aput-object v1, v0, v2

    #@319
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->VAI:Ljava/awt/font/NumericShaper$Range;

    #@31b
    const/16 v2, 0x1b

    #@31d
    aput-object v1, v0, v2

    #@31f
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

    #@321
    const/16 v2, 0x1c

    #@323
    aput-object v1, v0, v2

    #@325
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

    #@327
    const/16 v2, 0x1d

    #@329
    aput-object v1, v0, v2

    #@32b
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->CHAM:Ljava/awt/font/NumericShaper$Range;

    #@32d
    const/16 v2, 0x1e

    #@32f
    aput-object v1, v0, v2

    #@331
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    #@333
    const/16 v2, 0x1f

    #@335
    aput-object v1, v0, v2

    #@337
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    #@339
    const/16 v2, 0x20

    #@33b
    aput-object v1, v0, v2

    #@33d
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->JAVANESE:Ljava/awt/font/NumericShaper$Range;

    #@33f
    const/16 v2, 0x21

    #@341
    aput-object v1, v0, v2

    #@343
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

    #@345
    const/16 v2, 0x22

    #@347
    aput-object v1, v0, v2

    #@349
    sput-object v0, Ljava/awt/font/NumericShaper$Range;->$VALUES:[Ljava/awt/font/NumericShaper$Range;

    #@34b
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 1
    .param p3, "base"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    #@0
    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 352
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x30

    #@9
    sub-int v0, p3, v0

    #@b
    iput v0, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    #@d
    .line 353
    iput p4, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    #@f
    .line 354
    iput p5, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    #@11
    .line 351
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILjava/awt/font/NumericShaper$Range;)V
    .locals 0
    .param p3, "base"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    #@3
    return-void
.end method

.method private getDigitBase()I
    .locals 1

    #@0
    .prologue
    .line 358
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    #@2
    return v0
.end method

.method private inRange(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 366
    iget v1, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    #@3
    if-gt v1, p1, :cond_0

    #@5
    iget v1, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    #@7
    if-ge p1, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private static indexToRange(I)Ljava/awt/font/NumericShaper$Range;
    .locals 1
    .param p0, "index"    # I

    #@0
    .prologue
    .line 320
    const/16 v0, 0x13

    #@2
    if-ge p0, v0, :cond_0

    #@4
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    #@7
    move-result-object v0

    #@8
    aget-object v0, v0, p0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static maskToRangeSet(I)Ljava/util/Set;
    .locals 4
    .param p0, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 335
    const-class v3, Ljava/awt/font/NumericShaper$Range;

    #@2
    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@5
    move-result-object v2

    #@6
    .line 336
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    #@9
    move-result-object v0

    #@a
    .line 337
    .local v0, "a":[Ljava/awt/font/NumericShaper$Range;
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    const/16 v3, 0x13

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 338
    const/4 v3, 0x1

    #@10
    shl-int/2addr v3, v1

    #@11
    and-int/2addr v3, p0

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 339
    aget-object v3, v0, v1

    #@16
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19
    .line 337
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 342
    :cond_1
    return-object v2
.end method

.method private static toRangeIndex(Ljava/awt/font/NumericShaper$Range;)I
    .locals 2
    .param p0, "script"    # Ljava/awt/font/NumericShaper$Range;

    #@0
    .prologue
    .line 315
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    #@3
    move-result v0

    #@4
    .line 316
    .local v0, "index":I
    const/16 v1, 0x13

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .end local v0    # "index":I
    :goto_0
    return v0

    #@9
    .restart local v0    # "index":I
    :cond_0
    const/4 v0, -0x1

    #@a
    goto :goto_0
.end method

.method private static toRangeMask(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 324
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    const/4 v1, 0x0

    #@1
    .line 325
    .local v1, "m":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v3

    #@5
    .local v3, "range$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/awt/font/NumericShaper$Range;

    #@11
    .line 326
    .local v2, "range":Ljava/awt/font/NumericShaper$Range;
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    #@14
    move-result v0

    #@15
    .line 327
    .local v0, "index":I
    const/16 v4, 0x13

    #@17
    if-ge v0, v4, :cond_0

    #@19
    .line 328
    const/4 v4, 0x1

    #@1a
    shl-int/2addr v4, v0

    #@1b
    or-int/2addr v1, v4

    #@1c
    goto :goto_0

    #@1d
    .line 331
    .end local v0    # "index":I
    .end local v2    # "range":Ljava/awt/font/NumericShaper$Range;
    :cond_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/awt/font/NumericShaper$Range;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    const-class v0, Ljava/awt/font/NumericShaper$Range;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/awt/font/NumericShaper$Range;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/awt/font/NumericShaper$Range;
    .locals 1

    #@0
    .prologue
    .line 162
    sget-object v0, Ljava/awt/font/NumericShaper$Range;->$VALUES:[Ljava/awt/font/NumericShaper$Range;

    #@2
    return-object v0
.end method


# virtual methods
.method getNumericBase()C
    .locals 1

    #@0
    .prologue
    .line 362
    const/4 v0, 0x0

    #@1
    return v0
.end method
