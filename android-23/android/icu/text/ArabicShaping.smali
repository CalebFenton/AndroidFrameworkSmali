.class public final Landroid/icu/text/ArabicShaping;
.super Ljava/lang/Object;
.source "ArabicShaping.java"


# static fields
.field private static final ALEFTYPE:I = 0x20

.field private static final DESHAPE_MODE:I = 0x1

.field public static final DIGITS_AN2EN:I = 0x40

.field public static final DIGITS_EN2AN:I = 0x20

.field public static final DIGITS_EN2AN_INIT_AL:I = 0x80

.field public static final DIGITS_EN2AN_INIT_LR:I = 0x60

.field public static final DIGITS_MASK:I = 0xe0

.field public static final DIGITS_NOOP:I = 0x0

.field public static final DIGIT_TYPE_AN:I = 0x0

.field public static final DIGIT_TYPE_AN_EXTENDED:I = 0x100

.field public static final DIGIT_TYPE_MASK:I = 0x100

.field private static final HAMZA06_CHAR:C = '\u0621'

.field private static final HAMZAFE_CHAR:C = '\ufe80'

.field private static final IRRELEVANT:I = 0x4

.field public static final LAMALEF_AUTO:I = 0x10000

.field public static final LAMALEF_BEGIN:I = 0x3

.field public static final LAMALEF_END:I = 0x2

.field public static final LAMALEF_MASK:I = 0x10003

.field public static final LAMALEF_NEAR:I = 0x1

.field public static final LAMALEF_RESIZE:I = 0x0

.field private static final LAMALEF_SPACE_SUB:C = '\uffff'

.field private static final LAMTYPE:I = 0x10

.field private static final LAM_CHAR:C = '\u0644'

.field public static final LENGTH_FIXED_SPACES_AT_BEGINNING:I = 0x3

.field public static final LENGTH_FIXED_SPACES_AT_END:I = 0x2

.field public static final LENGTH_FIXED_SPACES_NEAR:I = 0x1

.field public static final LENGTH_GROW_SHRINK:I = 0x0

.field public static final LENGTH_MASK:I = 0x10003

.field public static final LETTERS_MASK:I = 0x18

.field public static final LETTERS_NOOP:I = 0x0

.field public static final LETTERS_SHAPE:I = 0x8

.field public static final LETTERS_SHAPE_TASHKEEL_ISOLATED:I = 0x18

.field public static final LETTERS_UNSHAPE:I = 0x10

.field private static final LINKL:I = 0x2

.field private static final LINKR:I = 0x1

.field private static final LINK_MASK:I = 0x3

.field private static final NEW_TAIL_CHAR:C = '\ufe73'

.field private static final OLD_TAIL_CHAR:C = '\u200b'

.field public static final SEEN_MASK:I = 0x700000

.field public static final SEEN_TWOCELL_NEAR:I = 0x200000

.field private static final SHADDA06_CHAR:C = '\u0651'

.field private static final SHADDA_CHAR:C = '\ufe7c'

.field private static final SHADDA_TATWEEL_CHAR:C = '\ufe7d'

.field private static final SHAPE_MODE:I = 0x0

.field public static final SHAPE_TAIL_NEW_UNICODE:I = 0x8000000

.field public static final SHAPE_TAIL_TYPE_MASK:I = 0x8000000

.field public static final SPACES_RELATIVE_TO_TEXT_BEGIN_END:I = 0x4000000

.field public static final SPACES_RELATIVE_TO_TEXT_MASK:I = 0x4000000

.field private static final SPACE_CHAR:C = ' '

.field public static final TASHKEEL_BEGIN:I = 0x40000

.field public static final TASHKEEL_END:I = 0x60000

.field public static final TASHKEEL_MASK:I = 0xe0000

.field public static final TASHKEEL_REPLACE_BY_TATWEEL:I = 0xc0000

.field public static final TASHKEEL_RESIZE:I = 0x80000

.field private static final TASHKEEL_SPACE_SUB:C = '\ufffe'

.field private static final TATWEEL_CHAR:C = '\u0640'

.field public static final TEXT_DIRECTION_LOGICAL:I = 0x0

.field public static final TEXT_DIRECTION_MASK:I = 0x4

.field public static final TEXT_DIRECTION_VISUAL_LTR:I = 0x4

.field public static final TEXT_DIRECTION_VISUAL_RTL:I = 0x0

.field public static final YEHHAMZA_MASK:I = 0x3800000

.field public static final YEHHAMZA_TWOCELL_NEAR:I = 0x1000000

.field private static final YEH_HAMZAFE_CHAR:C = '\ufe89'

.field private static final YEH_HAMZA_CHAR:C = '\u0626'

