.class public final Landroid/icu/text/ArabicShaping;
.super Ljava/lang/Object;
.source "ArabicShaping.java"


# static fields
.field private static final greylist-max-o ALEFTYPE:I = 0x20

.field private static final greylist-max-o DESHAPE_MODE:I = 0x1

.field public static final greylist-max-o DIGITS_AN2EN:I = 0x40

.field public static final greylist-max-o DIGITS_EN2AN:I = 0x20

.field public static final greylist-max-o DIGITS_EN2AN_INIT_AL:I = 0x80

.field public static final greylist-max-o DIGITS_EN2AN_INIT_LR:I = 0x60

.field public static final greylist-max-o DIGITS_MASK:I = 0xe0

.field public static final greylist-max-o DIGITS_NOOP:I = 0x0

.field public static final greylist-max-o DIGIT_TYPE_AN:I = 0x0

.field public static final greylist-max-o DIGIT_TYPE_AN_EXTENDED:I = 0x100

.field public static final greylist-max-o DIGIT_TYPE_MASK:I = 0x100

.field private static final greylist-max-o HAMZA06_CHAR:C = '\u0621'

.field private static final greylist-max-o HAMZAFE_CHAR:C = '\ufe80'

.field private static final greylist-max-o IRRELEVANT:I = 0x4

.field public static final greylist-max-o LAMALEF_AUTO:I = 0x10000

.field public static final greylist-max-o LAMALEF_BEGIN:I = 0x3

.field public static final greylist-max-o LAMALEF_END:I = 0x2

.field public static final greylist-max-o LAMALEF_MASK:I = 0x10003

.field public static final greylist-max-o LAMALEF_NEAR:I = 0x1

.field public static final greylist-max-o LAMALEF_RESIZE:I = 0x0

.field private static final greylist-max-o LAMALEF_SPACE_SUB:C = '\uffff'

.field private static final greylist-max-o LAMTYPE:I = 0x10

.field private static final greylist-max-o LAM_CHAR:C = '\u0644'

.field public static final greylist-max-o LENGTH_FIXED_SPACES_AT_BEGINNING:I = 0x3

.field public static final greylist-max-o LENGTH_FIXED_SPACES_AT_END:I = 0x2

.field public static final greylist-max-o LENGTH_FIXED_SPACES_NEAR:I = 0x1

.field public static final greylist-max-o LENGTH_GROW_SHRINK:I = 0x0

.field public static final greylist-max-o LENGTH_MASK:I = 0x10003

.field public static final greylist-max-o LETTERS_MASK:I = 0x18

.field public static final greylist-max-o LETTERS_NOOP:I = 0x0

.field public static final greylist-max-o LETTERS_SHAPE:I = 0x8

.field public static final greylist-max-o LETTERS_SHAPE_TASHKEEL_ISOLATED:I = 0x18

.field public static final greylist-max-o LETTERS_UNSHAPE:I = 0x10

.field private static final greylist-max-o LINKL:I = 0x2

.field private static final greylist-max-o LINKR:I = 0x1

.field private static final greylist-max-o LINK_MASK:I = 0x3

.field private static final greylist-max-o NEW_TAIL_CHAR:C = '\ufe73'

.field private static final greylist-max-o OLD_TAIL_CHAR:C = '\u200b'

.field public static final greylist-max-o SEEN_MASK:I = 0x700000

.field public static final greylist-max-o SEEN_TWOCELL_NEAR:I = 0x200000

.field private static final greylist-max-o SHADDA06_CHAR:C = '\u0651'

.field private static final greylist-max-o SHADDA_CHAR:C = '\ufe7c'

.field private static final greylist-max-o SHADDA_TATWEEL_CHAR:C = '\ufe7d'

.field private static final greylist-max-o SHAPE_MODE:I = 0x0

.field public static final greylist-max-o SHAPE_TAIL_NEW_UNICODE:I = 0x8000000

.field public static final greylist-max-o SHAPE_TAIL_TYPE_MASK:I = 0x8000000

.field public static final greylist-max-o SPACES_RELATIVE_TO_TEXT_BEGIN_END:I = 0x4000000

.field public static final greylist-max-o SPACES_RELATIVE_TO_TEXT_MASK:I = 0x4000000

.field private static final greylist-max-o SPACE_CHAR:C = ' '

.field public static final greylist-max-o TASHKEEL_BEGIN:I = 0x40000

.field public static final greylist-max-o TASHKEEL_END:I = 0x60000

.field public static final greylist-max-o TASHKEEL_MASK:I = 0xe0000

.field public static final greylist-max-o TASHKEEL_REPLACE_BY_TATWEEL:I = 0xc0000

.field public static final greylist-max-o TASHKEEL_RESIZE:I = 0x80000

.field private static final greylist-max-o TASHKEEL_SPACE_SUB:C = '\ufffe'

.field private static final greylist-max-o TATWEEL_CHAR:C = '\u0640'

.field public static final greylist-max-o TEXT_DIRECTION_LOGICAL:I = 0x0

.field public static final greylist-max-o TEXT_DIRECTION_MASK:I = 0x4

.field public static final greylist-max-o TEXT_DIRECTION_VISUAL_LTR:I = 0x4

.field public static final greylist-max-o TEXT_DIRECTION_VISUAL_RTL:I = 0x0

.field public static final greylist-max-o YEHHAMZA_MASK:I = 0x3800000

.field public static final greylist-max-o YEHHAMZA_TWOCELL_NEAR:I = 0x1000000

.field private static final greylist-max-o YEH_HAMZAFE_CHAR:C = '\ufe89'

.field private static final greylist-max-o YEH_HAMZA_CHAR:C = '\u0626'

.field private static final greylist-max-o araLink:[I

.field private static greylist-max-o convertFEto06:[I

.field private static final greylist-max-o convertNormalizedLamAlef:[C

.field private static final greylist-max-o irrelevantPos:[I

.field private static final greylist-max-o presLink:[I

.field private static final greylist-max-o shapeTable:[[[I

.field private static final greylist-max-o tailFamilyIsolatedFinal:[I

.field private static final greylist-max-o tashkeelMedial:[I

.field private static final greylist-max-o yehHamzaToYeh:[C


# instance fields
.field private greylist-max-o isLogical:Z

.field private final greylist-max-o options:I

.field private greylist-max-o spacesRelativeToTextBeginEnd:Z

.field private greylist-max-o tailChar:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 622
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a0

    sput-object v0, Landroid/icu/text/ArabicShaping;->irrelevantPos:[I

    .line 639
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_b4

    sput-object v0, Landroid/icu/text/ArabicShaping;->tailFamilyIsolatedFinal:[I

    .line 656
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_d4

    sput-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    .line 675
    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_f8

    sput-object v1, Landroid/icu/text/ArabicShaping;->yehHamzaToYeh:[C

    .line 681
    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_fe

    sput-object v1, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    .line 688
    const/16 v1, 0xb2

    new-array v1, v1, [I

    fill-array-data v1, :array_106

    sput-object v1, Landroid/icu/text/ArabicShaping;->araLink:[I

    .line 766
    const/16 v1, 0x8d

    new-array v1, v1, [I

    fill-array-data v1, :array_26e

    sput-object v1, Landroid/icu/text/ArabicShaping;->presLink:[I

    .line 807
    const/16 v1, 0x8d

    new-array v1, v1, [I

    fill-array-data v1, :array_38c

    sput-object v1, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    .line 820
    const/4 v1, 0x0

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v2

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    filled-new-array {v1, v4, v1, v5}, [I

    move-result-object v6

    filled-new-array {v1, v4, v1, v4}, [I

    move-result-object v7

    filled-new-array {v2, v3, v6, v7}, [[I

    move-result-object v2

    filled-new-array {v1, v1, v0, v0}, [I

    move-result-object v3

    filled-new-array {v1, v1, v4, v0}, [I

    move-result-object v6

    filled-new-array {v1, v4, v4, v0}, [I

    move-result-object v7

    filled-new-array {v1, v4, v4, v5}, [I

    move-result-object v8

    filled-new-array {v3, v6, v7, v8}, [[I

    move-result-object v3

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v6

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v7

    filled-new-array {v1, v4, v1, v5}, [I

    move-result-object v8

    filled-new-array {v1, v4, v1, v5}, [I

    move-result-object v9

    filled-new-array {v6, v7, v8, v9}, [[I

    move-result-object v6

    filled-new-array {v1, v1, v4, v0}, [I

    move-result-object v7

    filled-new-array {v1, v1, v4, v0}, [I

    move-result-object v8

    filled-new-array {v1, v4, v4, v0}, [I

    move-result-object v0

    filled-new-array {v1, v4, v4, v5}, [I

    move-result-object v1

    filled-new-array {v7, v8, v0, v1}, [[I

    move-result-object v0

    filled-new-array {v2, v3, v6, v0}, [[[I

    move-result-object v0

    sput-object v0, Landroid/icu/text/ArabicShaping;->shapeTable:[[[I

    return-void

    :array_a0
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

    :array_b4
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

    :array_d4
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

    :array_f8
    .array-data 2
        -0x111s
        -0x110s
    .end array-data

    :array_fe
    .array-data 2
        0x622s
        0x623s
        0x625s
        0x627s
    .end array-data

    :array_106
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

    :array_26e
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

    :array_38c
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

.method public constructor greylist <init>(I)V
    .registers 6
    .param p1, "options"    # I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Landroid/icu/text/ArabicShaping;->options:I

    .line 190
    and-int/lit16 v0, p1, 0xe0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_31

    .line 194
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    .line 196
    const/high16 v0, 0x4000000

    and-int v3, p1, v0

    if-ne v3, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    iput-boolean v1, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    .line 197
    const/high16 v0, 0x8000000

    and-int v1, p1, v0

    if-ne v1, v0, :cond_2c

    .line 198
    const v0, 0xfe73

    iput-char v0, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    goto :goto_30

    .line 200
    :cond_2c
    const/16 v0, 0x200b

    iput-char v0, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    .line 202
    :goto_30
    return-void

    .line 191
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad DIGITS options"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o calculateSize([CII)I
    .registers 9
    .param p1, "source"    # [C
    .param p2, "sourceStart"    # I
    .param p3, "sourceLength"    # I

    .line 1115
    move v0, p3

    .line 1117
    .local v0, "destSize":I
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v1, v1, 0x18

    sparse-switch v1, :sswitch_data_68

    goto :goto_67

    .line 1136
    :sswitch_9
    move v1, p2

    .local v1, "i":I
    add-int v2, p2, p3

    .local v2, "e":I
    :goto_c
    if-ge v1, v2, :cond_1b

    .line 1137
    aget-char v3, p1, v1

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1138
    add-int/lit8 v0, v0, 0x1

    .line 1136
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1141
    .end local v1    # "i":I
    .end local v2    # "e":I
    :cond_1b
    goto :goto_67

    .line 1120
    :sswitch_1c
    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    const/16 v2, 0x644

    if-eqz v1, :cond_45

    .line 1121
    move v1, p2

    .restart local v1    # "i":I
    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0x1

    .local v3, "e":I
    :goto_27
    if-ge v1, v3, :cond_44

    .line 1122
    aget-char v4, p1, v1

    if-ne v4, v2, :cond_37

    add-int/lit8 v4, v1, 0x1

    aget-char v4, p1, v4

    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isAlefChar(C)Z

    move-result v4

    if-nez v4, :cond_3f

    :cond_37
    aget-char v4, p1, v1

    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isTashkeelCharFE(C)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1123
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    .line 1121
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .end local v1    # "i":I
    .end local v3    # "e":I
    :cond_44
    goto :goto_67

    .line 1127
    :cond_45
    add-int/lit8 v1, p2, 0x1

    .restart local v1    # "i":I
    add-int v3, p2, p3

    .restart local v3    # "e":I
    :goto_49
    if-ge v1, v3, :cond_66

    .line 1128
    aget-char v4, p1, v1

    if-ne v4, v2, :cond_59

    add-int/lit8 v4, v1, -0x1

    aget-char v4, p1, v4

    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isAlefChar(C)Z

    move-result v4

    if-nez v4, :cond_61

    :cond_59
    aget-char v4, p1, v1

    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isTashkeelCharFE(C)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1129
    :cond_61
    add-int/lit8 v0, v0, -0x1

    .line 1127
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 1133
    .end local v1    # "i":I
    .end local v3    # "e":I
    :cond_66
    nop

    .line 1147
    :goto_67
    return v0

    :sswitch_data_68
    .sparse-switch
        0x8 -> :sswitch_1c
        0x10 -> :sswitch_9
        0x18 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static greylist-max-o changeLamAlef(C)C
    .registers 2
    .param p0, "ch"    # C

    .line 887
    packed-switch p0, :pswitch_data_12

    .line 892
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 891
    :pswitch_5
    const/16 v0, 0x65f

    return v0

    .line 890
    :pswitch_8
    const/16 v0, 0x65e

    return v0

    .line 889
    :pswitch_b
    const/16 v0, 0x65d

    return v0

    .line 888
    :pswitch_e
    const/16 v0, 0x65c

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x622
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o countSpaceSub([CIC)I
    .registers 6
    .param p0, "dest"    # [C
    .param p1, "length"    # I
    .param p2, "subChar"    # C

    .line 1156
    const/4 v0, 0x0

    .line 1157
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1158
    .local v1, "count":I
    :goto_2
    if-ge v0, p1, :cond_d

    .line 1159
    aget-char v2, p0, v0

    if-ne v2, p2, :cond_a

    .line 1160
    add-int/lit8 v1, v1, 0x1

    .line 1162
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1164
    :cond_d
    return v1
.end method

.method private static greylist-max-o countSpacesLeft([CII)I
    .registers 7
    .param p0, "dest"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 947
    move v0, p1

    .local v0, "i":I
    add-int v1, p1, p2

    .local v1, "e":I
    :goto_3
    if-ge v0, v1, :cond_11

    .line 948
    aget-char v2, p0, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_e

    .line 949
    sub-int v2, v0, p1

    return v2

    .line 947
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 952
    .end local v0    # "i":I
    .end local v1    # "e":I
    :cond_11
    return p2
.end method

.method private static greylist-max-o countSpacesRight([CII)I
    .registers 6
    .param p0, "dest"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 959
    add-int v0, p1, p2

    .local v0, "i":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_12

    .line 960
    aget-char v1, p0, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 961
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    return v1

    .line 964
    .end local v0    # "i":I
    :cond_12
    return p2
.end method

.method private greylist-max-o deShapeUnicode([CIII)I
    .registers 11
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "destSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    .line 1785
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/ArabicShaping;->deshapeNormalize([CII)I

    move-result v4

    .line 1788
    .local v4, "lamalef_count":I
    if-eqz v4, :cond_10

    .line 1790
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "dest":[C
    .end local p2    # "start":I
    .end local p3    # "length":I
    .local v1, "dest":[C
    .local v2, "start":I
    .local v3, "length":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ArabicShaping;->expandCompositChar([CIIII)I

    move-result p1

    .end local p4    # "destSize":I
    .local p1, "destSize":I
    goto :goto_14

    .line 1792
    .end local v1    # "dest":[C
    .end local v2    # "start":I
    .end local v3    # "length":I
    .local p1, "dest":[C
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    .restart local p4    # "destSize":I
    :cond_10
    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "dest":[C
    .end local p2    # "start":I
    .end local p3    # "length":I
    .restart local v1    # "dest":[C
    .restart local v2    # "start":I
    .restart local v3    # "length":I
    move p1, v3

    .line 1795
    .end local p4    # "destSize":I
    .local p1, "destSize":I
    :goto_14
    return p1
.end method

.method private greylist-max-o deshapeNormalize([CII)I
    .registers 13
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1594
    const/4 v0, 0x0

    .line 1595
    .local v0, "lacount":I
    const/4 v1, 0x0

    .line 1596
    .local v1, "yehHamzaComposeEnabled":I
    const/4 v2, 0x0

    .line 1598
    .local v2, "seenComposeEnabled":I
    iget v3, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v4, 0x3800000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_10

    move v3, v6

    goto :goto_11

    :cond_10
    move v3, v5

    .line 1599
    .end local v1    # "yehHamzaComposeEnabled":I
    .local v3, "yehHamzaComposeEnabled":I
    :goto_11
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v4, 0x700000

    and-int/2addr v1, v4

    const/high16 v4, 0x200000

    if-ne v1, v4, :cond_1b

    move v5, v6

    .line 1601
    .end local v2    # "seenComposeEnabled":I
    .local v5, "seenComposeEnabled":I
    :cond_1b
    move v1, p2

    .local v1, "i":I
    add-int v2, v1, p3

    .local v2, "e":I
    :goto_1e
    if-ge v1, v2, :cond_7d

    .line 1602
    aget-char v4, p1, v1

    .line 1604
    .local v4, "ch":C
    const/16 v7, 0x20

    if-ne v3, v6, :cond_46

    const/16 v8, 0x621

    if-eq v4, v8, :cond_2f

    const v8, 0xfe80

    if-ne v4, v8, :cond_46

    :cond_2f
    add-int/lit8 v8, p3, -0x1

    if-ge v1, v8, :cond_46

    add-int/lit8 v8, v1, 0x1

    aget-char v8, p1, v8

    .line 1605
    invoke-static {v8}, Landroid/icu/text/ArabicShaping;->isAlefMaksouraChar(C)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 1606
    aput-char v7, p1, v1

    .line 1607
    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x626

    aput-char v8, p1, v7

    goto :goto_7a

    .line 1608
    :cond_46
    if-ne v5, v6, :cond_5f

    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isTailChar(C)Z

    move-result v8

    if-eqz v8, :cond_5f

    add-int/lit8 v8, p3, -0x1

    if-ge v1, v8, :cond_5f

    add-int/lit8 v8, v1, 0x1

    aget-char v8, p1, v8

    .line 1609
    invoke-static {v8}, Landroid/icu/text/ArabicShaping;->isSeenTailFamilyChar(C)I

    move-result v8

    if-ne v8, v6, :cond_5f

    .line 1610
    aput-char v7, p1, v1

    goto :goto_7a

    .line 1612
    :cond_5f
    const v7, 0xfe70

    if-lt v4, v7, :cond_7a

    const v8, 0xfefc

    if-gt v4, v8, :cond_7a

    .line 1613
    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 1614
    add-int/lit8 v0, v0, 0x1

    .line 1616
    :cond_71
    sget-object v8, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    sub-int v7, v4, v7

    aget v7, v8, v7

    int-to-char v7, v7

    aput-char v7, p1, v1

    .line 1601
    .end local v4    # "ch":C
    :cond_7a
    :goto_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1619
    .end local v1    # "i":I
    .end local v2    # "e":I
    :cond_7d
    return v0
.end method

.method private greylist-max-o expandCompositChar([CIIII)I
    .registers 19
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

    .line 1482
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v2, 0x10003

    and-int/2addr v1, v2

    .line 1483
    .local v1, "lenOptionsLamAlef":I
    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v3, 0x700000

    and-int v7, v2, v3

    .line 1484
    .local v7, "lenOptionsSeen":I
    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v3, 0x3800000

    and-int v8, v2, v3

    .line 1485
    .local v8, "lenOptionsYehHamza":I
    const/4 v9, 0x0

    .line 1487
    .local v9, "spaceNotFound":Z
    iget-boolean v2, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-nez v2, :cond_25

    iget-boolean v2, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    if-nez v2, :cond_25

    .line 1488
    packed-switch v1, :pswitch_data_12e

    goto :goto_25

    .line 1489
    :pswitch_1f
    const/4 v1, 0x2

    move v10, v1

    goto :goto_26

    .line 1490
    :pswitch_22
    const/4 v1, 0x3

    move v10, v1

    goto :goto_26

    .line 1495
    :cond_25
    :goto_25
    move v10, v1

    .end local v1    # "lenOptionsLamAlef":I
    .local v10, "lenOptionsLamAlef":I
    :goto_26
    const/4 v1, 0x1

    move/from16 v11, p5

    if-ne v11, v1, :cond_f3

    .line 1496
    const/high16 v2, 0x10000

    const-string v12, "No spacefor lamalef"

    if-ne v10, v2, :cond_85

    .line 1497
    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz v1, :cond_5d

    .line 1498
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result v1

    .line 1499
    .end local v9    # "spaceNotFound":Z
    .local v1, "spaceNotFound":Z
    if-eqz v1, :cond_41

    .line 1500
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result v1

    move v9, v1

    goto :goto_42

    .line 1499
    :cond_41
    move v9, v1

    .line 1502
    .end local v1    # "spaceNotFound":Z
    .restart local v9    # "spaceNotFound":Z
    :goto_42
    if-eqz v9, :cond_51

    .line 1503
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v4

    move v9, v4

    .line 1505
    :cond_51
    if-nez v9, :cond_57

    move/from16 v0, p3

    goto/16 :goto_12d

    .line 1506
    :cond_57
    new-instance v0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {v0, v12}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1509
    :cond_5d
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result v0

    .line 1510
    .end local v9    # "spaceNotFound":Z
    .local v0, "spaceNotFound":Z
    if-eqz v0, :cond_69

    .line 1511
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result v0

    move v9, v0

    goto :goto_6a

    .line 1510
    :cond_69
    move v9, v0

    .line 1513
    .end local v0    # "spaceNotFound":Z
    .restart local v9    # "spaceNotFound":Z
    :goto_6a
    if-eqz v9, :cond_79

    .line 1514
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v4

    move v9, v4

    .line 1516
    :cond_79
    if-nez v9, :cond_7f

    move/from16 v0, p3

    goto/16 :goto_12d

    .line 1517
    :cond_7f
    new-instance v0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {v0, v12}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1520
    :cond_85
    const/4 v0, 0x2

    if-ne v10, v0, :cond_98

    .line 1521
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result v9

    .line 1522
    if-nez v9, :cond_92

    move/from16 v0, p3

    goto/16 :goto_12d

    .line 1523
    :cond_92
    new-instance v0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {v0, v12}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1525
    :cond_98
    const/4 v0, 0x3

    if-ne v10, v0, :cond_ab

    .line 1526
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result v9

    .line 1527
    if-nez v9, :cond_a5

    move/from16 v0, p3

    goto/16 :goto_12d

    .line 1528
    :cond_a5
    new-instance v0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {v0, v12}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_ab
    if-ne v10, v1, :cond_c5

    .line 1531
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v9

    .line 1532
    if-nez v9, :cond_bf

    move/from16 v0, p3

    goto/16 :goto_12d

    .line 1533
    :cond_bf
    new-instance v0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {v0, v12}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :cond_c5
    if-nez v10, :cond_f0

    .line 1536
    add-int v0, p2, p3

    .local v0, "r":I
    add-int v1, v0, p4

    .local v1, "w":I
    :goto_cb
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p2, :cond_ed

    .line 1537
    aget-char v3, p1, v0

    .line 1538
    .local v3, "ch":C
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 1539
    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x644

    aput-char v4, p1, v1

    .line 1540
    add-int/lit8 v1, v1, -0x1

    sget-object v4, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v5, v3, -0x65c

    aget-char v4, v4, v5

    aput-char v4, p1, v1

    goto :goto_ec

    .line 1542
    :cond_e8
    add-int/lit8 v1, v1, -0x1

    aput-char v3, p1, v1

    .line 1544
    .end local v3    # "ch":C
    :goto_ec
    goto :goto_cb

    .line 1545
    .end local v0    # "r":I
    .end local v1    # "w":I
    :cond_ed
    add-int v0, p3, p4

    .end local p3    # "length":I
    .local v0, "length":I
    goto :goto_12d

    .line 1535
    .end local v0    # "length":I
    .restart local p3    # "length":I
    :cond_f0
    move/from16 v0, p3

    goto :goto_12d

    .line 1548
    :cond_f3
    const/high16 v0, 0x200000

    if-ne v7, v0, :cond_10e

    .line 1549
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v9

    .line 1550
    if-nez v9, :cond_106

    goto :goto_10e

    .line 1551
    :cond_106
    new-instance v0, Landroid/icu/text/ArabicShapingException;

    const-string v1, "No space for Seen tail expansion"

    invoke-direct {v0, v1}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_10e
    :goto_10e
    const/high16 v0, 0x1000000

    if-ne v8, v0, :cond_12b

    .line 1555
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v9

    .line 1556
    if-nez v9, :cond_123

    move/from16 v0, p3

    goto :goto_12d

    .line 1557
    :cond_123
    new-instance v0, Landroid/icu/text/ArabicShapingException;

    const-string v1, "No space for YehHamza expansion"

    invoke-direct {v0, v1}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_12b
    move/from16 v0, p3

    .line 1561
    .end local p3    # "length":I
    .restart local v0    # "length":I
    :goto_12d
    return v0

    :pswitch_data_12e
    .packed-switch 0x2
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method private greylist-max-o expandCompositCharAtBegin([CIII)Z
    .registers 11
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "lacount"    # I

    .line 1366
    const/4 v0, 0x0

    .line 1368
    .local v0, "spaceNotFound":Z
    invoke-static {p1, p2, p3}, Landroid/icu/text/ArabicShaping;->countSpacesRight([CII)I

    move-result v1

    if-le p4, v1, :cond_9

    .line 1369
    const/4 v0, 0x1

    .line 1370
    return v0

    .line 1372
    :cond_9
    add-int v1, p2, p3

    sub-int/2addr v1, p4

    .local v1, "r":I
    add-int v2, p2, p3

    .local v2, "w":I
    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p2, :cond_30

    .line 1373
    aget-char v3, p1, v1

    .line 1374
    .local v3, "ch":C
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1375
    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x644

    aput-char v4, p1, v2

    .line 1376
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v5, v3, -0x65c

    aget-char v4, v4, v5

    aput-char v4, p1, v2

    goto :goto_2f

    .line 1378
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    aput-char v3, p1, v2

    .line 1380
    .end local v3    # "ch":C
    :goto_2f
    goto :goto_e

    .line 1381
    .end local v1    # "r":I
    .end local v2    # "w":I
    :cond_30
    return v0
.end method

.method private greylist-max-o expandCompositCharAtEnd([CIII)Z
    .registers 13
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "lacount"    # I

    .line 1396
    const/4 v0, 0x0

    .line 1398
    .local v0, "spaceNotFound":Z
    invoke-static {p1, p2, p3}, Landroid/icu/text/ArabicShaping;->countSpacesLeft([CII)I

    move-result v1

    if-le p4, v1, :cond_9

    .line 1399
    const/4 v0, 0x1

    .line 1400
    return v0

    .line 1402
    :cond_9
    add-int v1, p2, p4

    .local v1, "r":I
    move v2, p2

    .local v2, "w":I
    add-int v3, p2, p3

    .local v3, "e":I
    :goto_e
    if-ge v1, v3, :cond_31

    .line 1403
    aget-char v4, p1, v1

    .line 1404
    .local v4, "ch":C
    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1405
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "w":I
    .local v5, "w":I
    sget-object v6, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v7, v4, -0x65c

    aget-char v6, v6, v7

    aput-char v6, p1, v2

    .line 1406
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "w":I
    .restart local v2    # "w":I
    const/16 v6, 0x644

    aput-char v6, p1, v5

    goto :goto_2e

    .line 1408
    :cond_29
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "w":I
    .restart local v5    # "w":I
    aput-char v4, p1, v2

    move v2, v5

    .line 1402
    .end local v4    # "ch":C
    .end local v5    # "w":I
    .restart local v2    # "w":I
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1411
    .end local v1    # "r":I
    .end local v2    # "w":I
    .end local v3    # "e":I
    :cond_31
    return v0
.end method

.method private greylist-max-o expandCompositCharAtNear([CIIIII)Z
    .registers 13
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "yehHamzaOption"    # I
    .param p5, "seenTailOption"    # I
    .param p6, "lamAlefOption"    # I

    .line 1424
    const/4 v0, 0x0

    .line 1428
    .local v0, "spaceNotFound":Z
    aget-char v1, p1, p2

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1429
    const/4 v0, 0x1

    .line 1430
    return v0

    .line 1432
    :cond_b
    add-int v1, p2, p3

    .local v1, "i":I
    :goto_d
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p2, :cond_76

    .line 1433
    aget-char v2, p1, v1

    .line 1434
    .local v2, "ch":C
    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne p6, v4, :cond_37

    invoke-static {v2}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1435
    if-le v1, p2, :cond_35

    add-int/lit8 v4, v1, -0x1

    aget-char v4, p1, v4

    if-ne v4, v3, :cond_35

    .line 1436
    const/16 v3, 0x644

    aput-char v3, p1, v1

    .line 1437
    add-int/lit8 v1, v1, -0x1

    sget-object v3, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v4, v2, -0x65c

    aget-char v3, v3, v4

    aput-char v3, p1, v1

    goto :goto_75

    .line 1439
    :cond_35
    const/4 v0, 0x1

    .line 1440
    return v0

    .line 1442
    :cond_37
    if-ne p5, v4, :cond_50

    invoke-static {v2}, Landroid/icu/text/ArabicShaping;->isSeenTailFamilyChar(C)I

    move-result v5

    if-ne v5, v4, :cond_50

    .line 1443
    if-le v1, p2, :cond_4e

    add-int/lit8 v4, v1, -0x1

    aget-char v4, p1, v4

    if-ne v4, v3, :cond_4e

    .line 1444
    add-int/lit8 v3, v1, -0x1

    iget-char v4, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    aput-char v4, p1, v3

    goto :goto_75

    .line 1446
    :cond_4e
    const/4 v0, 0x1

    .line 1447
    return v0

    .line 1449
    :cond_50
    if-ne p4, v4, :cond_75

    invoke-static {v2}, Landroid/icu/text/ArabicShaping;->isYehHamzaChar(C)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1451
    if-le v1, p2, :cond_73

    add-int/lit8 v4, v1, -0x1

    aget-char v4, p1, v4

    if-ne v4, v3, :cond_73

    .line 1452
    sget-object v3, Landroid/icu/text/ArabicShaping;->yehHamzaToYeh:[C

    const v4, 0xfe89

    sub-int v4, v2, v4

    aget-char v3, v3, v4

    aput-char v3, p1, v1

    .line 1453
    add-int/lit8 v3, v1, -0x1

    const v4, 0xfe80

    aput-char v4, p1, v3

    goto :goto_75

    .line 1455
    :cond_73
    const/4 v0, 0x1

    .line 1456
    return v0

    .line 1461
    .end local v2    # "ch":C
    :cond_75
    :goto_75
    goto :goto_d

    .line 1462
    .end local v1    # "i":I
    :cond_76
    const/4 v1, 0x0

    return v1
.end method

.method private static greylist-max-o flipArray([CIII)I
    .registers 7
    .param p0, "dest"    # [C
    .param p1, "start"    # I
    .param p2, "e"    # I
    .param p3, "w"    # I

    .line 1191
    if-le p3, p1, :cond_11

    .line 1193
    move v0, p3

    .line 1194
    .local v0, "r":I
    move p3, p1

    .line 1195
    :goto_4
    if-ge v0, p2, :cond_12

    .line 1196
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "w":I
    .local v1, "w":I
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "r":I
    .local v2, "r":I
    aget-char v0, p0, v0

    aput-char v0, p0, p3

    move p3, v1

    move v0, v2

    goto :goto_4

    .line 1199
    .end local v1    # "w":I
    .end local v2    # "r":I
    .restart local p3    # "w":I
    :cond_11
    move p3, p2

    .line 1201
    :cond_12
    return p3
.end method

.method private static greylist-max-o getLink(C)I
    .registers 3
    .param p0, "ch"    # C

    .line 926
    const/16 v0, 0x622

    if-lt p0, v0, :cond_f

    const/16 v0, 0x6d3

    if-gt p0, v0, :cond_f

    .line 927
    sget-object v0, Landroid/icu/text/ArabicShaping;->araLink:[I

    add-int/lit16 v1, p0, -0x622

    aget v0, v0, v1

    return v0

    .line 928
    :cond_f
    const/16 v0, 0x200d

    if-ne p0, v0, :cond_15

    .line 929
    const/4 v0, 0x3

    return v0

    .line 930
    :cond_15
    const/16 v0, 0x206d

    if-lt p0, v0, :cond_1f

    const/16 v0, 0x206f

    if-gt p0, v0, :cond_1f

    .line 931
    const/4 v0, 0x4

    return v0

    .line 932
    :cond_1f
    const v0, 0xfe70

    if-lt p0, v0, :cond_30

    const v1, 0xfefc

    if-gt p0, v1, :cond_30

    .line 933
    sget-object v1, Landroid/icu/text/ArabicShaping;->presLink:[I

    sub-int v0, p0, v0

    aget v0, v1, v0

    return v0

    .line 935
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o handleGeneratedSpaces([CII)I
    .registers 21
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Landroid/icu/text/ArabicShaping;->options:I

    const v5, 0x10003

    and-int/2addr v4, v5

    .line 1250
    .local v4, "lenOptionsLamAlef":I
    iget v5, v0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v6, 0xe0000

    and-int/2addr v5, v6

    .line 1251
    .local v5, "lenOptionsTashkeel":I
    const/4 v6, 0x0

    .line 1252
    .local v6, "lamAlefOn":Z
    const/4 v7, 0x0

    .line 1254
    .local v7, "tashkeelOn":Z
    iget-boolean v8, v0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    iget-boolean v10, v0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    xor-int/2addr v10, v9

    and-int/2addr v8, v10

    if-eqz v8, :cond_2f

    .line 1255
    packed-switch v4, :pswitch_data_d8

    goto :goto_26

    .line 1256
    :pswitch_23
    const/4 v4, 0x2

    goto :goto_26

    .line 1257
    :pswitch_25
    const/4 v4, 0x3

    .line 1260
    :goto_26
    sparse-switch v5, :sswitch_data_e0

    goto :goto_2f

    .line 1262
    :sswitch_2a
    const/high16 v5, 0x40000

    goto :goto_2f

    .line 1261
    :sswitch_2d
    const/high16 v5, 0x60000

    .line 1268
    :cond_2f
    :goto_2f
    const/16 v8, 0x20

    const v10, 0xffff

    if-ne v4, v9, :cond_47

    .line 1269
    move/from16 v9, p2

    .local v9, "i":I
    add-int v11, v9, v3

    .local v11, "e":I
    :goto_3a
    if-ge v9, v11, :cond_45

    .line 1270
    aget-char v12, v1, v9

    if-ne v12, v10, :cond_42

    .line 1271
    aput-char v8, v1, v9

    .line 1269
    :cond_42
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .end local v9    # "i":I
    .end local v11    # "e":I
    :cond_45
    goto/16 :goto_d7

    .line 1277
    :cond_47
    add-int v9, v2, v3

    .line 1278
    .local v9, "e":I
    invoke-static {v1, v3, v10}, Landroid/icu/text/ArabicShaping;->countSpaceSub([CIC)I

    move-result v11

    .line 1279
    .local v11, "wL":I
    const v12, 0xfffe

    invoke-static {v1, v3, v12}, Landroid/icu/text/ArabicShaping;->countSpaceSub([CIC)I

    move-result v13

    .line 1281
    .local v13, "wT":I
    const/4 v14, 0x2

    if-ne v4, v14, :cond_58

    .line 1282
    const/4 v6, 0x1

    .line 1284
    :cond_58
    const/high16 v15, 0x60000

    if-ne v5, v15, :cond_5d

    .line 1285
    const/4 v7, 0x1

    .line 1289
    :cond_5d
    if-eqz v6, :cond_6b

    if-ne v4, v14, :cond_6b

    .line 1290
    invoke-static {v1, v2, v9, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1291
    :goto_64
    if-le v11, v2, :cond_6b

    .line 1292
    add-int/lit8 v11, v11, -0x1

    aput-char v8, v1, v11

    goto :goto_64

    .line 1296
    :cond_6b
    if-eqz v7, :cond_79

    if-ne v5, v15, :cond_79

    .line 1297
    invoke-static {v1, v2, v9, v12}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1298
    :goto_72
    if-le v13, v2, :cond_79

    .line 1299
    add-int/lit8 v13, v13, -0x1

    aput-char v8, v1, v13

    goto :goto_72

    .line 1303
    :cond_79
    const/4 v6, 0x0

    .line 1304
    const/4 v7, 0x0

    .line 1306
    if-nez v4, :cond_7e

    .line 1307
    const/4 v6, 0x1

    .line 1309
    :cond_7e
    const/high16 v14, 0x80000

    if-ne v5, v14, :cond_83

    .line 1310
    const/4 v7, 0x1

    .line 1313
    :cond_83
    if-eqz v6, :cond_90

    if-nez v4, :cond_90

    .line 1314
    invoke-static {v1, v2, v9, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1315
    invoke-static {v1, v2, v9, v11}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v11

    .line 1316
    sub-int v3, v11, v2

    .line 1318
    .end local p3    # "length":I
    .local v3, "length":I
    :cond_90
    if-eqz v7, :cond_9d

    if-ne v5, v14, :cond_9d

    .line 1319
    invoke-static {v1, v2, v9, v12}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1320
    invoke-static {v1, v2, v9, v13}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v13

    .line 1321
    sub-int v3, v13, v2

    .line 1324
    :cond_9d
    const/4 v6, 0x0

    .line 1325
    const/4 v7, 0x0

    .line 1327
    const/high16 v14, 0x10000

    const/4 v15, 0x3

    if-eq v4, v15, :cond_a6

    if-ne v4, v14, :cond_a7

    .line 1329
    :cond_a6
    const/4 v6, 0x1

    .line 1331
    :cond_a7
    move/from16 v16, v8

    const/high16 v8, 0x40000

    if-ne v5, v8, :cond_ae

    .line 1332
    const/4 v7, 0x1

    .line 1335
    :cond_ae
    if-eqz v6, :cond_c4

    if-eq v4, v15, :cond_b4

    if-ne v4, v14, :cond_c4

    .line 1337
    :cond_b4
    invoke-static {v1, v2, v9, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1338
    invoke-static {v1, v2, v9, v11}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v10

    move v11, v10

    .line 1339
    :goto_bc
    if-ge v11, v9, :cond_c4

    .line 1340
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "wL":I
    .local v10, "wL":I
    aput-char v16, v1, v11

    move v11, v10

    goto :goto_bc

    .line 1343
    .end local v10    # "wL":I
    .restart local v11    # "wL":I
    :cond_c4
    if-eqz v7, :cond_d7

    if-ne v5, v8, :cond_d7

    .line 1344
    invoke-static {v1, v2, v9, v12}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1345
    invoke-static {v1, v2, v9, v13}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v8

    .line 1346
    .end local v13    # "wT":I
    .local v8, "wT":I
    :goto_cf
    if-ge v8, v9, :cond_d7

    .line 1347
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "wT":I
    .local v10, "wT":I
    aput-char v16, v1, v8

    move v8, v10

    goto :goto_cf

    .line 1352
    .end local v9    # "e":I
    .end local v10    # "wT":I
    .end local v11    # "wL":I
    :cond_d7
    :goto_d7
    return v3

    :pswitch_data_d8
    .packed-switch 0x2
        :pswitch_25
        :pswitch_23
    .end packed-switch

    :sswitch_data_e0
    .sparse-switch
        0x40000 -> :sswitch_2d
        0x60000 -> :sswitch_2a
    .end sparse-switch
.end method

.method private static greylist-max-o handleTashkeelWithTatweel([CI)I
    .registers 6
    .param p0, "dest"    # [C
    .param p1, "sourceLength"    # I

    .line 1215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_36

    .line 1216
    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelOnTatweelChar(C)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 1217
    const/16 v1, 0x640

    aput-char v1, p0, v0

    goto :goto_33

    .line 1218
    :cond_11
    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelOnTatweelChar(C)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_20

    .line 1219
    const v1, 0xfe7d

    aput-char v1, p0, v0

    goto :goto_33

    .line 1220
    :cond_20
    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isIsolatedTashkeelChar(C)I

    move-result v1

    if-ne v1, v2, :cond_33

    aget-char v1, p0, v0

    const v2, 0xfe7c

    if-eq v1, v2, :cond_33

    .line 1221
    const/16 v1, 0x20

    aput-char v1, p0, v0

    .line 1215
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1224
    :cond_36
    return p1
.end method

.method private greylist-max-o internalShape([CII[CII)I
    .registers 20
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

    .line 1805
    move/from16 v3, p3

    const/4 v6, 0x0

    if-nez v3, :cond_6

    .line 1806
    return v6

    .line 1809
    :cond_6
    if-nez p6, :cond_1c

    .line 1810
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v1, 0x10003

    and-int/2addr v0, v1

    if-nez v0, :cond_1b

    .line 1813
    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->calculateSize([CII)I

    move-result v0

    return v0

    .line 1815
    :cond_1b
    return v3

    .line 1820
    :cond_1c
    mul-int/lit8 v0, v3, 0x2

    new-array v1, v0, [C

    .line 1821
    .local v1, "temp":[C
    invoke-static {p1, p2, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1823
    iget-boolean v0, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz v0, :cond_2a

    .line 1824
    invoke-static {v1, v6, v3}, Landroid/icu/text/ArabicShaping;->invertBuffer([CII)V

    .line 1827
    :cond_2a
    move/from16 v7, p3

    .line 1829
    .local v7, "outputSize":I
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_fc

    move/from16 v4, p6

    move v10, v7

    goto :goto_7e

    .line 1831
    :sswitch_37
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result v7

    .line 1832
    move v10, v7

    goto :goto_7e

    .line 1851
    :sswitch_42
    move/from16 v4, p6

    invoke-direct {p0, v1, v6, v3, v4}, Landroid/icu/text/ArabicShaping;->deShapeUnicode([CIII)I

    move-result v7

    .line 1852
    move v10, v7

    goto :goto_7e

    .line 1835
    :sswitch_4a
    move/from16 v4, p6

    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v8, 0xe0000

    and-int/2addr v2, v8

    const/high16 v9, 0xc0000

    if-eqz v2, :cond_67

    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v2, v8

    if-eq v2, v9, :cond_67

    .line 1838
    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result v7

    move/from16 v3, p3

    move/from16 v4, p6

    move v10, v7

    goto :goto_7e

    .line 1841
    :cond_67
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result v7

    .line 1844
    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v2, v8

    if-ne v2, v9, :cond_7d

    .line 1845
    invoke-static {v1, v3}, Landroid/icu/text/ArabicShaping;->handleTashkeelWithTatweel([CI)I

    move-result v7

    move v10, v7

    goto :goto_7e

    .line 1844
    :cond_7d
    move v10, v7

    .line 1858
    .end local v7    # "outputSize":I
    .local v10, "outputSize":I
    :goto_7e
    if-gt v10, v4, :cond_f0

    .line 1862
    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v2, v2, 0xe0

    if-eqz v2, :cond_e1

    .line 1863
    const/16 v2, 0x30

    .line 1864
    .local v2, "digitBase":C
    iget v5, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v5, v5, 0x100

    sparse-switch v5, :sswitch_data_10a

    move v11, v2

    goto :goto_98

    .line 1870
    :sswitch_91
    const/16 v2, 0x6f0

    .line 1871
    move v11, v2

    goto :goto_98

    .line 1866
    :sswitch_95
    const/16 v2, 0x660

    .line 1867
    move v11, v2

    .line 1877
    .end local v2    # "digitBase":C
    .local v11, "digitBase":C
    :goto_98
    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v2, v2, 0xe0

    sparse-switch v2, :sswitch_data_114

    goto :goto_e1

    .line 1908
    :sswitch_a0
    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object v7, p0

    move-object v8, v1

    .end local v1    # "temp":[C
    .local v8, "temp":[C
    invoke-direct/range {v7 .. v12}, Landroid/icu/text/ArabicShaping;->shapeToArabicDigitsWithContext([CIICZ)V

    .line 1909
    .end local v8    # "temp":[C
    .restart local v1    # "temp":[C
    goto :goto_e1

    .line 1904
    :sswitch_a8
    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, v1

    .end local v1    # "temp":[C
    .restart local v8    # "temp":[C
    invoke-direct/range {v7 .. v12}, Landroid/icu/text/ArabicShaping;->shapeToArabicDigitsWithContext([CIICZ)V

    .line 1905
    .end local v8    # "temp":[C
    .restart local v1    # "temp":[C
    goto :goto_e1

    .line 1892
    :sswitch_b0
    add-int/lit8 v2, v11, 0x9

    int-to-char v2, v2

    .line 1893
    .local v2, "digitTop":C
    rsub-int/lit8 v5, v11, 0x30

    .line 1894
    .local v5, "digitDelta":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b6
    if-ge v7, v10, :cond_c7

    .line 1895
    aget-char v8, v1, v7

    .line 1896
    .local v8, "ch":C
    if-gt v8, v2, :cond_c4

    if-lt v8, v11, :cond_c4

    .line 1897
    aget-char v9, v1, v7

    add-int/2addr v9, v5

    int-to-char v9, v9

    aput-char v9, v1, v7

    .line 1894
    .end local v8    # "ch":C
    :cond_c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    .line 1901
    .end local v2    # "digitTop":C
    .end local v5    # "digitDelta":I
    .end local v7    # "i":I
    :cond_c7
    goto :goto_e1

    .line 1880
    :sswitch_c8
    add-int/lit8 v2, v11, -0x30

    .line 1881
    .local v2, "digitDelta":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_cb
    if-ge v5, v10, :cond_e0

    .line 1882
    aget-char v7, v1, v5

    .line 1883
    .local v7, "ch":C
    const/16 v8, 0x39

    if-gt v7, v8, :cond_dd

    const/16 v8, 0x30

    if-lt v7, v8, :cond_dd

    .line 1884
    aget-char v8, v1, v5

    add-int/2addr v8, v2

    int-to-char v8, v8

    aput-char v8, v1, v5

    .line 1881
    .end local v7    # "ch":C
    :cond_dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_cb

    .line 1888
    .end local v2    # "digitDelta":I
    .end local v5    # "i":I
    :cond_e0
    nop

    .line 1916
    .end local v11    # "digitBase":C
    :cond_e1
    :goto_e1
    iget-boolean v2, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz v2, :cond_e8

    .line 1917
    invoke-static {v1, v6, v10}, Landroid/icu/text/ArabicShaping;->invertBuffer([CII)V

    .line 1920
    :cond_e8
    move-object/from16 v2, p4

    move/from16 v5, p5

    invoke-static {v1, v6, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1922
    return v10

    .line 1859
    :cond_f0
    move-object/from16 v2, p4

    move/from16 v5, p5

    new-instance v6, Landroid/icu/text/ArabicShapingException;

    const-string v7, "not enough room for result data"

    invoke-direct {v6, v7}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_data_fc
    .sparse-switch
        0x8 -> :sswitch_4a
        0x10 -> :sswitch_42
        0x18 -> :sswitch_37
    .end sparse-switch

    :sswitch_data_10a
    .sparse-switch
        0x0 -> :sswitch_95
        0x100 -> :sswitch_91
    .end sparse-switch

    :sswitch_data_114
    .sparse-switch
        0x20 -> :sswitch_c8
        0x40 -> :sswitch_b0
        0x60 -> :sswitch_a8
        0x80 -> :sswitch_a0
    .end sparse-switch
.end method

.method private static greylist-max-o invertBuffer([CII)V
    .registers 7
    .param p0, "buffer"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 871
    move v0, p1

    .local v0, "i":I
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_5
    if-ge v0, v1, :cond_14

    .line 872
    aget-char v2, p0, v0

    .line 873
    .local v2, "temp":C
    aget-char v3, p0, v1

    aput-char v3, p0, v0

    .line 874
    aput-char v2, p0, v1

    .line 871
    .end local v2    # "temp":C
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 876
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_14
    return-void
.end method

.method private static greylist-max-o isAlefChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1091
    const/16 v0, 0x622

    if-eq p0, v0, :cond_13

    const/16 v0, 0x623

    if-eq p0, v0, :cond_13

    const/16 v0, 0x625

    if-eq p0, v0, :cond_13

    const/16 v0, 0x627

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static greylist isAlefMaksouraChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1025
    const v0, 0xfeef

    if-eq p0, v0, :cond_11

    const v0, 0xfef0

    if-eq p0, v0, :cond_11

    const/16 v0, 0x649

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static greylist-max-o isIsolatedTashkeelChar(C)I
    .registers 4
    .param p0, "ch"    # C

    .line 1077
    const/4 v0, 0x1

    const v1, 0xfe70

    if-lt p0, v1, :cond_1d

    const v2, 0xfe7f

    if-gt p0, v2, :cond_1d

    const v2, 0xfe73

    if-eq p0, v2, :cond_1d

    const v2, 0xfe75

    if-eq p0, v2, :cond_1d

    .line 1078
    sget-object v2, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    sub-int v1, p0, v1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    return v0

    .line 1079
    :cond_1d
    const v1, 0xfc5e

    if-lt p0, v1, :cond_28

    const v1, 0xfc63

    if-gt p0, v1, :cond_28

    .line 1080
    return v0

    .line 1082
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o isLamAlefChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1099
    const v0, 0xfef5

    if-lt p0, v0, :cond_c

    const v0, 0xfefc

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static greylist-max-o isNormalizedLamAlefChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1103
    const/16 v0, 0x65c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x65f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static greylist-max-o isSeenFamilyChar(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 996
    const/16 v0, 0x633

    if-lt p0, v0, :cond_a

    const/16 v0, 0x636

    if-gt p0, v0, :cond_a

    .line 997
    const/4 v0, 0x1

    return v0

    .line 999
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist isSeenTailFamilyChar(C)I
    .registers 3
    .param p0, "ch"    # C

    .line 983
    const v0, 0xfeb1

    if-lt p0, v0, :cond_11

    const v1, 0xfebf

    if-ge p0, v1, :cond_11

    .line 984
    sget-object v1, Landroid/icu/text/ArabicShaping;->tailFamilyIsolatedFinal:[I

    sub-int v0, p0, v0

    aget v0, v1, v0

    return v0

    .line 986
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist isTailChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1011
    const/16 v0, 0x200b

    if-eq p0, v0, :cond_c

    const v0, 0xfe73

    if-ne p0, v0, :cond_a

    goto :goto_c

    .line 1014
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 1012
    :cond_c
    :goto_c
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isTashkeelChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 972
    const/16 v0, 0x64b

    if-lt p0, v0, :cond_a

    const/16 v0, 0x652

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static greylist-max-o isTashkeelCharFE(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1048
    const v0, 0xfe75

    if-eq p0, v0, :cond_11

    const v0, 0xfe70

    if-lt p0, v0, :cond_11

    const v0, 0xfe7f

    if-gt p0, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private static greylist-max-o isTashkeelOnTatweelChar(C)I
    .registers 4
    .param p0, "ch"    # C

    .line 1059
    const v0, 0xfe7d

    const v1, 0xfe70

    if-lt p0, v1, :cond_20

    const v2, 0xfe7f

    if-gt p0, v2, :cond_20

    const v2, 0xfe73

    if-eq p0, v2, :cond_20

    const v2, 0xfe75

    if-eq p0, v2, :cond_20

    if-eq p0, v0, :cond_20

    .line 1061
    sget-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    sub-int v1, p0, v1

    aget v0, v0, v1

    return v0

    .line 1062
    :cond_20
    const v1, 0xfcf2

    if-lt p0, v1, :cond_2a

    const v1, 0xfcf4

    if-le p0, v1, :cond_2c

    :cond_2a
    if-ne p0, v0, :cond_2e

    .line 1063
    :cond_2c
    const/4 v0, 0x2

    return v0

    .line 1065
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist isYehHamzaChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1035
    const v0, 0xfe89

    if-eq p0, v0, :cond_d

    const v0, 0xfe8a

    if-ne p0, v0, :cond_b

    goto :goto_d

    .line 1038
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 1036
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o normalize([CII)I
    .registers 10
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, "lacount":I
    move v1, p2

    .local v1, "i":I
    add-int v2, v1, p3

    .local v2, "e":I
    :goto_4
    if-ge v1, v2, :cond_26

    .line 1573
    aget-char v3, p1, v1

    .line 1574
    .local v3, "ch":C
    const v4, 0xfe70

    if-lt v3, v4, :cond_23

    const v5, 0xfefc

    if-gt v3, v5, :cond_23

    .line 1575
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1576
    add-int/lit8 v0, v0, 0x1

    .line 1578
    :cond_1a
    sget-object v5, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    sub-int v4, v3, v4

    aget v4, v5, v4

    int-to-char v4, v4

    aput-char v4, p1, v1

    .line 1572
    .end local v3    # "ch":C
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1581
    .end local v1    # "i":I
    .end local v2    # "e":I
    :cond_26
    return v0
.end method

.method private greylist-max-o shapeToArabicDigitsWithContext([CIICZ)V
    .registers 10
    .param p1, "dest"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "digitBase"    # C
    .param p5, "lastStrongWasAL"    # Z

    .line 837
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    .line 838
    .local v0, "bdp":Landroid/icu/impl/UBiDiProps;
    add-int/lit8 v1, p4, -0x30

    int-to-char p4, v1

    .line 840
    add-int v1, p2, p3

    .local v1, "i":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p2, :cond_26

    .line 841
    aget-char v2, p1, v1

    .line 842
    .local v2, "ch":C
    invoke-virtual {v0, v2}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_28

    goto :goto_25

    .line 848
    :sswitch_15
    const/4 p5, 0x1

    .line 849
    goto :goto_25

    .line 851
    :sswitch_17
    if-eqz p5, :cond_25

    const/16 v3, 0x39

    if-gt v2, v3, :cond_25

    .line 852
    add-int v3, v2, p4

    int-to-char v3, v3

    aput-char v3, p1, v1

    goto :goto_25

    .line 845
    :sswitch_23
    const/4 p5, 0x0

    .line 846
    nop

    .line 858
    .end local v2    # "ch":C
    :cond_25
    :goto_25
    goto :goto_7

    .line 859
    .end local v1    # "i":I
    :cond_26
    return-void

    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_23
        0x1 -> :sswitch_23
        0x2 -> :sswitch_17
        0xd -> :sswitch_15
    .end sparse-switch
.end method

.method private greylist-max-o shapeUnicode([CIIII)I
    .registers 27
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

    .line 1633
    move/from16 v0, p5

    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->normalize([CII)I

    move-result v5

    .line 1640
    .local v5, "lamalef_count":I
    const/4 v1, 0x0

    .local v1, "lamalef_found":Z
    const/4 v2, 0x0

    .line 1641
    .local v2, "seenfam_found":Z
    const/4 v3, 0x0

    .local v3, "yehhamza_found":Z
    const/4 v4, 0x0

    .line 1642
    .local v4, "tashkeel_found":Z
    add-int v6, p2, p3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 1643
    .local v6, "i":I
    aget-char v8, p1, v6

    invoke-static {v8}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v8

    .line 1644
    .local v8, "currLink":I
    const/4 v9, 0x0

    .line 1645
    .local v9, "nextLink":I
    const/4 v10, 0x0

    .line 1646
    .local v10, "prevLink":I
    const/4 v11, 0x0

    .line 1648
    .local v11, "lastLink":I
    move v12, v6

    .line 1649
    .local v12, "lastPos":I
    const/4 v13, -0x2

    .line 1650
    .local v13, "nx":I
    const/4 v14, 0x0

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move v10, v3

    move v11, v4

    move v13, v8

    move v14, v9

    move v8, v1

    move v9, v2

    .line 1652
    .end local v1    # "lamalef_found":Z
    .end local v2    # "seenfam_found":Z
    .end local v3    # "yehhamza_found":Z
    .end local v4    # "tashkeel_found":Z
    .end local v6    # "i":I
    .local v8, "lamalef_found":Z
    .local v9, "seenfam_found":Z
    .local v10, "yehhamza_found":Z
    .local v11, "tashkeel_found":Z
    .local v12, "i":I
    .local v13, "currLink":I
    .local v14, "nextLink":I
    .local v15, "prevLink":I
    .local v16, "lastLink":I
    .local v17, "lastPos":I
    .local v18, "nx":I
    .local v19, "nw":I
    :goto_29
    if-ltz v12, :cond_155

    .line 1654
    const v1, 0xff00

    and-int/2addr v1, v13

    const/4 v2, -0x1

    if-nez v1, :cond_3f

    aget-char v1, p1, v12

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelChar(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_3f

    :cond_3b
    move/from16 v3, v18

    goto/16 :goto_12b

    .line 1655
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v12, -0x1

    .line 1656
    .end local v19    # "nw":I
    .local v1, "nw":I
    const/4 v3, -0x2

    .line 1657
    .end local v18    # "nx":I
    .local v3, "nx":I
    :goto_42
    if-gez v3, :cond_5a

    .line 1658
    if-ne v1, v2, :cond_4b

    .line 1659
    const/4 v14, 0x0

    .line 1660
    const v3, 0x7fffffff

    goto :goto_42

    .line 1662
    :cond_4b
    aget-char v4, p1, v1

    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v14

    .line 1663
    and-int/lit8 v4, v14, 0x4

    if-nez v4, :cond_57

    .line 1664
    move v3, v1

    goto :goto_42

    .line 1666
    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    .line 1671
    :cond_5a
    and-int/lit8 v4, v13, 0x20

    if-lez v4, :cond_7b

    and-int/lit8 v4, v16, 0x10

    if-lez v4, :cond_7b

    .line 1672
    const/4 v8, 0x1

    .line 1673
    aget-char v4, p1, v12

    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->changeLamAlef(C)C

    move-result v4

    .line 1674
    .local v4, "wLamalef":C
    if-eqz v4, :cond_75

    .line 1676
    const v6, 0xffff

    aput-char v6, p1, v12

    .line 1677
    aput-char v4, p1, v17

    .line 1678
    move/from16 v6, v17

    move v12, v6

    .line 1681
    :cond_75
    move/from16 v16, v15

    .line 1682
    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v13

    .line 1684
    .end local v4    # "wLamalef":C
    :cond_7b
    const/16 v4, 0x626

    const/16 v6, 0x20

    if-lez v12, :cond_97

    add-int/lit8 v18, v12, -0x1

    aget-char v2, p1, v18

    if-ne v2, v6, :cond_97

    .line 1686
    aget-char v2, p1, v12

    invoke-static {v2}, Landroid/icu/text/ArabicShaping;->isSeenFamilyChar(C)I

    move-result v2

    if-ne v2, v7, :cond_91

    .line 1687
    const/4 v9, 0x1

    goto :goto_a8

    .line 1688
    :cond_91
    aget-char v2, p1, v12

    if-ne v2, v4, :cond_a8

    .line 1689
    const/4 v10, 0x1

    goto :goto_a8

    .line 1692
    :cond_97
    if-nez v12, :cond_a8

    .line 1693
    aget-char v2, p1, v12

    invoke-static {v2}, Landroid/icu/text/ArabicShaping;->isSeenFamilyChar(C)I

    move-result v2

    if-ne v2, v7, :cond_a3

    .line 1694
    const/4 v9, 0x1

    goto :goto_a8

    .line 1695
    :cond_a3
    aget-char v2, p1, v12

    if-ne v2, v4, :cond_a8

    .line 1696
    const/4 v10, 0x1

    .line 1705
    :cond_a8
    :goto_a8
    aget-char v2, p1, v12

    invoke-static {v2}, Landroid/icu/text/ArabicShaping;->specialChar(C)I

    move-result v2

    .line 1707
    .local v2, "flag":I
    sget-object v4, Landroid/icu/text/ArabicShaping;->shapeTable:[[[I

    and-int/lit8 v18, v14, 0x3

    aget-object v4, v4, v18

    and-int/lit8 v18, v16, 0x3

    aget-object v4, v4, v18

    and-int/lit8 v18, v13, 0x3

    aget v4, v4, v18

    .line 1711
    .local v4, "shape":I
    const/4 v6, 0x2

    if-ne v2, v7, :cond_c2

    .line 1712
    and-int/lit8 v4, v4, 0x1

    goto :goto_f4

    .line 1713
    :cond_c2
    if-ne v2, v6, :cond_f4

    .line 1714
    if-nez v0, :cond_e8

    and-int/lit8 v20, v16, 0x2

    if-eqz v20, :cond_e8

    and-int/lit8 v20, v14, 0x1

    if-eqz v20, :cond_e8

    aget-char v7, p1, v12

    const/16 v6, 0x64c

    if-eq v7, v6, :cond_e8

    aget-char v6, p1, v12

    const/16 v7, 0x64d

    if-eq v6, v7, :cond_e8

    and-int/lit8 v6, v14, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_e6

    and-int/lit8 v6, v16, 0x10

    const/16 v7, 0x10

    if-eq v6, v7, :cond_e8

    .line 1722
    :cond_e6
    const/4 v4, 0x1

    goto :goto_f4

    .line 1724
    :cond_e8
    const/4 v6, 0x2

    if-ne v0, v6, :cond_f3

    aget-char v6, p1, v12

    const/16 v7, 0x651

    if-ne v6, v7, :cond_f3

    .line 1725
    const/4 v4, 0x1

    goto :goto_f4

    .line 1728
    :cond_f3
    const/4 v4, 0x0

    .line 1731
    :cond_f4
    :goto_f4
    const/4 v7, 0x2

    if-ne v2, v7, :cond_11e

    .line 1732
    if-ne v0, v7, :cond_10c

    aget-char v7, p1, v12

    const/16 v6, 0x651

    const v18, 0xfe70

    if-eq v7, v6, :cond_10f

    .line 1733
    const v6, 0xfffe

    aput-char v6, p1, v12

    .line 1734
    const/4 v6, 0x1

    move/from16 v19, v1

    move v11, v6

    .end local v11    # "tashkeel_found":Z
    .local v6, "tashkeel_found":Z
    goto :goto_12b

    .line 1732
    .end local v6    # "tashkeel_found":Z
    .restart local v11    # "tashkeel_found":Z
    :cond_10c
    const v18, 0xfe70

    .line 1737
    :cond_10f
    sget-object v6, Landroid/icu/text/ArabicShaping;->irrelevantPos:[I

    aget-char v7, p1, v12

    add-int/lit16 v7, v7, -0x64b

    aget v6, v6, v7

    add-int v6, v6, v18

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, p1, v12

    goto :goto_129

    .line 1741
    :cond_11e
    const v18, 0xfe70

    shr-int/lit8 v6, v13, 0x8

    add-int v6, v6, v18

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, p1, v12

    .line 1746
    .end local v2    # "flag":I
    .end local v4    # "shape":I
    :goto_129
    move/from16 v19, v1

    .end local v1    # "nw":I
    .restart local v19    # "nw":I
    :goto_12b
    and-int/lit8 v1, v13, 0x4

    if-nez v1, :cond_138

    .line 1747
    move/from16 v1, v16

    .line 1748
    .end local v15    # "prevLink":I
    .local v1, "prevLink":I
    move v2, v13

    .line 1750
    .end local v16    # "lastLink":I
    .local v2, "lastLink":I
    move v4, v12

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v4

    .line 1753
    .end local v1    # "prevLink":I
    .end local v2    # "lastLink":I
    .restart local v15    # "prevLink":I
    .restart local v16    # "lastLink":I
    :cond_138
    add-int/lit8 v12, v12, -0x1

    .line 1754
    if-ne v12, v3, :cond_142

    .line 1755
    move v13, v14

    .line 1756
    const/16 v18, -0x2

    const/4 v7, 0x1

    .end local v3    # "nx":I
    .restart local v18    # "nx":I
    goto/16 :goto_29

    .line 1757
    .end local v18    # "nx":I
    .restart local v3    # "nx":I
    :cond_142
    const/4 v1, -0x1

    if-eq v12, v1, :cond_150

    .line 1758
    aget-char v1, p1, v12

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v13

    move/from16 v18, v3

    const/4 v7, 0x1

    goto/16 :goto_29

    .line 1757
    :cond_150
    move/from16 v18, v3

    const/4 v7, 0x1

    goto/16 :goto_29

    .line 1765
    .end local v3    # "nx":I
    .restart local v18    # "nx":I
    :cond_155
    move/from16 v1, p3

    .line 1766
    .end local p4    # "destSize":I
    .local v1, "destSize":I
    if-nez v8, :cond_15e

    if-eqz v11, :cond_15c

    goto :goto_15e

    :cond_15c
    move v4, v1

    goto :goto_163

    .line 1767
    :cond_15e
    :goto_15e
    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->handleGeneratedSpaces([CII)I

    move-result v1

    move v4, v1

    .line 1769
    .end local v1    # "destSize":I
    .local v4, "destSize":I
    :goto_163
    if-nez v9, :cond_167

    if-eqz v10, :cond_172

    .line 1770
    :cond_167
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->expandCompositChar([CIIII)I

    move-result v4

    .line 1772
    :cond_172
    return v4
.end method

.method private static greylist-max-o shiftArray([CIIC)V
    .registers 7
    .param p0, "dest"    # [C
    .param p1, "start"    # I
    .param p2, "e"    # I
    .param p3, "subChar"    # C

    .line 1172
    move v0, p2

    .line 1173
    .local v0, "w":I
    move v1, p2

    .line 1174
    .local v1, "r":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_11

    .line 1175
    aget-char v2, p0, v1

    .line 1176
    .local v2, "ch":C
    if-eq v2, p3, :cond_10

    .line 1177
    add-int/lit8 v0, v0, -0x1

    .line 1178
    if-eq v0, v1, :cond_10

    .line 1179
    aput-char v2, p0, v0

    .line 1182
    .end local v2    # "ch":C
    :cond_10
    goto :goto_2

    .line 1183
    :cond_11
    return-void
.end method

.method private static greylist-max-o specialChar(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 902
    const/16 v0, 0x621

    if-le p0, v0, :cond_8

    const/16 v0, 0x626

    if-lt p0, v0, :cond_46

    :cond_8
    const/16 v0, 0x627

    if-eq p0, v0, :cond_46

    const/16 v0, 0x62e

    if-le p0, v0, :cond_14

    const/16 v0, 0x633

    if-lt p0, v0, :cond_46

    :cond_14
    const/16 v0, 0x647

    if-le p0, v0, :cond_1c

    const/16 v0, 0x64a

    if-lt p0, v0, :cond_46

    :cond_1c
    const/16 v0, 0x629

    if-ne p0, v0, :cond_21

    goto :goto_46

    .line 908
    :cond_21
    const/16 v0, 0x64b

    if-lt p0, v0, :cond_2b

    const/16 v0, 0x652

    if-gt p0, v0, :cond_2b

    .line 909
    const/4 v0, 0x2

    return v0

    .line 910
    :cond_2b
    const/16 v0, 0x653

    if-lt p0, v0, :cond_33

    const/16 v0, 0x655

    if-le p0, v0, :cond_44

    :cond_33
    const/16 v0, 0x670

    if-eq p0, v0, :cond_44

    const v0, 0xfe70

    if-lt p0, v0, :cond_42

    const v0, 0xfe7f

    if-gt p0, v0, :cond_42

    goto :goto_44

    .line 915
    :cond_42
    const/4 v0, 0x0

    return v0

    .line 913
    :cond_44
    :goto_44
    const/4 v0, 0x3

    return v0

    .line 907
    :cond_46
    :goto_46
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 543
    if-eqz p1, :cond_15

    .line 544
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/ArabicShaping;

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    move-object v1, p1

    check-cast v1, Landroid/icu/text/ArabicShaping;

    iget v1, v1, Landroid/icu/text/ArabicShaping;->options:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 543
    :goto_16
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 553
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    return v0
.end method

.method public greylist-max-o shape([CII[CII)I
    .registers 11
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

    .line 90
    if-eqz p1, :cond_f4

    .line 93
    const-string v0, ") for buffer of length "

    if-ltz p2, :cond_c8

    if-ltz p3, :cond_c8

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_c8

    .line 98
    if-nez p4, :cond_1a

    if-nez p6, :cond_12

    goto :goto_1a

    .line 99
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null dest requires destSize == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1a
    :goto_1a
    if-eqz p6, :cond_52

    if-ltz p5, :cond_26

    if-ltz p6, :cond_26

    add-int v1, p5, p6

    array-length v2, p4

    if-gt v1, v2, :cond_26

    goto :goto_52

    .line 103
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad dest start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") or size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_52
    :goto_52
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v1, 0xe0000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7e

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v1

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_7e

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v1

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_7e

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v1

    const/high16 v2, 0x80000

    if-eq v0, v2, :cond_7e

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v1

    const/high16 v2, 0xc0000

    if-ne v0, v2, :cond_76

    goto :goto_7e

    .line 113
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong Tashkeel argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_7e
    :goto_7e
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v2, 0x10003

    and-int/2addr v0, v2

    if-eqz v0, :cond_ad

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_ad

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_ad

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_ad

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_ad

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a5

    goto :goto_ad

    .line 124
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong Lam Alef argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_ad
    :goto_ad
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c3

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v0, v0, 0x18

    const/16 v1, 0x10

    if-eq v0, v1, :cond_bb

    goto :goto_c3

    .line 130
    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tashkeel replacement should not be enabled in deshaping mode "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c3
    :goto_c3
    invoke-direct/range {p0 .. p6}, Landroid/icu/text/ArabicShaping;->internalShape([CII[CII)I

    move-result v0

    return v0

    .line 94
    :cond_c8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad source start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") or length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_f4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist shape(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 161
    .local v1, "src":[C
    move-object v0, v1

    .line 162
    .local v0, "dest":[C
    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v3, 0x10003

    and-int/2addr v2, v3

    if-nez v2, :cond_1c

    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v2, v2, 0x18

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1c

    .line 165
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    move-object v4, v0

    goto :goto_1d

    .line 167
    :cond_1c
    move-object v4, v0

    .end local v0    # "dest":[C
    .local v4, "dest":[C
    :goto_1d
    array-length v3, v1

    const/4 v5, 0x0

    array-length v6, v4

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->shape([CII[CII)I

    move-result v2

    .line 169
    .local v2, "len":I
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v4, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public greylist-max-o shape([CII)V
    .registers 12
    .param p1, "source"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    .line 145
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v1, 0x10003

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 148
    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "source":[C
    .end local p2    # "start":I
    .end local p3    # "length":I
    .local v2, "source":[C
    .local v3, "start":I
    .local v4, "length":I
    invoke-virtual/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->shape([CII[CII)I

    .line 149
    return-void

    .line 146
    .end local v2    # "source":[C
    .end local v3    # "start":I
    .end local v4    # "length":I
    .restart local p1    # "source":[C
    .restart local p2    # "start":I
    .restart local p3    # "length":I
    :cond_13
    move-object v2, p1

    move v3, p2

    .end local p1    # "source":[C
    .end local p2    # "start":I
    .restart local v2    # "source":[C
    .restart local v3    # "start":I
    new-instance p1, Landroid/icu/text/ArabicShapingException;

    const-string p2, "Cannot shape in place with length option resize."

    invoke-direct {p1, p2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v2, 0x10003

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_e6

    goto :goto_35

    .line 568
    :sswitch_18
    const-string v1, "lamAlef auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 566
    :sswitch_1e
    const-string v1, "LamAlef spaces at begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 567
    :sswitch_24
    const-string v1, "LamAlef spaces at end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 565
    :sswitch_2a
    const-string v1, "LamAlef spaces at near"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 564
    :sswitch_30
    const-string v1, "LamAlef resize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :goto_35
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v1, v1, 0x4

    sparse-switch v1, :sswitch_data_fc

    goto :goto_48

    .line 572
    :sswitch_3d
    const-string v1, ", visual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 571
    :sswitch_43
    const-string v1, ", logical"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :goto_48
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v1, v1, 0x18

    sparse-switch v1, :sswitch_data_106

    goto :goto_67

    .line 577
    :sswitch_50
    const-string v1, ", shape letters tashkeel isolated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 578
    :sswitch_56
    const-string v1, ", unshape letters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 576
    :sswitch_5c
    const-string v1, ", shape letters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 575
    :sswitch_62
    const-string v1, ", no letter shaping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :goto_67
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0x700000

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_118

    goto :goto_75

    .line 581
    :pswitch_70
    const-string v1, ", Seen at near"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :goto_75
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0x3800000

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_11e

    goto :goto_83

    .line 584
    :pswitch_7e
    const-string v1, ", Yeh Hamza at near"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :goto_83
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0xe0000

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_124

    goto :goto_a3

    .line 589
    :sswitch_8c
    const-string v1, ", Tashkeel replace with tatweel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 590
    :sswitch_92
    const-string v1, ", Tashkeel resize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 588
    :sswitch_98
    const-string v1, ", Tashkeel at end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 587
    :sswitch_9e
    const-string v1, ", Tashkeel at begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :goto_a3
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v1, v1, 0xe0

    sparse-switch v1, :sswitch_data_136

    goto :goto_c8

    .line 598
    :sswitch_ab
    const-string v1, ", shape digits to AN contextually: default AL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 597
    :sswitch_b1
    const-string v1, ", shape digits to AN contextually: default EN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 596
    :sswitch_b7
    const-string v1, ", shape digits to EN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 595
    :sswitch_bd
    const-string v1, ", shape digits to AN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 594
    :sswitch_c3
    const-string v1, ", no digit shaping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :goto_c8
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v1, v1, 0x100

    sparse-switch v1, :sswitch_data_14c

    goto :goto_db

    .line 602
    :sswitch_d0
    const-string v1, ", extended Arabic-Indic digits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_db

    .line 601
    :sswitch_d6
    const-string v1, ", standard Arabic-Indic digits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :goto_db
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_e6
    .sparse-switch
        0x0 -> :sswitch_30
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_24
        0x3 -> :sswitch_1e
        0x10000 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_fc
    .sparse-switch
        0x0 -> :sswitch_43
        0x4 -> :sswitch_3d
    .end sparse-switch

    :sswitch_data_106
    .sparse-switch
        0x0 -> :sswitch_62
        0x8 -> :sswitch_5c
        0x10 -> :sswitch_56
        0x18 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_118
    .packed-switch 0x200000
        :pswitch_70
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1000000
        :pswitch_7e
    .end packed-switch

    :sswitch_data_124
    .sparse-switch
        0x40000 -> :sswitch_9e
        0x60000 -> :sswitch_98
        0x80000 -> :sswitch_92
        0xc0000 -> :sswitch_8c
    .end sparse-switch

    :sswitch_data_136
    .sparse-switch
        0x0 -> :sswitch_c3
        0x20 -> :sswitch_bd
        0x40 -> :sswitch_b7
        0x60 -> :sswitch_b1
        0x80 -> :sswitch_ab
    .end sparse-switch

    :sswitch_data_14c
    .sparse-switch
        0x0 -> :sswitch_d6
        0x100 -> :sswitch_d0
    .end sparse-switch
.end method