.field private static final araLink:[I

.field private static convertFEto06:[I

.field private static final convertNormalizedLamAlef:[C

.field private static final irrelevantPos:[I

.field private static final presLink:[I

.field private static final shapeTable:[[[I

.field private static final tailFamilyIsolatedFinal:[I

.field private static final tashkeelMedial:[I

.field private static final yehHamzaToYeh:[C


# instance fields
.field private isLogical:Z

.field private final options:I

.field private spacesRelativeToTextBeginEnd:Z

.field private tailChar:C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 663
    const/16 v0, 0x8

    #@7
    new-array v0, v0, [I

    #@9
    fill-array-data v0, :array_0

    #@c
    sput-object v0, Landroid/icu/text/ArabicShaping;->irrelevantPos:[I

    #@e
    .line 680
    const/16 v0, 0xe

    #@10
    new-array v0, v0, [I

    #@12
    fill-array-data v0, :array_1

    #@15
    sput-object v0, Landroid/icu/text/ArabicShaping;->tailFamilyIsolatedFinal:[I

    #@17
    .line 697
    const/16 v0, 0x10

    #@19
    new-array v0, v0, [I

    #@1b
    fill-array-data v0, :array_2

    #@1e
    sput-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    #@20
    .line 717
    new-array v0, v5, [C

    #@22
    fill-array-data v0, :array_3

    #@25
    .line 716
    sput-object v0, Landroid/icu/text/ArabicShaping;->yehHamzaToYeh:[C

    #@27
    .line 722
    new-array v0, v7, [C

    #@29
    fill-array-data v0, :array_4

    #@2c
    sput-object v0, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    #@2e
    .line 729
    const/16 v0, 0xb2

    #@30
    new-array v0, v0, [I

    #@32
    fill-array-data v0, :array_5

    #@35
    sput-object v0, Landroid/icu/text/ArabicShaping;->araLink:[I

    #@37
    .line 807
    const/16 v0, 0x8d

    #@39
    new-array v0, v0, [I

    #@3b
    fill-array-data v0, :array_6

    #@3e
    sput-object v0, Landroid/icu/text/ArabicShaping;->presLink:[I

    #@40
    .line 848
    const/16 v0, 0x8d

    #@42
    new-array v0, v0, [I

    #@44
    fill-array-data v0, :array_7

    #@47
    sput-object v0, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    #@49
    .line 861
    new-array v0, v7, [[[I

    #@4b
    .line 862
    new-array v1, v7, [[I

    #@4d
    filled-new-array {v3, v3, v3, v3}, [I

    #@50
    move-result-object v2

    #@51
    aput-object v2, v1, v3

    #@53
    filled-new-array {v3, v3, v3, v3}, [I

    #@56
    move-result-object v2

    #@57
    aput-object v2, v1, v4

    #@59
    filled-new-array {v3, v4, v3, v6}, [I

    #@5c
    move-result-object v2

    #@5d
    aput-object v2, v1, v5

    #@5f
    filled-new-array {v3, v4, v3, v4}, [I

    #@62
    move-result-object v2

    #@63
    aput-object v2, v1, v6

    #@65
    aput-object v1, v0, v3

    #@67
    .line 863
    new-array v1, v7, [[I

    #@69
    filled-new-array {v3, v3, v5, v5}, [I

    #@6c
    move-result-object v2

    #@6d
    aput-object v2, v1, v3

    #@6f
    filled-new-array {v3, v3, v4, v5}, [I

    #@72
    move-result-object v2

    #@73
    aput-object v2, v1, v4

    #@75
    filled-new-array {v3, v4, v4, v5}, [I

    #@78
    move-result-object v2

    #@79
    aput-object v2, v1, v5

    #@7b
    filled-new-array {v3, v4, v4, v6}, [I

    #@7e
    move-result-object v2

    #@7f
    aput-object v2, v1, v6

    #@81
    aput-object v1, v0, v4

    #@83
    .line 864
    new-array v1, v7, [[I

    #@85
    filled-new-array {v3, v3, v3, v3}, [I

    #@88
    move-result-object v2

    #@89
    aput-object v2, v1, v3

    #@8b
    filled-new-array {v3, v3, v3, v3}, [I

    #@8e
    move-result-object v2

    #@8f
    aput-object v2, v1, v4

    #@91
    filled-new-array {v3, v4, v3, v6}, [I

    #@94
    move-result-object v2

    #@95
    aput-object v2, v1, v5

    #@97
    filled-new-array {v3, v4, v3, v6}, [I

    #@9a
    move-result-object v2

    #@9b
    aput-object v2, v1, v6

    #@9d
    aput-object v1, v0, v5

    #@9f
    .line 865
    new-array v1, v7, [[I

    #@a1
    filled-new-array {v3, v3, v4, v5}, [I

    #@a4
    move-result-object v2

    #@a5
    aput-object v2, v1, v3

    #@a7
    filled-new-array {v3, v3, v4, v5}, [I

    #@aa
    move-result-object v2

    #@ab
    aput-object v2, v1, v4

    #@ad
    filled-new-array {v3, v4, v4, v5}, [I

    #@b0
    move-result-object v2

    #@b1
    aput-object v2, v1, v5

    #@b3
    filled-new-array {v3, v4, v4, v6}, [I

    #@b6
    move-result-object v2

    #@b7
    aput-object v2, v1, v6

    #@b9
    aput-object v1, v0, v6

    #@bb
    .line 861
    sput-object v0, Landroid/icu/text/ArabicShaping;->shapeTable:[[[I

    #@bd
    .line 55
    return-void

    #@be
    .line 663
    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    #@d2
    .line 680
    :array_1
    .array-data 4
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
    .end array-data

    #@f2
    .line 697
    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    #@116
    .line 717
    :array_3
    .array-data 2
        -0x111s
        -0x110s
    .end array-data

    #@11c
    .line 722
    :array_4
    .array-data 2
        0x622s
        0x623s
        0x625s
        0x627s
    .end array-data

    #@124
    .line 729
    :array_5
    .array-data 4
        0x1121
        0x1321
        0x1501
        0x1721
        0x1903
        0x1d21
        0x1f03
        0x2301
        0x2503
        0x2903
        0x2d03
        0x3103
        0x3503
        0x3901
        0x3b01
        0x3d01
        0x3f01
        0x4103
        0x4503
        0x4903
        0x4d03
        0x5103
        0x5503
        0x5903
        0x5d03
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x6103
        0x6503
        0x6903
        0x6d13
        0x7103
        0x7503
        0x7903
        0x7d01
        0x7f01
        0x8103
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8501
        0x8701
        0x8901
        0x8b01
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x21
        0x21
        0x0
        0x21
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
    .end array-data

    #@28c
    .line 807
    :array_6
    .array-data 4
        0x3
        0x3
        0x3
        0x0
        0x3
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x0
        0x20
        0x21
        0x20
        0x21
        0x0
        0x1
        0x20
        0x21
        0x0
        0x2
        0x3
        0x1
        0x20
        0x21
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x10
        0x12
        0x13
        0x11
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    #@3aa
    .line 848
    :array_7
    .array-data 4
        0x64b
        0x64b
        0x64c
        0x64c
        0x64d
        0x64d
        0x64e
        0x64e
        0x64f
        0x64f
        0x650
        0x650
        0x651
        0x651
        0x652
        0x652
        0x621
        0x622
        0x622
        0x623
        0x623
        0x624
        0x624
        0x625
        0x625
        0x626
        0x626
        0x626
        0x626
        0x627
        0x627
        0x628
        0x628
        0x628
        0x628
        0x629
        0x629
        0x62a
        0x62a
        0x62a
        0x62a
        0x62b
        0x62b
        0x62b
        0x62b
        0x62c
        0x62c
        0x62c
        0x62c
        0x62d
        0x62d
        0x62d
        0x62d
        0x62e
        0x62e
        0x62e
        0x62e
        0x62f
        0x62f
        0x630
        0x630
        0x631
        0x631
        0x632
        0x632
        0x633
        0x633
        0x633
        0x633
        0x634
        0x634
        0x634
        0x634
        0x635
        0x635
        0x635
        0x635
        0x636
        0x636
        0x636
        0x636
        0x637
        0x637
        0x637
        0x637
        0x638
        0x638
        0x638
        0x638
        0x639
        0x639
        0x639
        0x639
        0x63a
        0x63a
        0x63a
        0x63a
        0x641
        0x641
        0x641
        0x641
        0x642
        0x642
        0x642
        0x642
        0x643
        0x643
        0x643
        0x643
        0x644
        0x644
        0x644
        0x644
        0x645
        0x645
        0x645
        0x645
        0x646
        0x646
        0x646
        0x646
        0x647
        0x647
        0x647
        0x647
        0x648
        0x648
        0x649
        0x649
        0x64a
        0x64a
        0x64a
        0x64a
        0x65c
        0x65c
        0x65d
        0x65d
        0x65e
        0x65e
        0x65f
        0x65f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "options"    # I

    #@0
    .prologue
    const/high16 v5, 0x8000000

    #@2
    const/high16 v4, 0x4000000

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 188
    iput p1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@b
    .line 189
    and-int/lit16 v0, p1, 0xe0

    #@d
    const/16 v3, 0x80

    #@f
    if-le v0, v3, :cond_0

    #@11
    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "bad DIGITS options"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 193
    :cond_0
    and-int/lit8 v0, p1, 0x4

    #@1c
    if-nez v0, :cond_1

    #@1e
    move v0, v1

    #@1f
    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    #@21
    .line 195
    and-int v0, p1, v4

    #@23
    if-ne v0, v4, :cond_2

    #@25
    :goto_1
    iput-boolean v1, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    #@27
    .line 196
    and-int v0, p1, v5

    #@29
    if-ne v0, v5, :cond_3

    #@2b
    .line 197
    const v0, 0xfe73

    #@2e
    iput-char v0, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    #@30
    .line 187
    :goto_2
    return-void

    #@31
    :cond_1
    move v0, v2

    #@32
    .line 193
    goto :goto_0

    #@33
    :cond_2
    move v1, v2

    #@34
    .line 195
    goto :goto_1

    #@35
    .line 199
    :cond_3
    const/16 v0, 0x200b

    #@37
    iput-char v0, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    #@39
    goto :goto_2
.end method

.method private calculateSize([CII)I
    .locals 5
    .param p1, "source"    # [C
    .param p2, "sourceStart"    # I
    .param p3, "sourceLength"    # I

    #@0
    .prologue
    const/16 v4, 0x644

    #@2
    .line 1152
    move v0, p3

    #@3
    .line 1154
    .local v0, "destSize":I
    iget v3, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@5
    and-int/lit8 v3, v3, 0x18

    #@7
    sparse-switch v3, :sswitch_data_0

    #@a
    .line 1184
    :cond_0
    return v0

    #@b
    .line 1157
    :sswitch_0
    iget-boolean v3, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 1158
    move v2, p2

    #@10
    .local v2, "i":I
    add-int v3, p2, p3

    #@12
    add-int/lit8 v1, v3, -0x1

    #@14
    .local v1, "e":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@16
    .line 1159
    aget-char v3, p1, v2

    #@18
    if-ne v3, v4, :cond_1

    #@1a
    add-int/lit8 v3, v2, 0x1

    #@1c
    aget-char v3, p1, v3

    #@1e
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isAlefChar(C)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_2

    #@24
    :cond_1
    aget-char v3, p1, v2

    #@26
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isTashkeelCharFE(C)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_3

    #@2c
    .line 1160
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@2e
    .line 1158
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1164
    .end local v1    # "e":I
    .end local v2    # "i":I
    :cond_4
    add-int/lit8 v2, p2, 0x1

    #@33
    .restart local v2    # "i":I
    add-int v1, p2, p3

    #@35
    .restart local v1    # "e":I
    :goto_1
    if-ge v2, v1, :cond_0

    #@37
    .line 1165
    aget-char v3, p1, v2

    #@39
    if-ne v3, v4, :cond_5

    #@3b
    add-int/lit8 v3, v2, -0x1

    #@3d
    aget-char v3, p1, v3

    #@3f
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isAlefChar(C)Z

    #@42
    move-result v3

    #@43
    if-nez v3, :cond_6

    #@45
    :cond_5
    aget-char v3, p1, v2

    #@47
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isTashkeelCharFE(C)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_7

    #@4d
    .line 1166
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@4f
    .line 1164
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_1

    #@52
    .line 1173
    .end local v1    # "e":I
    .end local v2    # "i":I
    :sswitch_1
    move v2, p2

    #@53
    .restart local v2    # "i":I
    add-int v1, p2, p3

    #@55
    .restart local v1    # "e":I
    :goto_2
    if-ge v2, v1, :cond_0

    #@57
    .line 1174
    aget-char v3, p1, v2

    #@59
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_8

    #@5f
    .line 1175
    add-int/lit8 v0, v0, 0x1

    #@61
    .line 1173
    :cond_8
    add-int/lit8 v2, v2, 0x1

    #@63
    goto :goto_2

    #@64
    .line 1154
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method private static changeLamAlef(C)C
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 928
    packed-switch p0, :pswitch_data_0

    #@3
    .line 933
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 929
    :pswitch_1
    const/16 v0, 0x65c

    #@7
    return v0

    #@8
    .line 930
    :pswitch_2
    const/16 v0, 0x65d

    #@a
    return v0

    #@b
    .line 931
    :pswitch_3
    const/16 v0, 0x65e

    #@d
    return v0

    #@e
    .line 932
    :pswitch_4
    const/16 v0, 0x65f

    #@10
    return v0

    #@11
    .line 928
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x622
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static countSpaceSub([CIC)I
    .locals 3
    .param p0, "dest"    # [C
    .param p1, "length"    # I
    .param p2, "subChar"    # C

    #@0
    .prologue
    .line 1193
    const/4 v1, 0x0

    #@1
    .line 1194
    .local v1, "i":I
    const/4 v0, 0x0

    #@2
    .line 1195
    .local v0, "count":I
    :goto_0
    if-ge v1, p1, :cond_1

    #@4
    .line 1196
    aget-char v2, p0, v1

    #@6
    if-ne v2, p2, :cond_0

    #@8
    .line 1197
    add-int/lit8 v0, v0, 0x1

    #@a
    .line 1199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1201
    :cond_1
    return v0
.end method

.method private static countSpacesLeft([CII)I
    .locals 4
    .param p0, "dest"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 988
    move v1, p1

    #@1
    .local v1, "i":I
    add-int v0, p1, p2

    #@3
    .local v0, "e":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@5
    .line 989
    aget-char v2, p0, v1

    #@7
    const/16 v3, 0x20

    #@9
    if-eq v2, v3, :cond_0

    #@b
    .line 990
    sub-int v2, v1, p1

    #@d
    return v2

    #@e
    .line 988
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 993
    :cond_1
    return p2
.end method

.method private static countSpacesRight([CII)I
    .locals 3
    .param p0, "dest"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 1000
    add-int v0, p1, p2

    #@2
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@4
    if-lt v0, p1, :cond_1

    #@6
    .line 1001
    aget-char v1, p0, v0

    #@8
    const/16 v2, 0x20

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 1002
    add-int v1, p1, p2

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    sub-int/2addr v1, v0

    #@11
    return v1

    #@12
    .line 1005
    :cond_1
    return p2
.end method

.method private deShapeUnicode([CIII)I
    .locals 6
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "destSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1822
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/ArabicShaping;->deshapeNormalize([CII)I

    #@3
    move-result v4

    #@4
    .line 1825
    .local v4, "lamalef_count":I
    if-eqz v4, :cond_0

    #@6
    .line 1827
    const/4 v5, 0x1

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move v3, p3

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ArabicShaping;->expandCompositChar([CIIII)I

    #@e
    move-result p4

    #@f
    .line 1832
    :goto_0
    return p4

    #@10
    .line 1829
    :cond_0
    move p4, p3

    #@11
    goto :goto_0
.end method

.method private deshapeNormalize([CII)I
    .locals 11
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const v10, 0xfe70

    #@3
    const/16 v9, 0x20

    #@5
    const/4 v8, 0x1

    #@6
    .line 1631
    const/4 v3, 0x0

    #@7
    .line 1632
    .local v3, "lacount":I
    const/4 v5, 0x0

    #@8
    .line 1633
    .local v5, "yehHamzaComposeEnabled":I
    const/4 v4, 0x0

    #@9
    .line 1635
    .local v4, "seenComposeEnabled":I
    iget v6, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@b
    const/high16 v7, 0x3800000

    #@d
    and-int/2addr v6, v7

    #@e
    const/high16 v7, 0x1000000

    #@10
    if-ne v6, v7, :cond_2

    #@12
    const/4 v5, 0x1

    #@13
    .line 1636
    :goto_0
    iget v6, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@15
    const/high16 v7, 0x700000

    #@17
    and-int/2addr v6, v7

    #@18
    const/high16 v7, 0x200000

    #@1a
    if-ne v6, v7, :cond_3

    #@1c
    const/4 v4, 0x1

    #@1d
    .line 1638
    :goto_1
    move v2, p2

    #@1e
    .local v2, "i":I
    add-int v1, v2, p3

    #@20
    .local v1, "e":I
    :goto_2
    if-ge v2, v1, :cond_7

    #@22
    .line 1639
    aget-char v0, p1, v2

    #@24
    .line 1641
    .local v0, "ch":C
    if-ne v5, v8, :cond_4

    #@26
    const/16 v6, 0x621

    #@28
    if-eq v0, v6, :cond_0

    #@2a
    const v6, 0xfe80

    #@2d
    if-ne v0, v6, :cond_4

    #@2f
    .line 1642
    :cond_0
    add-int/lit8 v6, p3, -0x1

    #@31
    if-ge v2, v6, :cond_4

    #@33
    add-int/lit8 v6, v2, 0x1

    #@35
    aget-char v6, p1, v6

    #@37
    invoke-static {v6}, Landroid/icu/text/ArabicShaping;->isAlefMaksouraChar(C)Z

    #@3a
    move-result v6

    #@3b
    .line 1641
    if-eqz v6, :cond_4

    #@3d
    .line 1643
    aput-char v9, p1, v2

    #@3f
    .line 1644
    add-int/lit8 v6, v2, 0x1

    #@41
    const/16 v7, 0x626

    #@43
    aput-char v7, p1, v6

    #@45
    .line 1638
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_2

    #@48
    .line 1635
    .end local v0    # "ch":C
    .end local v1    # "e":I
    .end local v2    # "i":I
    :cond_2
    const/4 v5, 0x0

    #@49
    goto :goto_0

    #@4a
    .line 1636
    :cond_3
    const/4 v4, 0x0

    #@4b
    goto :goto_1

    #@4c
    .line 1645
    .restart local v0    # "ch":C
    .restart local v1    # "e":I
    .restart local v2    # "i":I
    :cond_4
    if-ne v4, v8, :cond_5

    #@4e
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isTailChar(C)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_5

    #@54
    add-int/lit8 v6, p3, -0x1

    #@56
    if-ge v2, v6, :cond_5

    #@58
    .line 1646
    add-int/lit8 v6, v2, 0x1

    #@5a
    aget-char v6, p1, v6

    #@5c
    invoke-static {v6}, Landroid/icu/text/ArabicShaping;->isSeenTailFamilyChar(C)I

    #@5f
    move-result v6

    #@60
    if-ne v6, v8, :cond_5

    #@62
    .line 1647
    aput-char v9, p1, v2

    #@64
    goto :goto_3

    #@65
    .line 1649
    :cond_5
    if-lt v0, v10, :cond_1

    #@67
    const v6, 0xfefc

    #@6a
    if-gt v0, v6, :cond_1

    #@6c
    .line 1650
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    #@6f
    move-result v6

    #@70
    if-eqz v6, :cond_6

    #@72
    .line 1651
    add-int/lit8 v3, v3, 0x1

    #@74
    .line 1653
    :cond_6
    sget-object v6, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    #@76
    sub-int v7, v0, v10

    #@78
    aget v6, v6, v7

    #@7a
    int-to-char v6, v6

    #@7b
    aput-char v6, p1, v2

    #@7d
    goto :goto_3

    #@7e
    .line 1656
    .end local v0    # "ch":C
    :cond_7
    return v3
.end method

.method private expandCompositChar([CIIII)I
    .locals 15
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "lacount"    # I
    .param p5, "shapingMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1519
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@2
    const v2, 0x10003

    #@5
    and-int v9, v1, v2

    #@7
    .line 1520
    .local v9, "lenOptionsLamAlef":I
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@9
    const/high16 v2, 0x700000

    #@b
    and-int v10, v1, v2

    #@d
    .line 1521
    .local v10, "lenOptionsSeen":I
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@f
    const/high16 v2, 0x3800000

    #@11
    and-int v11, v1, v2

    #@13
    .line 1522
    .local v11, "lenOptionsYehHamza":I
    const/4 v13, 0x0

    #@14
    .line 1524
    .local v13, "spaceNotFound":Z
    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    #@16
    if-nez v1, :cond_0

    #@18
    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 1532
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@1d
    move/from16 v0, p5

    #@1f
    if-ne v0, v1, :cond_e

    #@21
    .line 1533
    const/high16 v1, 0x10000

    #@23
    if-ne v9, v1, :cond_7

    #@25
    .line 1534
    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1535
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    #@2c
    move-result v13

    #@2d
    .line 1536
    .local v13, "spaceNotFound":Z
    if-eqz v13, :cond_1

    #@2f
    .line 1537
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    #@32
    move-result v13

    #@33
    .line 1539
    :cond_1
    if-eqz v13, :cond_2

    #@35
    .line 1540
    const/4 v5, 0x0

    #@36
    const/4 v6, 0x0

    #@37
    const/4 v7, 0x1

    #@38
    move-object v1, p0

    #@39
    move-object/from16 v2, p1

    #@3b
    move/from16 v3, p2

    #@3d
    move/from16 v4, p3

    #@3f
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    #@42
    move-result v13

    #@43
    .line 1542
    :cond_2
    if-eqz v13, :cond_d

    #@45
    .line 1543
    new-instance v1, Landroid/icu/text/ArabicShapingException;

    #@47
    const-string/jumbo v2, "No spacefor lamalef"

    #@4a
    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1

    #@4e
    .line 1525
    .local v13, "spaceNotFound":Z
    :cond_3
    packed-switch v9, :pswitch_data_0

    #@51
    goto :goto_0

    #@52
    .line 1527
    :pswitch_0
    const/4 v9, 0x3

    #@53
    goto :goto_0

    #@54
    .line 1526
    :pswitch_1
    const/4 v9, 0x2

    #@55
    goto :goto_0

    #@56
    .line 1546
    :cond_4
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    #@59
    move-result v13

    #@5a
    .line 1547
    .local v13, "spaceNotFound":Z
    if-eqz v13, :cond_5

    #@5c
    .line 1548
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    #@5f
    move-result v13

    #@60
    .line 1550
    :cond_5
    if-eqz v13, :cond_6

    #@62
    .line 1551
    const/4 v5, 0x0

    #@63
    const/4 v6, 0x0

    #@64
    const/4 v7, 0x1

    #@65
    move-object v1, p0

    #@66
    move-object/from16 v2, p1

    #@68
    move/from16 v3, p2

    #@6a
    move/from16 v4, p3

    #@6c
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    #@6f
    move-result v13

    #@70
    .line 1553
    :cond_6
    if-eqz v13, :cond_d

    #@72
    .line 1554
    new-instance v1, Landroid/icu/text/ArabicShapingException;

    #@74
    const-string/jumbo v2, "No spacefor lamalef"

    #@77
    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v1

    #@7b
    .line 1557
    .local v13, "spaceNotFound":Z
    :cond_7
    const/4 v1, 0x2

    #@7c
    if-ne v9, v1, :cond_8

    #@7e
    .line 1558
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    #@81
    move-result v13

    #@82
    .line 1559
    .local v13, "spaceNotFound":Z
    if-eqz v13, :cond_d

    #@84
    .line 1560
    new-instance v1, Landroid/icu/text/ArabicShapingException;

    #@86
    const-string/jumbo v2, "No spacefor lamalef"

    #@89
    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v1

    #@8d
    .line 1562
    .local v13, "spaceNotFound":Z
    :cond_8
    const/4 v1, 0x3

    #@8e
    if-ne v9, v1, :cond_9

    #@90
    .line 1563
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    #@93
    move-result v13

    #@94
    .line 1564
    .local v13, "spaceNotFound":Z
    if-eqz v13, :cond_d

    #@96
    .line 1565
    new-instance v1, Landroid/icu/text/ArabicShapingException;

    #@98
    const-string/jumbo v2, "No spacefor lamalef"

    #@9b
    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v1

    #@9f
    .line 1567
    .local v13, "spaceNotFound":Z
    :cond_9
    const/4 v1, 0x1

    #@a0
    if-ne v9, v1, :cond_a

    #@a2
    .line 1568
    const/4 v5, 0x0

    #@a3
    const/4 v6, 0x0

    #@a4
    const/4 v7, 0x1

    #@a5
    move-object v1, p0

    #@a6
    move-object/from16 v2, p1

    #@a8
    move/from16 v3, p2

    #@aa
    move/from16 v4, p3

    #@ac
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    #@af
    move-result v13

    #@b0
    .line 1569
    .local v13, "spaceNotFound":Z
    if-eqz v13, :cond_d

    #@b2
    .line 1570
    new-instance v1, Landroid/icu/text/ArabicShapingException;

    #@b4
    const-string/jumbo v2, "No spacefor lamalef"

    #@b7
    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v1

    #@bb
    .line 1572
    .local v13, "spaceNotFound":Z
    :cond_a
    if-nez v9, :cond_d

    #@bd
    .line 1573
    add-int v12, p2, p3

    #@bf
    .local v12, "r":I
    add-int v14, v12, p4

    #@c1
    .local v14, "w":I
    :goto_1
    add-int/lit8 v12, v12, -0x1

    #@c3
    move/from16 v0, p2

    #@c5
    if-lt v12, v0, :cond_c

    #@c7
    .line 1574
    aget-char v8, p1, v12

    #@c9
    .line 1575
    .local v8, "ch":C
    invoke-static {v8}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    #@cc
    move-result v1

    #@cd
    if-eqz v1, :cond_b

    #@cf
    .line 1576
    add-int/lit8 v14, v14, -0x1

    #@d1
    const/16 v1, 0x644

    #@d3
    aput-char v1, p1, v14

    #@d5
    .line 1577
    add-int/lit8 v14, v14, -0x1

    #@d7
    sget-object v1, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    #@d9
    add-int/lit16 v2, v8, -0x65c

    #@db
    aget-char v1, v1, v2

    #@dd
    aput-char v1, p1, v14

    #@df
    goto :goto_1

    #@e0
    .line 1579
    :cond_b
    add-int/lit8 v14, v14, -0x1

    #@e2
    aput-char v8, p1, v14

    #@e4
    goto :goto_1

    #@e5
    .line 1582
    .end local v8    # "ch":C
    :cond_c
    add-int p3, p3, p4

    #@e7
    .line 1598
    .end local v12    # "r":I
    .end local v13    # "spaceNotFound":Z
    .end local v14    # "w":I
    :cond_d
    return p3

    #@e8
    .line 1585
    .restart local v13    # "spaceNotFound":Z
    :cond_e
    const/high16 v1, 0x200000

    #@ea
    if-ne v10, v1, :cond_f

    #@ec
    .line 1586
    const/4 v5, 0x0

    #@ed
    const/4 v6, 0x1

    #@ee
    const/4 v7, 0x0

    #@ef
    move-object v1, p0

    #@f0
    move-object/from16 v2, p1

    #@f2
    move/from16 v3, p2

    #@f4
    move/from16 v4, p3

    #@f6
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    #@f9
    move-result v13

    #@fa
    .line 1587
    .local v13, "spaceNotFound":Z
    if-eqz v13, :cond_f

    #@fc
    .line 1588
    new-instance v1, Landroid/icu/text/ArabicShapingException;

    #@fe
    const-string/jumbo v2, "No space for Seen tail expansion"

    #@101
    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@104
    throw v1

    #@105
    .line 1591
    .end local v13    # "spaceNotFound":Z
    :cond_f
    const/high16 v1, 0x1000000

    #@107
    if-ne v11, v1, :cond_d

    #@109
    .line 1592
    const/4 v5, 0x1

    #@10a
    const/4 v6, 0x0

    #@10b
    const/4 v7, 0x0

    #@10c
    move-object v1, p0

    #@10d
    move-object/from16 v2, p1

    #@10f
    move/from16 v3, p2

    #@111
    move/from16 v4, p3

    #@113
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    #@116
    move-result v13

    #@117
    .line 1593
    .restart local v13    # "spaceNotFound":Z
    if-eqz v13, :cond_d

    #@119
    .line 1594
    new-instance v1, Landroid/icu/text/ArabicShapingException;

    #@11b
    const-string/jumbo v2, "No space for YehHamza expansion"

    #@11e
    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@121
    throw v1

    #@122
    .line 1525
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private expandCompositCharAtBegin([CIII)Z
    .locals 6
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "lacount"    # I

    #@0
    .prologue
    .line 1403
    const/4 v2, 0x0

    #@1
    .line 1405
    .local v2, "spaceNotFound":Z
    invoke-static {p1, p2, p3}, Landroid/icu/text/ArabicShaping;->countSpacesRight([CII)I

    #@4
    move-result v4

    #@5
    if-le p4, v4, :cond_0

    #@7
    .line 1406
    const/4 v2, 0x1

    #@8
    .line 1407
    return v2

    #@9
    .line 1409
    :cond_0
    add-int v4, p2, p3

    #@b
    sub-int v1, v4, p4

    #@d
    .local v1, "r":I
    add-int v3, p2, p3

    #@f
    .local v3, "w":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@11
    if-lt v1, p2, :cond_2

    #@13
    .line 1410
    aget-char v0, p1, v1

    #@15
    .line 1411
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 1412
    add-int/lit8 v3, v3, -0x1

    #@1d
    const/16 v4, 0x644

    #@1f
    aput-char v4, p1, v3

    #@21
    .line 1413
    add-int/lit8 v3, v3, -0x1

    #@23
    sget-object v4, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    #@25
    add-int/lit16 v5, v0, -0x65c

    #@27
    aget-char v4, v4, v5

    #@29
    aput-char v4, p1, v3

    #@2b
    goto :goto_0

    #@2c
    .line 1415
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@2e
    aput-char v0, p1, v3

    #@30
    goto :goto_0

    #@31
    .line 1418
    .end local v0    # "ch":C
    :cond_2
    return v2
.end method

.method private expandCompositCharAtEnd([CIII)Z
    .locals 8
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "lacount"    # I

    #@0
    .prologue
    .line 1433
    const/4 v3, 0x0

    #@1
    .line 1435
    .local v3, "spaceNotFound":Z
    invoke-static {p1, p2, p3}, Landroid/icu/text/ArabicShaping;->countSpacesLeft([CII)I

    #@4
    move-result v6

    #@5
    if-le p4, v6, :cond_0

    #@7
    .line 1436
    const/4 v3, 0x1

    #@8
    .line 1437
    return v3

    #@9
    .line 1439
    :cond_0
    add-int v2, p2, p4

    #@b
    .local v2, "r":I
    move v4, p2

    #@c
    .local v4, "w":I
    add-int v1, p2, p3

    #@e
    .local v1, "e":I
    move v5, v4

    #@f
    .end local v4    # "w":I
    .local v5, "w":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@11
    .line 1440
    aget-char v0, p1, v2

    #@13
    .line 1441
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_1

    #@19
    .line 1442
    add-int/lit8 v4, v5, 0x1

    #@1b
    .end local v5    # "w":I
    .restart local v4    # "w":I
    sget-object v6, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    #@1d
    add-int/lit16 v7, v0, -0x65c

    #@1f
    aget-char v6, v6, v7

    #@21
    aput-char v6, p1, v5

    #@23
    .line 1443
    add-int/lit8 v5, v4, 0x1

    #@25
    .end local v4    # "w":I
    .restart local v5    # "w":I
    const/16 v6, 0x644

    #@27
    aput-char v6, p1, v4

    #@29
    move v4, v5

    #@2a
    .line 1439
    .end local v5    # "w":I
    .restart local v4    # "w":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2c
    move v5, v4

    #@2d
    .end local v4    # "w":I
    .restart local v5    # "w":I
    goto :goto_0

    #@2e
    .line 1445
    :cond_1
    add-int/lit8 v4, v5, 0x1

    #@30
    .end local v5    # "w":I
    .restart local v4    # "w":I
    aput-char v0, p1, v5

    #@32
    goto :goto_1

    #@33
    .line 1448
    .end local v0    # "ch":C
    .end local v4    # "w":I
    .restart local v5    # "w":I
    :cond_2
    return v3
.end method

.method private expandCompositCharAtNear([CIIIII)Z
    .locals 7
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "yehHamzaOption"    # I
    .param p5, "seenTailOption"    # I
    .param p6, "lamAlefOption"    # I

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    const/4 v5, 0x1

    #@3
    .line 1461
    const/4 v2, 0x0

    #@4
    .line 1465
    .local v2, "spaceNotFound":Z
    aget-char v3, p1, p2

    #@6
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1466
    const/4 v2, 0x1

    #@d
    .line 1467
    return v2

    #@e
    .line 1469
    :cond_0
    add-int v1, p2, p3

    #@10
    .local v1, "i":I
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@12
    if-lt v1, p2, :cond_7

    #@14
    .line 1470
    aget-char v0, p1, v1

    #@16
    .line 1471
    .local v0, "ch":C
    if-ne p6, v5, :cond_3

    #@18
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_3

    #@1e
    .line 1472
    if-le v1, p2, :cond_2

    #@20
    add-int/lit8 v3, v1, -0x1

    #@22
    aget-char v3, p1, v3

    #@24
    if-ne v3, v6, :cond_2

    #@26
    .line 1473
    const/16 v3, 0x644

    #@28
    aput-char v3, p1, v1

    #@2a
    .line 1474
    add-int/lit8 v1, v1, -0x1

    #@2c
    sget-object v3, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    #@2e
    add-int/lit16 v4, v0, -0x65c

    #@30
    aget-char v3, v3, v4

    #@32
    aput-char v3, p1, v1

    #@34
    goto :goto_0

    #@35
    .line 1476
    :cond_2
    const/4 v2, 0x1

    #@36
    .line 1477
    return v2

    #@37
    .line 1479
    :cond_3
    if-ne p5, v5, :cond_5

    #@39
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isSeenTailFamilyChar(C)I

    #@3c
    move-result v3

    #@3d
    if-ne v3, v5, :cond_5

    #@3f
    .line 1480
    if-le v1, p2, :cond_4

    #@41
    add-int/lit8 v3, v1, -0x1

    #@43
    aget-char v3, p1, v3

    #@45
    if-ne v3, v6, :cond_4

    #@47
    .line 1481
    add-int/lit8 v3, v1, -0x1

    #@49
    iget-char v4, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    #@4b
    aput-char v4, p1, v3

    #@4d
    goto :goto_0

    #@4e
    .line 1483
    :cond_4
    const/4 v2, 0x1

    #@4f
    .line 1484
    return v2

    #@50
    .line 1486
    :cond_5
    if-ne p4, v5, :cond_1

    #@52
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isYehHamzaChar(C)Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_1

    #@58
    .line 1488
    if-le v1, p2, :cond_6

    #@5a
    add-int/lit8 v3, v1, -0x1

    #@5c
    aget-char v3, p1, v3

    #@5e
    if-ne v3, v6, :cond_6

    #@60
    .line 1489
    sget-object v3, Landroid/icu/text/ArabicShaping;->yehHamzaToYeh:[C

    #@62
    const v4, 0xfe89

    #@65
    sub-int v4, v0, v4

    #@67
    aget-char v3, v3, v4

    #@69
    aput-char v3, p1, v1

    #@6b
    .line 1490
    add-int/lit8 v3, v1, -0x1

    #@6d
    const v4, 0xfe80

    #@70
    aput-char v4, p1, v3

    #@72
    goto :goto_0

    #@73
    .line 1492
    :cond_6
    const/4 v2, 0x1

    #@74
    .line 1493
    return v2

    #@75
    .line 1499
    .end local v0    # "ch":C
    :cond_7
    const/4 v3, 0x0

    #@76
    return v3
.end method

.method private static flipArray([CIII)I
    .locals 4
    .param p0, "dest"    # [C
    .param p1, "start"    # I
    .param p2, "e"    # I
    .param p3, "w"    # I

    #@0
    .prologue
    .line 1228
    if-le p3, p1, :cond_0

    #@2
    .line 1230
    move v0, p3

    #@3
    .line 1231
    .local v0, "r":I
    move p3, p1

    #@4
    move v1, v0

    #@5
    .end local v0    # "r":I
    .local v1, "r":I
    move v2, p3

    #@6
    .line 1232
    .end local p3    # "w":I
    .local v2, "w":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@8
    .line 1233
    add-int/lit8 p3, v2, 0x1

    #@a
    .end local v2    # "w":I
    .restart local p3    # "w":I
    add-int/lit8 v0, v1, 0x1

    #@c
    .end local v1    # "r":I
    .restart local v0    # "r":I
    aget-char v3, p0, v1

    #@e
    aput-char v3, p0, v2

    #@10
    move v1, v0

    #@11
    .end local v0    # "r":I
    .restart local v1    # "r":I
    move v2, p3

    #@12
    .end local p3    # "w":I
    .restart local v2    # "w":I
    goto :goto_0

    #@13
    .line 1236
    .end local v1    # "r":I
    .end local v2    # "w":I
    .restart local p3    # "w":I
    :cond_0
    move p3, p2

    #@14
    .line 1238
    :goto_1
    return p3

    #@15
    .end local p3    # "w":I
    .restart local v1    # "r":I
    .restart local v2    # "w":I
    :cond_1
    move p3, v2

    #@16
    .end local v2    # "w":I
    .restart local p3    # "w":I
    goto :goto_1
.end method

.method private static getLink(C)I
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const v1, 0xfe70

    #@3
    .line 967
    const/16 v0, 0x622

    #@5
    if-lt p0, v0, :cond_0

    #@7
    const/16 v0, 0x6d3

    #@9
    if-gt p0, v0, :cond_0

    #@b
    .line 968
    sget-object v0, Landroid/icu/text/ArabicShaping;->araLink:[I

    #@d
    add-int/lit16 v1, p0, -0x622

    #@f
    aget v0, v0, v1

    #@11
    return v0

    #@12
    .line 969
    :cond_0
    const/16 v0, 0x200d

    #@14
    if-ne p0, v0, :cond_1

    #@16
    .line 970
    const/4 v0, 0x3

    #@17
    return v0

    #@18
    .line 971
    :cond_1
    const/16 v0, 0x206d

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x206f

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    .line 972
    const/4 v0, 0x4

    #@21
    return v0

    #@22
    .line 973
    :cond_2
    if-lt p0, v1, :cond_3

    #@24
    const v0, 0xfefc

    #@27
    if-gt p0, v0, :cond_3

    #@29
    .line 974
    sget-object v0, Landroid/icu/text/ArabicShaping;->presLink:[I

    #@2b
    sub-int v1, p0, v1

    #@2d
    aget v0, v0, v1

    #@2f
    return v0

    #@30
    .line 976
    :cond_3
    const/4 v0, 0x0

    #@31
    return v0
.end method

.method private handleGeneratedSpaces([CII)I
    .locals 12
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 1286
    iget v10, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@2
    const v11, 0x10003

    #@5
    and-int v3, v10, v11

    #@7
    .line 1287
    .local v3, "lenOptionsLamAlef":I
    iget v10, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@9
    const/high16 v11, 0xe0000

    #@b
    and-int v4, v10, v11

    #@d
    .line 1288
    .local v4, "lenOptionsTashkeel":I
    const/4 v2, 0x0

    #@e
    .line 1289
    .local v2, "lamAlefOn":Z
    const/4 v5, 0x0

    #@f
    .line 1291
    .local v5, "tashkeelOn":Z
    iget-boolean v10, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    #@11
    if-eqz v10, :cond_2

    #@13
    const/4 v10, 0x0

    #@14
    :goto_0
    iget-boolean v11, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    #@16
    if-eqz v11, :cond_3

    #@18
    const/4 v11, 0x0

    #@19
    :goto_1
    and-int/2addr v10, v11

    #@1a
    if-eqz v10, :cond_0

    #@1c
    .line 1292
    packed-switch v3, :pswitch_data_0

    #@1f
    .line 1297
    :goto_2
    sparse-switch v4, :sswitch_data_0

    #@22
    .line 1305
    :cond_0
    :goto_3
    const/4 v10, 0x1

    #@23
    if-ne v3, v10, :cond_4

    #@25
    .line 1306
    move v1, p2

    #@26
    .local v1, "i":I
    add-int v0, v1, p3

    #@28
    .local v0, "e":I
    :goto_4
    if-ge v1, v0, :cond_13

    #@2a
    .line 1307
    aget-char v10, p1, v1

    #@2c
    const v11, 0xffff

    #@2f
    if-ne v10, v11, :cond_1

    #@31
    .line 1308
    const/16 v10, 0x20

    #@33
    aput-char v10, p1, v1

    #@35
    .line 1306
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_4

    #@38
    .line 1291
    .end local v0    # "e":I
    .end local v1    # "i":I
    :cond_2
    const/4 v10, 0x1

    #@39
    goto :goto_0

    #@3a
    :cond_3
    const/4 v11, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 1293
    :pswitch_0
    const/4 v3, 0x2

    #@3d
    goto :goto_2

    #@3e
    .line 1294
    :pswitch_1
    const/4 v3, 0x3

    #@3f
    goto :goto_2

    #@40
    .line 1298
    :sswitch_0
    const/high16 v4, 0x60000

    #@42
    goto :goto_3

    #@43
    .line 1299
    :sswitch_1
    const/high16 v4, 0x40000

    #@45
    goto :goto_3

    #@46
    .line 1314
    :cond_4
    add-int v0, p2, p3

    #@48
    .line 1315
    .restart local v0    # "e":I
    const v10, 0xffff

    #@4b
    invoke-static {p1, p3, v10}, Landroid/icu/text/ArabicShaping;->countSpaceSub([CIC)I

    #@4e
    move-result v6

    #@4f
    .line 1316
    .local v6, "wL":I
    const v10, 0xfffe

    #@52
    invoke-static {p1, p3, v10}, Landroid/icu/text/ArabicShaping;->countSpaceSub([CIC)I

    #@55
    move-result v8

    #@56
    .line 1318
    .local v8, "wT":I
    const/4 v10, 0x2

    #@57
    if-ne v3, v10, :cond_5

    #@59
    .line 1319
    const/4 v2, 0x1

    #@5a
    .line 1321
    :cond_5
    const/high16 v10, 0x60000

    #@5c
    if-ne v4, v10, :cond_6

    #@5e
    .line 1322
    const/4 v5, 0x1

    #@5f
    .line 1326
    :cond_6
    if-eqz v2, :cond_7

    #@61
    const/4 v10, 0x2

    #@62
    if-ne v3, v10, :cond_7

    #@64
    .line 1327
    const v10, 0xffff

    #@67
    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    #@6a
    .line 1328
    :goto_5
    if-le v6, p2, :cond_7

    #@6c
    .line 1329
    add-int/lit8 v6, v6, -0x1

    #@6e
    const/16 v10, 0x20

    #@70
    aput-char v10, p1, v6

    #@72
    goto :goto_5

    #@73
    .line 1333
    :cond_7
    if-eqz v5, :cond_8

    #@75
    const/high16 v10, 0x60000

    #@77
    if-ne v4, v10, :cond_8

    #@79
    .line 1334
    const v10, 0xfffe

    #@7c
    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    #@7f
    .line 1335
    :goto_6
    if-le v8, p2, :cond_8

    #@81
    .line 1336
    add-int/lit8 v8, v8, -0x1

    #@83
    const/16 v10, 0x20

    #@85
    aput-char v10, p1, v8

    #@87
    goto :goto_6

    #@88
    .line 1340
    :cond_8
    const/4 v2, 0x0

    #@89
    .line 1341
    const/4 v5, 0x0

    #@8a
    .line 1343
    if-nez v3, :cond_9

    #@8c
    .line 1344
    const/4 v2, 0x1

    #@8d
    .line 1346
    :cond_9
    const/high16 v10, 0x80000

    #@8f
    if-ne v4, v10, :cond_a

    #@91
    .line 1347
    const/4 v5, 0x1

    #@92
    .line 1350
    :cond_a
    if-eqz v2, :cond_b

    #@94
    if-nez v3, :cond_b

    #@96
    .line 1351
    const v10, 0xffff

    #@99
    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    #@9c
    .line 1352
    invoke-static {p1, p2, v0, v6}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    #@9f
    move-result v6

    #@a0
    .line 1353
    sub-int p3, v6, p2

    #@a2
    .line 1355
    :cond_b
    if-eqz v5, :cond_c

    #@a4
    const/high16 v10, 0x80000

    #@a6
    if-ne v4, v10, :cond_c

    #@a8
    .line 1356
    const v10, 0xfffe

    #@ab
    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    #@ae
    .line 1357
    invoke-static {p1, p2, v0, v8}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    #@b1
    move-result v8

    #@b2
    .line 1358
    sub-int p3, v8, p2

    #@b4
    .line 1361
    :cond_c
    const/4 v2, 0x0

    #@b5
    .line 1362
    const/4 v5, 0x0

    #@b6
    .line 1364
    const/4 v10, 0x3

    #@b7
    if-eq v3, v10, :cond_d

    #@b9
    .line 1365
    const/high16 v10, 0x10000

    #@bb
    if-ne v3, v10, :cond_e

    #@bd
    .line 1366
    :cond_d
    const/4 v2, 0x1

    #@be
    .line 1368
    :cond_e
    const/high16 v10, 0x40000

    #@c0
    if-ne v4, v10, :cond_f

    #@c2
    .line 1369
    const/4 v5, 0x1

    #@c3
    .line 1372
    :cond_f
    if-eqz v2, :cond_12

    #@c5
    const/4 v10, 0x3

    #@c6
    if-eq v3, v10, :cond_10

    #@c8
    .line 1373
    const/high16 v10, 0x10000

    #@ca
    if-ne v3, v10, :cond_12

    #@cc
    .line 1374
    :cond_10
    const v10, 0xffff

    #@cf
    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    #@d2
    .line 1375
    invoke-static {p1, p2, v0, v6}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    #@d5
    move-result v6

    #@d6
    move v7, v6

    #@d7
    .line 1376
    .end local v6    # "wL":I
    .local v7, "wL":I
    :goto_7
    if-ge v7, v0, :cond_11

    #@d9
    .line 1377
    add-int/lit8 v6, v7, 0x1

    #@db
    .end local v7    # "wL":I
    .restart local v6    # "wL":I
    const/16 v10, 0x20

    #@dd
    aput-char v10, p1, v7

    #@df
    move v7, v6

    #@e0
    .end local v6    # "wL":I
    .restart local v7    # "wL":I
    goto :goto_7

    #@e1
    :cond_11
    move v6, v7

    #@e2
    .line 1380
    .end local v7    # "wL":I
    .restart local v6    # "wL":I
    :cond_12
    if-eqz v5, :cond_13

    #@e4
    const/high16 v10, 0x40000

    #@e6
    if-ne v4, v10, :cond_13

    #@e8
    .line 1381
    const v10, 0xfffe

    #@eb
    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    #@ee
    .line 1382
    invoke-static {p1, p2, v0, v8}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    #@f1
    move-result v8

    #@f2
    move v9, v8

    #@f3
    .line 1383
    .end local v8    # "wT":I
    .local v9, "wT":I
    :goto_8
    if-ge v9, v0, :cond_13

    #@f5
    .line 1384
    add-int/lit8 v8, v9, 0x1

    #@f7
    .end local v9    # "wT":I
    .restart local v8    # "wT":I
    const/16 v10, 0x20

    #@f9
    aput-char v10, p1, v9

    #@fb
    move v9, v8

    #@fc
    .end local v8    # "wT":I
    .restart local v9    # "wT":I
    goto :goto_8

    #@fd
    .line 1389
    .end local v6    # "wL":I
    .end local v9    # "wT":I
    :cond_13
    return p3

    #@fe
    .line 1292
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@106
    .line 1297
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private static handleTashkeelWithTatweel([CI)I
    .locals 4
    .param p0, "dest"    # [C
    .param p1, "sourceLength"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1252
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    #@4
    .line 1253
    aget-char v1, p0, v0

    #@6
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelOnTatweelChar(C)I

    #@9
    move-result v1

    #@a
    if-ne v1, v3, :cond_1

    #@c
    .line 1254
    const/16 v1, 0x640

    #@e
    aput-char v1, p0, v0

    #@10
    .line 1252
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1255
    :cond_1
    aget-char v1, p0, v0

    #@15
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelOnTatweelChar(C)I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x2

    #@1a
    if-ne v1, v2, :cond_2

    #@1c
    .line 1256
    const v1, 0xfe7d

    #@1f
    aput-char v1, p0, v0

    #@21
    goto :goto_1

    #@22
    .line 1257
    :cond_2
    aget-char v1, p0, v0

    #@24
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isIsolatedTashkeelChar(C)I

    #@27
    move-result v1

    #@28
    if-ne v1, v3, :cond_0

    #@2a
    aget-char v1, p0, v0

    #@2c
    const v2, 0xfe7c

    #@2f
    if-eq v1, v2, :cond_0

    #@31
    .line 1258
    const/16 v1, 0x20

    #@33
    aput-char v1, p0, v0

    #@35
    goto :goto_1

    #@36
    .line 1261
    :cond_3
    return p1
.end method

.method private internalShape([CII[CII)I
    .locals 11
    .param p1, "source"    # [C
    .param p2, "sourceStart"    # I
    .param p3, "sourceLength"    # I
    .param p4, "dest"    # [C
    .param p5, "destStart"    # I
    .param p6, "destSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1842
    if-nez p3, :cond_0

    #@2
    .line 1843
    const/4 v1, 0x0

    #@3
    return v1

    #@4
    .line 1846
    :cond_0
    if-nez p6, :cond_2

    #@6
    .line 1847
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@8
    and-int/lit8 v1, v1, 0x18

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1848
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@e
    const v3, 0x10003

    #@11
    and-int/2addr v1, v3

    #@12
    if-nez v1, :cond_1

    #@14
    .line 1850
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/ArabicShaping;->calculateSize([CII)I

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 1852
    :cond_1
    return p3

    #@1a
    .line 1857
    :cond_2
    mul-int/lit8 v1, p3, 0x2

    #@1c
    new-array v2, v1, [C

    #@1e
    .line 1858
    .local v2, "temp":[C
    const/4 v1, 0x0

    #@1f
    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@22
    .line 1860
    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    #@24
    if-eqz v1, :cond_3

    #@26
    .line 1861
    const/4 v1, 0x0

    #@27
    invoke-static {v2, v1, p3}, Landroid/icu/text/ArabicShaping;->invertBuffer([CII)V

    #@2a
    .line 1864
    :cond_3
    move v4, p3

    #@2b
    .line 1866
    .local v4, "outputSize":I
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@2d
    and-int/lit8 v1, v1, 0x18

    #@2f
    sparse-switch v1, :sswitch_data_0

    #@32
    .line 1895
    :cond_4
    :goto_0
    move/from16 v0, p6

    #@34
    if-le v4, v0, :cond_6

    #@36
    .line 1896
    new-instance v1, Landroid/icu/text/ArabicShapingException;

    #@38
    const-string/jumbo v3, "not enough room for result data"

    #@3b
    invoke-direct {v1, v3}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1

    #@3f
    .line 1868
    :sswitch_0
    const/4 v3, 0x0

    #@40
    const/4 v6, 0x1

    #@41
    move-object v1, p0

    #@42
    move v4, p3

    #@43
    move/from16 v5, p6

    #@45
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    #@48
    .end local v4    # "outputSize":I
    move-result v4

    #@49
    .restart local v4    # "outputSize":I
    goto :goto_0

    #@4a
    .line 1872
    :sswitch_1
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@4c
    const/high16 v3, 0xe0000

    #@4e
    and-int/2addr v1, v3

    #@4f
    if-lez v1, :cond_5

    #@51
    .line 1873
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@53
    const/high16 v3, 0xe0000

    #@55
    and-int/2addr v1, v3

    #@56
    const/high16 v3, 0xc0000

    #@58
    if-eq v1, v3, :cond_5

    #@5a
    .line 1875
    const/4 v3, 0x0

    #@5b
    const/4 v6, 0x2

    #@5c
    move-object v1, p0

    #@5d
    move v4, p3

    #@5e
    move/from16 v5, p6

    #@60
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    #@63
    .end local v4    # "outputSize":I
    move-result v4

    #@64
    .restart local v4    # "outputSize":I
    goto :goto_0

    #@65
    .line 1878
    :cond_5
    const/4 v3, 0x0

    #@66
    const/4 v6, 0x0

    #@67
    move-object v1, p0

    #@68
    move v4, p3

    #@69
    move/from16 v5, p6

    #@6b
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    #@6e
    .end local v4    # "outputSize":I
    move-result v4

    #@6f
    .line 1881
    .restart local v4    # "outputSize":I
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@71
    const/high16 v3, 0xe0000

    #@73
    and-int/2addr v1, v3

    #@74
    const/high16 v3, 0xc0000

    #@76
    if-ne v1, v3, :cond_4

    #@78
    .line 1882
    invoke-static {v2, p3}, Landroid/icu/text/ArabicShaping;->handleTashkeelWithTatweel([CI)I

    #@7b
    move-result v4

    #@7c
    goto :goto_0

    #@7d
    .line 1888
    :sswitch_2
    const/4 v1, 0x0

    #@7e
    move/from16 v0, p6

    #@80
    invoke-direct {p0, v2, v1, p3, v0}, Landroid/icu/text/ArabicShaping;->deShapeUnicode([CIII)I

    #@83
    move-result v4

    #@84
    goto :goto_0

    #@85
    .line 1899
    :cond_6
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@87
    and-int/lit16 v1, v1, 0xe0

    #@89
    if-eqz v1, :cond_7

    #@8b
    .line 1900
    const/16 v5, 0x30

    #@8d
    .line 1901
    .local v5, "digitBase":C
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@8f
    and-int/lit16 v1, v1, 0x100

    #@91
    sparse-switch v1, :sswitch_data_1

    #@94
    .line 1914
    :goto_1
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@96
    and-int/lit16 v1, v1, 0xe0

    #@98
    sparse-switch v1, :sswitch_data_2

    #@9b
    .line 1953
    .end local v5    # "digitBase":C
    :cond_7
    :goto_2
    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    #@9d
    if-eqz v1, :cond_8

    #@9f
    .line 1954
    const/4 v1, 0x0

    #@a0
    invoke-static {v2, v1, v4}, Landroid/icu/text/ArabicShaping;->invertBuffer([CII)V

    #@a3
    .line 1957
    :cond_8
    const/4 v1, 0x0

    #@a4
    move/from16 v0, p5

    #@a6
    invoke-static {v2, v1, p4, v0, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@a9
    .line 1959
    return v4

    #@aa
    .line 1903
    .restart local v5    # "digitBase":C
    :sswitch_3
    const/16 v5, 0x660

    #@ac
    .line 1904
    goto :goto_1

    #@ad
    .line 1907
    :sswitch_4
    const/16 v5, 0x6f0

    #@af
    .line 1908
    goto :goto_1

    #@b0
    .line 1917
    :sswitch_5
    add-int/lit8 v8, v5, -0x30

    #@b2
    .line 1918
    .local v8, "digitDelta":I
    const/4 v10, 0x0

    #@b3
    .local v10, "i":I
    :goto_3
    if-ge v10, v4, :cond_7

    #@b5
    .line 1919
    aget-char v7, v2, v10

    #@b7
    .line 1920
    .local v7, "ch":C
    const/16 v1, 0x39

    #@b9
    if-gt v7, v1, :cond_9

    #@bb
    const/16 v1, 0x30

    #@bd
    if-lt v7, v1, :cond_9

    #@bf
    .line 1921
    aget-char v1, v2, v10

    #@c1
    add-int/2addr v1, v8

    #@c2
    int-to-char v1, v1

    #@c3
    aput-char v1, v2, v10

    #@c5
    .line 1918
    :cond_9
    add-int/lit8 v10, v10, 0x1

    #@c7
    goto :goto_3

    #@c8
    .line 1929
    .end local v7    # "ch":C
    .end local v8    # "digitDelta":I
    .end local v10    # "i":I
    :sswitch_6
    add-int/lit8 v1, v5, 0x9

    #@ca
    int-to-char v9, v1

    #@cb
    .line 1930
    .local v9, "digitTop":C
    rsub-int/lit8 v8, v5, 0x30

    #@cd
    .line 1931
    .restart local v8    # "digitDelta":I
    const/4 v10, 0x0

    #@ce
    .restart local v10    # "i":I
    :goto_4
    if-ge v10, v4, :cond_7

    #@d0
    .line 1932
    aget-char v7, v2, v10

    #@d2
    .line 1933
    .restart local v7    # "ch":C
    if-gt v7, v9, :cond_a

    #@d4
    if-lt v7, v5, :cond_a

    #@d6
    .line 1934
    aget-char v1, v2, v10

    #@d8
    add-int/2addr v1, v8

    #@d9
    int-to-char v1, v1

    #@da
    aput-char v1, v2, v10

    #@dc
    .line 1931
    :cond_a
    add-int/lit8 v10, v10, 0x1

    #@de
    goto :goto_4

    #@df
    .line 1941
    .end local v7    # "ch":C
    .end local v8    # "digitDelta":I
    .end local v9    # "digitTop":C
    .end local v10    # "i":I
    :sswitch_7
    const/4 v3, 0x0

    #@e0
    const/4 v6, 0x0

    #@e1
    move-object v1, p0

    #@e2
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeToArabicDigitsWithContext([CIICZ)V

    #@e5
    goto :goto_2

    #@e6
    .line 1945
    :sswitch_8
    const/4 v3, 0x0

    #@e7
    const/4 v6, 0x1

    #@e8
    move-object v1, p0

    #@e9
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeToArabicDigitsWithContext([CIICZ)V

    #@ec
    goto :goto_2

    #@ed
    .line 1866
    nop

    #@ee
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_0
    .end sparse-switch

    #@fc
    .line 1901
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch

    #@106
    .line 1914
    :sswitch_data_2
    .sparse-switch
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x60 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method private static invertBuffer([CII)V
    .locals 4
    .param p0, "buffer"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 912
    move v0, p1

    #@1
    .local v0, "i":I
    add-int v3, p1, p2

    #@3
    add-int/lit8 v1, v3, -0x1

    #@5
    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 913
    aget-char v2, p0, v0

    #@9
    .line 914
    .local v2, "temp":C
    aget-char v3, p0, v1

    #@b
    aput-char v3, p0, v0

    #@d
    .line 915
    aput-char v2, p0, v1

    #@f
    .line 912
    add-int/lit8 v0, v0, 0x1

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    goto :goto_0

    #@14
    .line 910
    .end local v2    # "temp":C
    :cond_0
    return-void
.end method

.method private static isAlefChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1128
    const/16 v1, 0x622

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x623

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x625

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/16 v1, 0x627

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method private static isAlefMaksouraChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1063
    const v1, 0xfeef

    #@4
    if-eq p0, v1, :cond_0

    #@6
    const v1, 0xfef0

    #@9
    if-ne p0, v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/16 v1, 0x649

    #@e
    if-eq p0, v1, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method private static isIsolatedTashkeelChar(C)I
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const v1, 0xfe70

    #@3
    .line 1114
    if-lt p0, v1, :cond_0

    #@5
    const v0, 0xfe7f

    #@8
    if-gt p0, v0, :cond_0

    #@a
    const v0, 0xfe73

    #@d
    if-eq p0, v0, :cond_0

    #@f
    const v0, 0xfe75

    #@12
    if-eq p0, v0, :cond_0

    #@14
    .line 1115
    sget-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    #@16
    sub-int v1, p0, v1

    #@18
    aget v0, v0, v1

    #@1a
    rsub-int/lit8 v0, v0, 0x1

    #@1c
    return v0

    #@1d
    .line 1116
    :cond_0
    const v0, 0xfc5e

    #@20
    if-lt p0, v0, :cond_1

    #@22
    const v0, 0xfc63

    #@25
    if-gt p0, v0, :cond_1

    #@27
    .line 1117
    const/4 v0, 0x1

    #@28
    return v0

    #@29
    .line 1119
    :cond_1
    const/4 v0, 0x0

    #@2a
    return v0
.end method

.method private static isLamAlefChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1136
    const v1, 0xfef5

    #@4
    if-lt p0, v1, :cond_0

    #@6
    const v1, 0xfefc

    #@9
    if-gt p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method private static isNormalizedLamAlefChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1140
    const/16 v1, 0x65c

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x65f

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private static isSeenFamilyChar(C)I
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 1036
    const/16 v0, 0x633

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x636

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 1037
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1039
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0
.end method

.method private static isSeenTailFamilyChar(C)I
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const v1, 0xfeb1

    #@3
    .line 1023
    if-lt p0, v1, :cond_0

    #@5
    const v0, 0xfebf

    #@8
    if-ge p0, v0, :cond_0

    #@a
    .line 1024
    sget-object v0, Landroid/icu/text/ArabicShaping;->tailFamilyIsolatedFinal:[I

    #@c
    sub-int v1, p0, v1

    #@e
    aget v0, v0, v1

    #@10
    return v0

    #@11
    .line 1026
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method private static isTailChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 1050
    const/16 v0, 0x200b

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const v0, 0xfe73

    #@7
    if-ne p0, v0, :cond_1

    #@9
    .line 1051
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 1053
    :cond_1
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method private static isTashkeelChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1013
    const/16 v1, 0x64b

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x652

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private static isTashkeelCharFE(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1085
    const v1, 0xfe75

    #@4
    if-eq p0, v1, :cond_0

    #@6
    const v1, 0xfe70

    #@9
    if-lt p0, v1, :cond_0

    #@b
    const v1, 0xfe7f

    #@e
    if-gt p0, v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method private static isTashkeelOnTatweelChar(C)I
    .locals 3
    .param p0, "ch"    # C

    #@0
    .prologue
    const v2, 0xfe7d

    #@3
    const v1, 0xfe70

    #@6
    .line 1096
    if-lt p0, v1, :cond_0

    #@8
    const v0, 0xfe7f

    #@b
    if-gt p0, v0, :cond_0

    #@d
    const v0, 0xfe73

    #@10
    if-eq p0, v0, :cond_0

    #@12
    const v0, 0xfe75

    #@15
    if-eq p0, v0, :cond_0

    #@17
    if-eq p0, v2, :cond_0

    #@19
    .line 1098
    sget-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    #@1b
    sub-int v1, p0, v1

    #@1d
    aget v0, v0, v1

    #@1f
    return v0

    #@20
    .line 1099
    :cond_0
    const v0, 0xfcf2

    #@23
    if-lt p0, v0, :cond_2

    #@25
    const v0, 0xfcf4

    #@28
    if-gt p0, v0, :cond_2

    #@2a
    .line 1100
    :cond_1
    const/4 v0, 0x2

    #@2b
    return v0

    #@2c
    .line 1099
    :cond_2
    if-eq p0, v2, :cond_1

    #@2e
    .line 1102
    const/4 v0, 0x0

    #@2f
    return v0
.end method

.method private static isYehHamzaChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 1072
    const v0, 0xfe89

    #@3
    if-eq p0, v0, :cond_0

    #@5
    const v0, 0xfe8a

    #@8
    if-ne p0, v0, :cond_1

    #@a
    .line 1073
    :cond_0
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 1075
    :cond_1
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method private normalize([CII)I
    .locals 7
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const v6, 0xfe70

    #@3
    .line 1608
    const/4 v3, 0x0

    #@4
    .line 1609
    .local v3, "lacount":I
    move v2, p2

    #@5
    .local v2, "i":I
    add-int v1, v2, p3

    #@7
    .local v1, "e":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@9
    .line 1610
    aget-char v0, p1, v2

    #@b
    .line 1611
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    #@d
    const v4, 0xfefc

    #@10
    if-gt v0, v4, :cond_1

    #@12
    .line 1612
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 1613
    add-int/lit8 v3, v3, 0x1

    #@1a
    .line 1615
    :cond_0
    sget-object v4, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    #@1c
    sub-int v5, v0, v6

    #@1e
    aget v4, v4, v5

    #@20
    int-to-char v4, v4

    #@21
    aput-char v4, p1, v2

    #@23
    .line 1609
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1618
    .end local v0    # "ch":C
    :cond_2
    return v3
.end method

.method private shapeToArabicDigitsWithContext([CIICZ)V
    .locals 4
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "digitBase"    # C
    .param p5, "lastStrongWasAL"    # Z

    #@0
    .prologue
    .line 878
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@2
    .line 879
    .local v0, "bdp":Landroid/icu/impl/UBiDiProps;
    add-int/lit8 v3, p4, -0x30

    #@4
    int-to-char p4, v3

    #@5
    .line 881
    add-int v2, p2, p3

    #@7
    .end local p5    # "lastStrongWasAL":Z
    .local v2, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@9
    if-lt v2, p2, :cond_1

    #@b
    .line 882
    aget-char v1, p1, v2

    #@d
    .line 883
    .local v1, "ch":C
    invoke-virtual {v0, v1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    #@10
    move-result v3

    #@11
    sparse-switch v3, :sswitch_data_0

    #@14
    goto :goto_0

    #@15
    .line 886
    :sswitch_0
    const/4 p5, 0x0

    #@16
    .line 887
    .local p5, "lastStrongWasAL":Z
    goto :goto_0

    #@17
    .line 889
    .end local p5    # "lastStrongWasAL":Z
    :sswitch_1
    const/4 p5, 0x1

    #@18
    .line 890
    .restart local p5    # "lastStrongWasAL":Z
    goto :goto_0

    #@19
    .line 892
    .end local p5    # "lastStrongWasAL":Z
    :sswitch_2
    if-eqz p5, :cond_0

    #@1b
    const/16 v3, 0x39

    #@1d
    if-gt v1, v3, :cond_0

    #@1f
    .line 893
    add-int v3, v1, p4

    #@21
    int-to-char v3, v3

    #@22
    aput-char v3, p1, v2

    #@24
    goto :goto_0

    #@25
    .line 877
    .end local v1    # "ch":C
    :cond_1
    return-void

    #@26
    .line 883
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method private shapeUnicode([CIIII)I
    .locals 22
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "destSize"    # I
    .param p5, "tashkeelFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1670
    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->normalize([CII)I

    #@3
    move-result v5

    #@4
    .line 1677
    .local v5, "lamalef_count":I
    const/4 v10, 0x0

    #@5
    .local v10, "lamalef_found":Z
    const/16 v17, 0x0

    #@7
    .line 1678
    .local v17, "seenfam_found":Z
    const/16 v21, 0x0

    #@9
    .local v21, "yehhamza_found":Z
    const/16 v19, 0x0

    #@b
    .line 1679
    .local v19, "tashkeel_found":Z
    add-int v1, p2, p3

    #@d
    add-int/lit8 v9, v1, -0x1

    #@f
    .line 1680
    .local v9, "i":I
    aget-char v1, p1, v9

    #@11
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    #@14
    move-result v7

    #@15
    .line 1681
    .local v7, "currLink":I
    const/4 v13, 0x0

    #@16
    .line 1682
    .local v13, "nextLink":I
    const/16 v16, 0x0

    #@18
    .line 1683
    .local v16, "prevLink":I
    const/4 v11, 0x0

    #@19
    .line 1685
    .local v11, "lastLink":I
    move v12, v9

    #@1a
    .line 1686
    .local v12, "lastPos":I
    const/4 v15, -0x2

    #@1b
    .line 1687
    .local v15, "nx":I
    const/4 v14, 0x0

    #@1c
    .line 1689
    .local v14, "nw":I
    :cond_0
    :goto_0
    if-ltz v9, :cond_15

    #@1e
    .line 1691
    const v1, 0xff00

    #@21
    and-int/2addr v1, v7

    #@22
    if-gtz v1, :cond_1

    #@24
    aget-char v1, p1, v9

    #@26
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelChar(C)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_9

    #@2c
    .line 1692
    :cond_1
    add-int/lit8 v14, v9, -0x1

    #@2e
    .line 1693
    const/4 v15, -0x2

    #@2f
    .line 1694
    :goto_1
    if-gez v15, :cond_4

    #@31
    .line 1695
    const/4 v1, -0x1

    #@32
    if-ne v14, v1, :cond_2

    #@34
    .line 1696
    const/4 v13, 0x0

    #@35
    .line 1697
    const v15, 0x7fffffff

    #@38
    goto :goto_1

    #@39
    .line 1699
    :cond_2
    aget-char v1, p1, v14

    #@3b
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    #@3e
    move-result v13

    #@3f
    .line 1700
    and-int/lit8 v1, v13, 0x4

    #@41
    if-nez v1, :cond_3

    #@43
    .line 1701
    move v15, v14

    #@44
    goto :goto_1

    #@45
    .line 1703
    :cond_3
    add-int/lit8 v14, v14, -0x1

    #@47
    goto :goto_1

    #@48
    .line 1708
    :cond_4
    and-int/lit8 v1, v7, 0x20

    #@4a
    if-lez v1, :cond_6

    #@4c
    and-int/lit8 v1, v11, 0x10

    #@4e
    if-lez v1, :cond_6

    #@50
    .line 1709
    const/4 v10, 0x1

    #@51
    .line 1710
    aget-char v1, p1, v9

    #@53
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->changeLamAlef(C)C

    #@56
    move-result v20

    #@57
    .line 1711
    .local v20, "wLamalef":C
    if-eqz v20, :cond_5

    #@59
    .line 1713
    const v1, 0xffff

    #@5c
    aput-char v1, p1, v9

    #@5e
    .line 1714
    aput-char v20, p1, v12

    #@60
    .line 1715
    move v9, v12

    #@61
    .line 1718
    :cond_5
    move/from16 v11, v16

    #@63
    .line 1719
    invoke-static/range {v20 .. v20}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    #@66
    move-result v7

    #@67
    .line 1721
    .end local v20    # "wLamalef":C
    :cond_6
    if-lez v9, :cond_c

    #@69
    add-int/lit8 v1, v9, -0x1

    #@6b
    aget-char v1, p1, v1

    #@6d
    const/16 v2, 0x20

    #@6f
    if-ne v1, v2, :cond_c

    #@71
    .line 1723
    aget-char v1, p1, v9

    #@73
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isSeenFamilyChar(C)I

    #@76
    move-result v1

    #@77
    const/4 v2, 0x1

    #@78
    if-ne v1, v2, :cond_b

    #@7a
    .line 1724
    const/16 v17, 0x1

    #@7c
    .line 1742
    :cond_7
    :goto_2
    aget-char v1, p1, v9

    #@7e
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->specialChar(C)I

    #@81
    move-result v8

    #@82
    .line 1744
    .local v8, "flag":I
    sget-object v1, Landroid/icu/text/ArabicShaping;->shapeTable:[[[I

    #@84
    and-int/lit8 v2, v13, 0x3

    #@86
    aget-object v1, v1, v2

    #@88
    .line 1745
    and-int/lit8 v2, v11, 0x3

    #@8a
    .line 1744
    aget-object v1, v1, v2

    #@8c
    .line 1746
    and-int/lit8 v2, v7, 0x3

    #@8e
    .line 1744
    aget v18, v1, v2

    #@90
    .line 1748
    .local v18, "shape":I
    const/4 v1, 0x1

    #@91
    if-ne v8, v1, :cond_e

    #@93
    .line 1749
    and-int/lit8 v18, v18, 0x1

    #@95
    .line 1768
    :cond_8
    :goto_3
    const/4 v1, 0x2

    #@96
    if-ne v8, v1, :cond_13

    #@98
    .line 1769
    const/4 v1, 0x2

    #@99
    move/from16 v0, p5

    #@9b
    if-ne v0, v1, :cond_12

    #@9d
    aget-char v1, p1, v9

    #@9f
    const/16 v2, 0x651

    #@a1
    if-eq v1, v2, :cond_12

    #@a3
    .line 1770
    const v1, 0xfffe

    #@a6
    aput-char v1, p1, v9

    #@a8
    .line 1771
    const/16 v19, 0x1

    #@aa
    .line 1783
    .end local v8    # "flag":I
    .end local v18    # "shape":I
    :cond_9
    :goto_4
    and-int/lit8 v1, v7, 0x4

    #@ac
    if-nez v1, :cond_a

    #@ae
    .line 1784
    move/from16 v16, v11

    #@b0
    .line 1785
    move v11, v7

    #@b1
    .line 1787
    move v12, v9

    #@b2
    .line 1790
    :cond_a
    add-int/lit8 v9, v9, -0x1

    #@b4
    .line 1791
    if-ne v9, v15, :cond_14

    #@b6
    .line 1792
    move v7, v13

    #@b7
    .line 1793
    const/4 v15, -0x2

    #@b8
    goto/16 :goto_0

    #@ba
    .line 1725
    :cond_b
    aget-char v1, p1, v9

    #@bc
    const/16 v2, 0x626

    #@be
    if-ne v1, v2, :cond_7

    #@c0
    .line 1726
    const/16 v21, 0x1

    #@c2
    goto :goto_2

    #@c3
    .line 1729
    :cond_c
    if-nez v9, :cond_7

    #@c5
    .line 1730
    aget-char v1, p1, v9

    #@c7
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isSeenFamilyChar(C)I

    #@ca
    move-result v1

    #@cb
    const/4 v2, 0x1

    #@cc
    if-ne v1, v2, :cond_d

    #@ce
    .line 1731
    const/16 v17, 0x1

    #@d0
    goto :goto_2

    #@d1
    .line 1732
    :cond_d
    aget-char v1, p1, v9

    #@d3
    const/16 v2, 0x626

    #@d5
    if-ne v1, v2, :cond_7

    #@d7
    .line 1733
    const/16 v21, 0x1

    #@d9
    goto :goto_2

    #@da
    .line 1750
    .restart local v8    # "flag":I
    .restart local v18    # "shape":I
    :cond_e
    const/4 v1, 0x2

    #@db
    if-ne v8, v1, :cond_8

    #@dd
    .line 1751
    if-nez p5, :cond_10

    #@df
    .line 1752
    and-int/lit8 v1, v11, 0x2

    #@e1
    if-eqz v1, :cond_10

    #@e3
    .line 1753
    and-int/lit8 v1, v13, 0x1

    #@e5
    if-eqz v1, :cond_10

    #@e7
    .line 1754
    aget-char v1, p1, v9

    #@e9
    const/16 v2, 0x64c

    #@eb
    if-eq v1, v2, :cond_10

    #@ed
    .line 1755
    aget-char v1, p1, v9

    #@ef
    const/16 v2, 0x64d

    #@f1
    if-eq v1, v2, :cond_10

    #@f3
    .line 1756
    and-int/lit8 v1, v13, 0x20

    #@f5
    const/16 v2, 0x20

    #@f7
    if-ne v1, v2, :cond_f

    #@f9
    .line 1757
    and-int/lit8 v1, v11, 0x10

    #@fb
    const/16 v2, 0x10

    #@fd
    if-eq v1, v2, :cond_10

    #@ff
    .line 1759
    :cond_f
    const/16 v18, 0x1

    #@101
    .line 1757
    goto :goto_3

    #@102
    .line 1761
    :cond_10
    const/4 v1, 0x2

    #@103
    move/from16 v0, p5

    #@105
    if-ne v0, v1, :cond_11

    #@107
    aget-char v1, p1, v9

    #@109
    const/16 v2, 0x651

    #@10b
    if-ne v1, v2, :cond_11

    #@10d
    .line 1762
    const/16 v18, 0x1

    #@10f
    .line 1761
    goto :goto_3

    #@110
    .line 1765
    :cond_11
    const/16 v18, 0x0

    #@112
    goto :goto_3

    #@113
    .line 1774
    :cond_12
    sget-object v1, Landroid/icu/text/ArabicShaping;->irrelevantPos:[I

    #@115
    aget-char v2, p1, v9

    #@117
    add-int/lit16 v2, v2, -0x64b

    #@119
    aget v1, v1, v2

    #@11b
    const v2, 0xfe70

    #@11e
    add-int/2addr v1, v2

    #@11f
    add-int v1, v1, v18

    #@121
    int-to-char v1, v1

    #@122
    aput-char v1, p1, v9

    #@124
    goto :goto_4

    #@125
    .line 1778
    :cond_13
    shr-int/lit8 v1, v7, 0x8

    #@127
    const v2, 0xfe70

    #@12a
    add-int/2addr v1, v2

    #@12b
    add-int v1, v1, v18

    #@12d
    int-to-char v1, v1

    #@12e
    aput-char v1, p1, v9

    #@130
    goto/16 :goto_4

    #@132
    .line 1794
    .end local v8    # "flag":I
    .end local v18    # "shape":I
    :cond_14
    const/4 v1, -0x1

    #@133
    if-eq v9, v1, :cond_0

    #@135
    .line 1795
    aget-char v1, p1, v9

    #@137
    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    #@13a
    move-result v7

    #@13b
    goto/16 :goto_0

    #@13d
    .line 1802
    :cond_15
    move/from16 p4, p3

    #@13f
    .line 1803
    if-nez v10, :cond_16

    #@141
    if-eqz v19, :cond_17

    #@143
    .line 1804
    :cond_16
    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->handleGeneratedSpaces([CII)I

    #@146
    move-result p4

    #@147
    .line 1806
    :cond_17
    if-nez v17, :cond_18

    #@149
    if-eqz v21, :cond_19

    #@14b
    .line 1807
    :cond_18
    const/4 v6, 0x0

    #@14c
    move-object/from16 v1, p0

    #@14e
    move-object/from16 v2, p1

    #@150
    move/from16 v3, p2

    #@152
    move/from16 v4, p4

    #@154
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->expandCompositChar([CIIII)I

    #@157
    move-result p4

    #@158
    .line 1809
    :cond_19
    return p4
.end method

.method private static shiftArray([CIIC)V
    .locals 3
    .param p0, "dest"    # [C
    .param p1, "start"    # I
    .param p2, "e"    # I
    .param p3, "subChar"    # C

    #@0
    .prologue
    .line 1209
    move v2, p2

    #@1
    .line 1210
    .local v2, "w":I
    move v1, p2

    #@2
    .line 1211
    .local v1, "r":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@4
    if-lt v1, p1, :cond_1

    #@6
    .line 1212
    aget-char v0, p0, v1

    #@8
    .line 1213
    .local v0, "ch":C
    if-eq v0, p3, :cond_0

    #@a
    .line 1214
    add-int/lit8 v2, v2, -0x1

    #@c
    .line 1215
    if-eq v2, v1, :cond_0

    #@e
    .line 1216
    aput-char v0, p0, v2

    #@10
    goto :goto_0

    #@11
    .line 1208
    .end local v0    # "ch":C
    :cond_1
    return-void
.end method

.method private static specialChar(C)I
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 943
    const/16 v0, 0x621

    #@2
    if-le p0, v0, :cond_1

    #@4
    const/16 v0, 0x626

    #@6
    if-ge p0, v0, :cond_1

    #@8
    .line 948
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 944
    :cond_1
    const/16 v0, 0x627

    #@c
    if-eq p0, v0, :cond_0

    #@e
    .line 945
    const/16 v0, 0x62e

    #@10
    if-le p0, v0, :cond_2

    #@12
    const/16 v0, 0x633

    #@14
    if-lt p0, v0, :cond_0

    #@16
    .line 946
    :cond_2
    const/16 v0, 0x647

    #@18
    if-le p0, v0, :cond_3

    #@1a
    const/16 v0, 0x64a

    #@1c
    if-lt p0, v0, :cond_0

    #@1e
    .line 947
    :cond_3
    const/16 v0, 0x629

    #@20
    if-eq p0, v0, :cond_0

    #@22
    .line 949
    const/16 v0, 0x64b

    #@24
    if-lt p0, v0, :cond_4

    #@26
    const/16 v0, 0x652

    #@28
    if-gt p0, v0, :cond_4

    #@2a
    .line 950
    const/4 v0, 0x2

    #@2b
    return v0

    #@2c
    .line 951
    :cond_4
    const/16 v0, 0x653

    #@2e
    if-lt p0, v0, :cond_6

    #@30
    const/16 v0, 0x655

    #@32
    if-gt p0, v0, :cond_6

    #@34
    .line 954
    :cond_5
    const/4 v0, 0x3

    #@35
    return v0

    #@36
    .line 952
    :cond_6
    const/16 v0, 0x670

    #@38
    if-eq p0, v0, :cond_5

    #@3a
    .line 953
    const v0, 0xfe70

    #@3d
    if-lt p0, v0, :cond_7

    #@3f
    const v0, 0xfe7f

    #@42
    if-le p0, v0, :cond_5

    #@44
    .line 956
    :cond_7
    const/4 v0, 0x0

    #@45
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 584
    if-eqz p1, :cond_0

    #@3
    .line 585
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    const-class v2, Landroid/icu/text/ArabicShaping;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 586
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@d
    check-cast p1, Landroid/icu/text/ArabicShaping;

    #@f
    .end local p1    # "rhs":Ljava/lang/Object;
    iget v2, p1, Landroid/icu/text/ArabicShaping;->options:I

    #@11
    if-ne v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 584
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 594
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@2
    return v0
.end method

.method public shape([CII[CII)I
    .locals 4
    .param p1, "source"    # [C
    .param p2, "sourceStart"    # I
    .param p3, "sourceLength"    # I
    .param p4, "dest"    # [C
    .param p5, "destStart"    # I
    .param p6, "destSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    #@0
    .prologue
    const/high16 v3, 0xe0000

    #@2
    const v2, 0x10003

    #@5
    .line 88
    if-nez p1, :cond_0

    #@7
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "source can not be null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 91
    :cond_0
    if-ltz p2, :cond_1

    #@12
    if-gez p3, :cond_2

    #@14
    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "bad source start ("

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 93
    const-string/jumbo v2, ") or length ("

    #@29
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 94
    const-string/jumbo v2, ") for buffer of length "

    #@34
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 94
    array-length v2, p1

    #@39
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 91
    :cond_2
    add-int v0, p2, p3

    #@47
    array-length v1, p1

    #@48
    if-gt v0, v1, :cond_1

    #@4a
    .line 96
    if-nez p4, :cond_3

    #@4c
    if-eqz p6, :cond_3

    #@4e
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@50
    const-string/jumbo v1, "null dest requires destSize == 0"

    #@53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    .line 99
    :cond_3
    if-eqz p6, :cond_6

    #@59
    .line 100
    if-ltz p5, :cond_4

    #@5b
    if-gez p6, :cond_5

    #@5d
    .line 101
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v2, "bad dest start ("

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 102
    const-string/jumbo v2, ") or size ("

    #@72
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    .line 103
    const-string/jumbo v2, ") for buffer of length "

    #@7d
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    .line 103
    array-length v2, p4

    #@82
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v0

    #@8e
    .line 100
    :cond_5
    add-int v0, p5, p6

    #@90
    array-length v1, p4

    #@91
    if-gt v0, v1, :cond_4

    #@93
    .line 106
    :cond_6
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@95
    and-int/2addr v0, v3

    #@96
    if-lez v0, :cond_7

    #@98
    .line 107
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@9a
    and-int/2addr v0, v3

    #@9b
    const/high16 v1, 0x40000

    #@9d
    if-eq v0, v1, :cond_7

    #@9f
    .line 108
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@a1
    and-int/2addr v0, v3

    #@a2
    const/high16 v1, 0x60000

    #@a4
    if-eq v0, v1, :cond_7

    #@a6
    .line 109
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@a8
    and-int/2addr v0, v3

    #@a9
    const/high16 v1, 0x80000

    #@ab
    if-eq v0, v1, :cond_7

    #@ad
    .line 110
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@af
    and-int/2addr v0, v3

    #@b0
    const/high16 v1, 0xc0000

    #@b2
    if-eq v0, v1, :cond_7

    #@b4
    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b6
    const-string/jumbo v1, "Wrong Tashkeel argument"

    #@b9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v0

    #@bd
    .line 116
    :cond_7
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@bf
    and-int/2addr v0, v2

    #@c0
    if-lez v0, :cond_8

    #@c2
    .line 117
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@c4
    and-int/2addr v0, v2

    #@c5
    const/4 v1, 0x3

    #@c6
    if-eq v0, v1, :cond_8

    #@c8
    .line 118
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@ca
    and-int/2addr v0, v2

    #@cb
    const/4 v1, 0x2

    #@cc
    if-eq v0, v1, :cond_8

    #@ce
    .line 119
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@d0
    and-int/2addr v0, v2

    #@d1
    if-eqz v0, :cond_8

    #@d3
    .line 120
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@d5
    and-int/2addr v0, v2

    #@d6
    const/high16 v1, 0x10000

    #@d8
    if-eq v0, v1, :cond_8

    #@da
    .line 121
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@dc
    and-int/2addr v0, v2

    #@dd
    const/4 v1, 0x1

    #@de
    if-eq v0, v1, :cond_8

    #@e0
    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e2
    const-string/jumbo v1, "Wrong Lam Alef argument"

    #@e5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e8
    throw v0

    #@e9
    .line 127
    :cond_8
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@eb
    and-int/2addr v0, v3

    #@ec
    if-lez v0, :cond_9

    #@ee
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@f0
    and-int/lit8 v0, v0, 0x18

    #@f2
    const/16 v1, 0x10

    #@f4
    if-ne v0, v1, :cond_9

    #@f6
    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f8
    const-string/jumbo v1, "Tashkeel replacement should not be enabled in deshaping mode "

    #@fb
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fe
    throw v0

    #@ff
    .line 130
    :cond_9
    invoke-direct/range {p0 .. p6}, Landroid/icu/text/ArabicShaping;->internalShape([CII[CII)I

    #@102
    move-result v0

    #@103
    return v0
.end method

.method public shape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@4
    move-result-object v1

    #@5
    .line 160
    .local v1, "src":[C
    move-object v4, v1

    #@6
    .line 161
    .local v4, "dest":[C
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@8
    const v3, 0x10003

    #@b
    and-int/2addr v0, v3

    #@c
    if-nez v0, :cond_0

    #@e
    .line 162
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@10
    and-int/lit8 v0, v0, 0x18

    #@12
    const/16 v3, 0x10

    #@14
    if-ne v0, v3, :cond_0

    #@16
    .line 164
    array-length v0, v1

    #@17
    mul-int/lit8 v0, v0, 0x2

    #@19
    new-array v4, v0, [C

    #@1b
    .line 166
    :cond_0
    array-length v3, v1

    #@1c
    array-length v6, v4

    #@1d
    move-object v0, p0

    #@1e
    move v5, v2

    #@1f
    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->shape([CII[CII)I

    #@22
    move-result v7

    #@23
    .line 168
    .local v7, "len":I
    new-instance v0, Ljava/lang/String;

    #@25
    invoke-direct {v0, v4, v2, v7}, Ljava/lang/String;-><init>([CII)V

    #@28
    return-object v0
.end method

.method public shape([CII)V
    .locals 7
    .param p1, "source"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@2
    const v1, 0x10003

    #@5
    and-int/2addr v0, v1

    #@6
    if-nez v0, :cond_0

    #@8
    .line 145
    new-instance v0, Landroid/icu/text/ArabicShapingException;

    #@a
    const-string/jumbo v1, "Cannot shape in place with length option resize."

    #@d
    invoke-direct {v0, v1}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_0
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move v2, p2

    #@14
    move v3, p3

    #@15
    move-object v4, p1

    #@16
    move v5, p2

    #@17
    move v6, p3

    #@18
    .line 147
    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->shape([CII[CII)I

    #@1b
    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 602
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    .line 604
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@10
    const v2, 0x10003

    #@13
    and-int/2addr v1, v2

    #@14
    sparse-switch v1, :sswitch_data_0

    #@17
    .line 611
    :goto_0
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@19
    and-int/lit8 v1, v1, 0x4

    #@1b
    sparse-switch v1, :sswitch_data_1

    #@1e
    .line 615
    :goto_1
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@20
    and-int/lit8 v1, v1, 0x18

    #@22
    sparse-switch v1, :sswitch_data_2

    #@25
    .line 621
    :goto_2
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@27
    const/high16 v2, 0x700000

    #@29
    and-int/2addr v1, v2

    #@2a
    packed-switch v1, :pswitch_data_0

    #@2d
    .line 624
    :goto_3
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@2f
    const/high16 v2, 0x3800000

    #@31
    and-int/2addr v1, v2

    #@32
    packed-switch v1, :pswitch_data_1

    #@35
    .line 627
    :goto_4
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@37
    const/high16 v2, 0xe0000

    #@39
    and-int/2addr v1, v2

    #@3a
    sparse-switch v1, :sswitch_data_3

    #@3d
    .line 634
    :goto_5
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@3f
    and-int/lit16 v1, v1, 0xe0

    #@41
    sparse-switch v1, :sswitch_data_4

    #@44
    .line 641
    :goto_6
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    #@46
    and-int/lit16 v1, v1, 0x100

    #@48
    sparse-switch v1, :sswitch_data_5

    #@4b
    .line 645
    :goto_7
    const-string/jumbo v1, "]"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    return-object v1

    #@56
    .line 605
    :sswitch_0
    const-string/jumbo v1, "LamAlef resize"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_0

    #@5d
    .line 606
    :sswitch_1
    const-string/jumbo v1, "LamAlef spaces at near"

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    goto :goto_0

    #@64
    .line 607
    :sswitch_2
    const-string/jumbo v1, "LamAlef spaces at begin"

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    goto :goto_0

    #@6b
    .line 608
    :sswitch_3
    const-string/jumbo v1, "LamAlef spaces at end"

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    goto :goto_0

    #@72
    .line 609
    :sswitch_4
    const-string/jumbo v1, "lamAlef auto"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    goto :goto_0

    #@79
    .line 612
    :sswitch_5
    const-string/jumbo v1, ", logical"

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    goto :goto_1

    #@80
    .line 613
    :sswitch_6
    const-string/jumbo v1, ", visual"

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    goto :goto_1

    #@87
    .line 616
    :sswitch_7
    const-string/jumbo v1, ", no letter shaping"

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    goto :goto_2

    #@8e
    .line 617
    :sswitch_8
    const-string/jumbo v1, ", shape letters"

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    goto :goto_2

    #@95
    .line 618
    :sswitch_9
    const-string/jumbo v1, ", shape letters tashkeel isolated"

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    goto :goto_2

    #@9c
    .line 619
    :sswitch_a
    const-string/jumbo v1, ", unshape letters"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    goto :goto_2

    #@a3
    .line 622
    :pswitch_0
    const-string/jumbo v1, ", Seen at near"

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    goto :goto_3

    #@aa
    .line 625
    :pswitch_1
    const-string/jumbo v1, ", Yeh Hamza at near"

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    goto :goto_4

    #@b1
    .line 628
    :sswitch_b
    const-string/jumbo v1, ", Tashkeel at begin"

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    goto :goto_5

    #@b8
    .line 629
    :sswitch_c
    const-string/jumbo v1, ", Tashkeel at end"

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    goto/16 :goto_5

    #@c0
    .line 630
    :sswitch_d
    const-string/jumbo v1, ", Tashkeel replace with tatweel"

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    goto/16 :goto_5

    #@c8
    .line 631
    :sswitch_e
    const-string/jumbo v1, ", Tashkeel resize"

    #@cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    goto/16 :goto_5

    #@d0
    .line 635
    :sswitch_f
    const-string/jumbo v1, ", no digit shaping"

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    goto/16 :goto_6

    #@d8
    .line 636
    :sswitch_10
    const-string/jumbo v1, ", shape digits to AN"

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    goto/16 :goto_6

    #@e0
    .line 637
    :sswitch_11
    const-string/jumbo v1, ", shape digits to EN"

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    goto/16 :goto_6

    #@e8
    .line 638
    :sswitch_12
    const-string/jumbo v1, ", shape digits to AN contextually: default EN"

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    goto/16 :goto_6

    #@f0
    .line 639
    :sswitch_13
    const-string/jumbo v1, ", shape digits to AN contextually: default AL"

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    goto/16 :goto_6

    #@f8
    .line 642
    :sswitch_14
    const-string/jumbo v1, ", standard Arabic-Indic digits"

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    goto/16 :goto_7

    #@100
    .line 643
    :sswitch_15
    const-string/jumbo v1, ", extended Arabic-Indic digits"

    #@103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    goto/16 :goto_7

    #@108
    .line 604
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x10000 -> :sswitch_4
    .end sparse-switch

    #@11e
    .line 611
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x4 -> :sswitch_6
    .end sparse-switch

    #@128
    .line 615
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x8 -> :sswitch_8
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
    .end sparse-switch

    #@13a
    .line 621
    :pswitch_data_0
    .packed-switch 0x200000
        :pswitch_0
    .end packed-switch

    #@140
    .line 624
    :pswitch_data_1
    .packed-switch 0x1000000
        :pswitch_1
    .end packed-switch

    #@146
    .line 627
    :sswitch_data_3
    .sparse-switch
        0x40000 -> :sswitch_b
        0x60000 -> :sswitch_c
        0x80000 -> :sswitch_e
        0xc0000 -> :sswitch_d
    .end sparse-switch

    #@158
    .line 634
    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_f
        0x20 -> :sswitch_10
        0x40 -> :sswitch_11
        0x60 -> :sswitch_12
        0x80 -> :sswitch_13
    .end sparse-switch

    #@16e
    .line 641
    :sswitch_data_5
    .sparse-switch
        0x0 -> :sswitch_14
        0x100 -> :sswitch_15
    .end sparse-switch
.end method
