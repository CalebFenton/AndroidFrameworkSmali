.class public final Landroid/icu/impl/UCharacterProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCharacterProperty$BinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$IntProperty;,
        Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;,
        Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;,
        Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;,
        Landroid/icu/impl/UCharacterProperty$IsAcceptable;,
        Landroid/icu/impl/UCharacterProperty$1;,
        Landroid/icu/impl/UCharacterProperty$2;,
        Landroid/icu/impl/UCharacterProperty$3;,
        Landroid/icu/impl/UCharacterProperty$4;,
        Landroid/icu/impl/UCharacterProperty$5;,
        Landroid/icu/impl/UCharacterProperty$6;,
        Landroid/icu/impl/UCharacterProperty$7;,
        Landroid/icu/impl/UCharacterProperty$8;,
        Landroid/icu/impl/UCharacterProperty$9;,
        Landroid/icu/impl/UCharacterProperty$10;,
        Landroid/icu/impl/UCharacterProperty$11;,
        Landroid/icu/impl/UCharacterProperty$12;,
        Landroid/icu/impl/UCharacterProperty$13;,
        Landroid/icu/impl/UCharacterProperty$14;,
        Landroid/icu/impl/UCharacterProperty$15;,
        Landroid/icu/impl/UCharacterProperty$16;,
        Landroid/icu/impl/UCharacterProperty$17;,
        Landroid/icu/impl/UCharacterProperty$18;,
        Landroid/icu/impl/UCharacterProperty$19;,
        Landroid/icu/impl/UCharacterProperty$20;,
        Landroid/icu/impl/UCharacterProperty$21;,
        Landroid/icu/impl/UCharacterProperty$22;,
        Landroid/icu/impl/UCharacterProperty$23;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final AGE_SHIFT_:I = 0x18

.field private static final ALPHABETIC_PROPERTY_:I = 0x8

.field private static final ASCII_HEX_DIGIT_PROPERTY_:I = 0x7

.field private static final BLOCK_MASK_:I = 0x1ff00

.field private static final BLOCK_SHIFT_:I = 0x8

.field private static final CGJ:I = 0x34f

.field private static final CR:I = 0xd

.field private static final DASH_PROPERTY_:I = 0x1

.field private static final DATA_FILE_NAME_:Ljava/lang/String; = "uprops.icu"

.field private static final DATA_FORMAT:I = 0x5550726f

.field private static final DECOMPOSITION_TYPE_MASK_:I = 0x1f

.field private static final DEFAULT_IGNORABLE_CODE_POINT_PROPERTY_:I = 0x13

.field private static final DEL:I = 0x7f

.field private static final DEPRECATED_PROPERTY_:I = 0x14

.field private static final DIACRITIC_PROPERTY_:I = 0xa

.field private static final EAST_ASIAN_MASK_:I = 0xe0000

.field private static final EAST_ASIAN_SHIFT_:I = 0x11

.field private static final EXTENDER_PROPERTY_:I = 0xb

.field private static final FIGURESP:I = 0x2007

.field private static final FIRST_NIBBLE_SHIFT_:I = 0x4

.field private static final GCB_MASK:I = 0x3e0

.field private static final GCB_SHIFT:I = 0x5

.field private static final GC_CC_MASK:I

.field private static final GC_CN_MASK:I

.field private static final GC_CS_MASK:I

.field private static final GC_ZL_MASK:I

.field private static final GC_ZP_MASK:I

.field private static final GC_ZS_MASK:I

.field private static final GC_Z_MASK:I

.field private static final GRAPHEME_BASE_PROPERTY_:I = 0x1a

.field private static final GRAPHEME_EXTEND_PROPERTY_:I = 0xd

.field private static final GRAPHEME_LINK_PROPERTY_:I = 0xe

.field private static final HAIRSP:I = 0x200a

.field private static final HEX_DIGIT_PROPERTY_:I = 0x6

.field private static final HYPHEN_PROPERTY_:I = 0x2

.field private static final IDEOGRAPHIC_PROPERTY_:I = 0x9

.field private static final IDS_BINARY_OPERATOR_PROPERTY_:I = 0xf

.field private static final IDS_TRINARY_OPERATOR_PROPERTY_:I = 0x10

.field private static final ID_CONTINUE_PROPERTY_:I = 0x19

.field private static final ID_START_PROPERTY_:I = 0x18

.field private static final INHSWAP:I = 0x206a

.field public static final INSTANCE:Landroid/icu/impl/UCharacterProperty;

.field private static final LAST_NIBBLE_MASK_:I = 0xf

.field public static final LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE_:C = '\u0130'

.field public static final LATIN_SMALL_LETTER_DOTLESS_I_:C = '\u0131'

.field public static final LATIN_SMALL_LETTER_I_:C = 'i'

.field private static final LB_MASK:I = 0x3f00000

.field private static final LB_SHIFT:I = 0x14

.field private static final LEAD_SURROGATE_SHIFT_:I = 0xa

.field private static final LOGICAL_ORDER_EXCEPTION_PROPERTY_:I = 0x15

.field private static final MATH_PROPERTY_:I = 0x5

.field static final MY_MASK:I = 0x1e

.field private static final NBSP:I = 0xa0

.field private static final NL:I = 0x85

.field private static final NNBSP:I = 0x202f

.field private static final NOMDIG:I = 0x206f

.field private static final NONCHARACTER_CODE_POINT_PROPERTY_:I = 0xc

.field private static final NTV_BASE60_START_:I = 0x300

.field private static final NTV_DECIMAL_START_:I = 0x1

.field private static final NTV_DIGIT_START_:I = 0xb

.field private static final NTV_FRACTION_START_:I = 0xb0

.field private static final NTV_LARGE_START_:I = 0x1e0

.field private static final NTV_NONE_:I = 0x0

.field private static final NTV_NUMERIC_START_:I = 0x15

.field private static final NTV_RESERVED_START_:I = 0x324

.field private static final NUMERIC_TYPE_VALUE_SHIFT_:I = 0x6

.field private static final PATTERN_SYNTAX:I = 0x1d

.field private static final PATTERN_WHITE_SPACE:I = 0x1e

.field private static final QUOTATION_MARK_PROPERTY_:I = 0x3

.field private static final RADICAL_PROPERTY_:I = 0x11

.field private static final RLM:I = 0x200f

.field private static final SB_MASK:I = 0xf8000

.field private static final SB_SHIFT:I = 0xf

.field public static final SCRIPT_MASK_:I = 0xff

.field public static final SCRIPT_X_MASK:I = 0xc000ff

.field public static final SCRIPT_X_WITH_COMMON:I = 0x400000

.field public static final SCRIPT_X_WITH_INHERITED:I = 0x800000

.field public static final SCRIPT_X_WITH_OTHER:I = 0xc00000

.field public static final SRC_BIDI:I = 0x5

.field public static final SRC_CASE:I = 0x4

.field public static final SRC_CASE_AND_NORM:I = 0x7

.field public static final SRC_CHAR:I = 0x1

.field public static final SRC_CHAR_AND_PROPSVEC:I = 0x6

.field public static final SRC_COUNT:I = 0xc

.field public static final SRC_NAMES:I = 0x3

.field public static final SRC_NFC:I = 0x8

.field public static final SRC_NFC_CANON_ITER:I = 0xb

.field public static final SRC_NFKC:I = 0x9

.field public static final SRC_NFKC_CF:I = 0xa

.field public static final SRC_NONE:I = 0x0

.field public static final SRC_PROPSVEC:I = 0x2

.field private static final SURROGATE_OFFSET_:I = -0x35fdc00

.field private static final S_TERM_PROPERTY_:I = 0x1b

.field private static final TAB:I = 0x9

.field private static final TERMINAL_PUNCTUATION_PROPERTY_:I = 0x4

.field public static final TYPE_MASK:I = 0x1f

.field private static final UNIFIED_IDEOGRAPH_PROPERTY_:I = 0x12

.field private static final U_A:I = 0x41

.field private static final U_F:I = 0x46

.field private static final U_FW_A:I = 0xff21

.field private static final U_FW_F:I = 0xff26

.field private static final U_FW_Z:I = 0xff3a

.field private static final U_FW_a:I = 0xff41

.field private static final U_FW_f:I = 0xff46

.field private static final U_FW_z:I = 0xff5a

.field private static final U_Z:I = 0x5a

.field private static final U_a:I = 0x61

.field private static final U_f:I = 0x66

.field private static final U_z:I = 0x7a

.field private static final VARIATION_SELECTOR_PROPERTY_:I = 0x1c

.field private static final WB_MASK:I = 0x7c00

.field private static final WB_SHIFT:I = 0xa

.field private static final WHITE_SPACE_PROPERTY_:I = 0x0

.field private static final WJ:I = 0x2060

.field private static final XID_CONTINUE_PROPERTY_:I = 0x17

.field private static final XID_START_PROPERTY_:I = 0x16

.field private static final ZWNBSP:I = 0xfeff

.field private static final gcbToHst:[I


# instance fields
.field binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

.field intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

.field m_additionalColumnsCount_:I

.field m_additionalTrie_:Landroid/icu/impl/Trie2_16;

.field m_additionalVectors_:[I

.field m_maxBlockScriptValue_:I

.field m_maxJTGValue_:I

.field public m_scriptExtensions_:[C

.field public m_trie_:Landroid/icu/impl/Trie2_16;

.field public m_unicodeVersion_:Landroid/icu/util/VersionInfo;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    #@0
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->gcbToHst:[I

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->isgraphPOSIX(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1
    .param p0, "ntv"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->ntvGetType(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-class v1, Landroid/icu/impl/UCharacterProperty;

    #@3
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    move v1, v2

    #@a
    :goto_0
    sput-boolean v1, Landroid/icu/impl/UCharacterProperty;->-assertionsDisabled:Z

    #@c
    .line 161
    invoke-static {v2}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    #@f
    move-result v1

    #@10
    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    #@12
    .line 162
    const/16 v1, 0xf

    #@14
    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    #@17
    move-result v1

    #@18
    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    #@1a
    .line 163
    const/16 v1, 0x12

    #@1c
    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    #@1f
    move-result v1

    #@20
    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    #@22
    .line 164
    const/16 v1, 0xc

    #@24
    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    #@27
    move-result v1

    #@28
    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    #@2a
    .line 165
    const/16 v1, 0xd

    #@2c
    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    #@2f
    move-result v1

    #@30
    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    #@32
    .line 166
    const/16 v1, 0xe

    #@34
    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    #@37
    move-result v1

    #@38
    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    #@3a
    .line 168
    sget v1, Landroid/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    #@3c
    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    #@3e
    or-int/2addr v1, v2

    #@3f
    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    #@41
    or-int/2addr v1, v2

    #@42
    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    #@44
    .line 408
    const/16 v1, 0xa

    #@46
    new-array v1, v1, [I

    #@48
    fill-array-data v1, :array_0

    #@4b
    sput-object v1, Landroid/icu/impl/UCharacterProperty;->gcbToHst:[I

    #@4d
    .line 1408
    :try_start_0
    new-instance v1, Landroid/icu/impl/UCharacterProperty;

    #@4f
    invoke-direct {v1}, Landroid/icu/impl/UCharacterProperty;-><init>()V

    #@52
    sput-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 42
    return-void

    #@55
    :cond_0
    const/4 v1, 0x1

    #@56
    goto :goto_0

    #@57
    .line 1410
    :catch_0
    move-exception v0

    #@58
    .line 1411
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/util/MissingResourceException;

    #@5a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    const-string/jumbo v3, ""

    #@61
    const-string/jumbo v4, ""

    #@64
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@67
    throw v1

    #@68
    .line 408
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x4
        0x5
        0x3
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 229
    const/16 v2, 0x39

    #@5
    new-array v2, v2, [Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@7
    .line 234
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@9
    const/4 v4, 0x1

    #@a
    const/16 v5, 0x100

    #@c
    move-object/from16 v0, p0

    #@e
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@11
    const/4 v4, 0x0

    #@12
    aput-object v3, v2, v4

    #@14
    .line 235
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@16
    const/4 v4, 0x1

    #@17
    const/16 v5, 0x80

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@1e
    const/4 v4, 0x1

    #@1f
    aput-object v3, v2, v4

    #@21
    .line 236
    new-instance v3, Landroid/icu/impl/UCharacterProperty$1;

    #@23
    const/4 v4, 0x5

    #@24
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, p0

    #@28
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$1;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@2b
    const/4 v4, 0x2

    #@2c
    aput-object v3, v2, v4

    #@2e
    .line 241
    new-instance v3, Landroid/icu/impl/UCharacterProperty$2;

    #@30
    const/4 v4, 0x5

    #@31
    move-object/from16 v0, p0

    #@33
    move-object/from16 v1, p0

    #@35
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$2;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@38
    const/4 v4, 0x3

    #@39
    aput-object v3, v2, v4

    #@3b
    .line 246
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@3d
    const/4 v4, 0x1

    #@3e
    const/4 v5, 0x2

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@44
    const/4 v4, 0x4

    #@45
    aput-object v3, v2, v4

    #@47
    .line 247
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@49
    const/4 v4, 0x1

    #@4a
    const/high16 v5, 0x80000

    #@4c
    move-object/from16 v0, p0

    #@4e
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@51
    const/4 v4, 0x5

    #@52
    aput-object v3, v2, v4

    #@54
    .line 248
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@56
    const/4 v4, 0x1

    #@57
    const/high16 v5, 0x100000

    #@59
    move-object/from16 v0, p0

    #@5b
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@5e
    const/4 v4, 0x6

    #@5f
    aput-object v3, v2, v4

    #@61
    .line 249
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@63
    const/4 v4, 0x1

    #@64
    const/16 v5, 0x400

    #@66
    move-object/from16 v0, p0

    #@68
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@6b
    const/4 v4, 0x7

    #@6c
    aput-object v3, v2, v4

    #@6e
    .line 250
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@70
    const/4 v4, 0x1

    #@71
    const/16 v5, 0x800

    #@73
    move-object/from16 v0, p0

    #@75
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@78
    const/16 v4, 0x8

    #@7a
    aput-object v3, v2, v4

    #@7c
    .line 251
    new-instance v3, Landroid/icu/impl/UCharacterProperty$3;

    #@7e
    const/16 v4, 0x8

    #@80
    move-object/from16 v0, p0

    #@82
    move-object/from16 v1, p0

    #@84
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$3;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@87
    const/16 v4, 0x9

    #@89
    aput-object v3, v2, v4

    #@8b
    .line 258
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@8d
    const/4 v4, 0x1

    #@8e
    const/high16 v5, 0x4000000

    #@90
    move-object/from16 v0, p0

    #@92
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@95
    const/16 v4, 0xa

    #@97
    aput-object v3, v2, v4

    #@99
    .line 259
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@9b
    const/4 v4, 0x1

    #@9c
    const/16 v5, 0x2000

    #@9e
    move-object/from16 v0, p0

    #@a0
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@a3
    const/16 v4, 0xb

    #@a5
    aput-object v3, v2, v4

    #@a7
    .line 260
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@a9
    const/4 v4, 0x1

    #@aa
    const/16 v5, 0x4000

    #@ac
    move-object/from16 v0, p0

    #@ae
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@b1
    const/16 v4, 0xc

    #@b3
    aput-object v3, v2, v4

    #@b5
    .line 261
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@b7
    const/4 v4, 0x1

    #@b8
    const/16 v5, 0x40

    #@ba
    move-object/from16 v0, p0

    #@bc
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@bf
    const/16 v4, 0xd

    #@c1
    aput-object v3, v2, v4

    #@c3
    .line 262
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@c5
    const/4 v4, 0x1

    #@c6
    const/4 v5, 0x4

    #@c7
    move-object/from16 v0, p0

    #@c9
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@cc
    const/16 v4, 0xe

    #@ce
    aput-object v3, v2, v4

    #@d0
    .line 263
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@d2
    const/4 v4, 0x1

    #@d3
    const/high16 v5, 0x2000000

    #@d5
    move-object/from16 v0, p0

    #@d7
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@da
    const/16 v4, 0xf

    #@dc
    aput-object v3, v2, v4

    #@de
    .line 264
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@e0
    const/4 v4, 0x1

    #@e1
    const/high16 v5, 0x1000000

    #@e3
    move-object/from16 v0, p0

    #@e5
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@e8
    const/16 v4, 0x10

    #@ea
    aput-object v3, v2, v4

    #@ec
    .line 265
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@ee
    const/4 v4, 0x1

    #@ef
    const/16 v5, 0x200

    #@f1
    move-object/from16 v0, p0

    #@f3
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@f6
    const/16 v4, 0x11

    #@f8
    aput-object v3, v2, v4

    #@fa
    .line 266
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@fc
    const/4 v4, 0x1

    #@fd
    const v5, 0x8000

    #@100
    move-object/from16 v0, p0

    #@102
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@105
    const/16 v4, 0x12

    #@107
    aput-object v3, v2, v4

    #@109
    .line 267
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@10b
    const/4 v4, 0x1

    #@10c
    const/high16 v5, 0x10000

    #@10e
    move-object/from16 v0, p0

    #@110
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@113
    const/16 v4, 0x13

    #@115
    aput-object v3, v2, v4

    #@117
    .line 268
    new-instance v3, Landroid/icu/impl/UCharacterProperty$4;

    #@119
    const/4 v4, 0x5

    #@11a
    move-object/from16 v0, p0

    #@11c
    move-object/from16 v1, p0

    #@11e
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$4;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@121
    const/16 v4, 0x14

    #@123
    aput-object v3, v2, v4

    #@125
    .line 273
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@127
    const/4 v4, 0x1

    #@128
    const/high16 v5, 0x200000

    #@12a
    move-object/from16 v0, p0

    #@12c
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@12f
    const/16 v4, 0x15

    #@131
    aput-object v3, v2, v4

    #@133
    .line 274
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@135
    const/16 v4, 0x16

    #@137
    move-object/from16 v0, p0

    #@139
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@13c
    const/16 v4, 0x16

    #@13e
    aput-object v3, v2, v4

    #@140
    .line 275
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@142
    const/4 v4, 0x1

    #@143
    const/16 v5, 0x20

    #@145
    move-object/from16 v0, p0

    #@147
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@14a
    const/16 v4, 0x17

    #@14c
    aput-object v3, v2, v4

    #@14e
    .line 276
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@150
    const/4 v4, 0x1

    #@151
    const/16 v5, 0x1000

    #@153
    move-object/from16 v0, p0

    #@155
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@158
    const/16 v4, 0x18

    #@15a
    aput-object v3, v2, v4

    #@15c
    .line 277
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@15e
    const/4 v4, 0x1

    #@15f
    const/16 v5, 0x8

    #@161
    move-object/from16 v0, p0

    #@163
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@166
    const/16 v4, 0x19

    #@168
    aput-object v3, v2, v4

    #@16a
    .line 278
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@16c
    const/4 v4, 0x1

    #@16d
    const/high16 v5, 0x20000

    #@16f
    move-object/from16 v0, p0

    #@171
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@174
    const/16 v4, 0x1a

    #@176
    aput-object v3, v2, v4

    #@178
    .line 279
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@17a
    const/16 v4, 0x1b

    #@17c
    move-object/from16 v0, p0

    #@17e
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@181
    const/16 v4, 0x1b

    #@183
    aput-object v3, v2, v4

    #@185
    .line 280
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@187
    const/4 v4, 0x1

    #@188
    const/16 v5, 0x10

    #@18a
    move-object/from16 v0, p0

    #@18c
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@18f
    const/16 v4, 0x1c

    #@191
    aput-object v3, v2, v4

    #@193
    .line 281
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@195
    const/4 v4, 0x1

    #@196
    const/high16 v5, 0x40000

    #@198
    move-object/from16 v0, p0

    #@19a
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@19d
    const/16 v4, 0x1d

    #@19f
    aput-object v3, v2, v4

    #@1a1
    .line 282
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@1a3
    const/16 v4, 0x1e

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@1aa
    const/16 v4, 0x1e

    #@1ac
    aput-object v3, v2, v4

    #@1ae
    .line 283
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@1b0
    const/4 v4, 0x1

    #@1b1
    const/4 v5, 0x1

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@1b7
    const/16 v4, 0x1f

    #@1b9
    aput-object v3, v2, v4

    #@1bb
    .line 284
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@1bd
    const/4 v4, 0x1

    #@1be
    const/high16 v5, 0x800000

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@1c5
    const/16 v4, 0x20

    #@1c7
    aput-object v3, v2, v4

    #@1c9
    .line 285
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@1cb
    const/4 v4, 0x1

    #@1cc
    const/high16 v5, 0x400000

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@1d3
    const/16 v4, 0x21

    #@1d5
    aput-object v3, v2, v4

    #@1d7
    .line 286
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@1d9
    const/16 v4, 0x22

    #@1db
    move-object/from16 v0, p0

    #@1dd
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@1e0
    const/16 v4, 0x22

    #@1e2
    aput-object v3, v2, v4

    #@1e4
    .line 287
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@1e6
    const/4 v4, 0x1

    #@1e7
    const/high16 v5, 0x8000000

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@1ee
    const/16 v4, 0x23

    #@1f0
    aput-object v3, v2, v4

    #@1f2
    .line 288
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@1f4
    const/4 v4, 0x1

    #@1f5
    const/high16 v5, 0x10000000

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@1fc
    const/16 v4, 0x24

    #@1fe
    aput-object v3, v2, v4

    #@200
    .line 289
    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    #@202
    const/16 v4, 0x8

    #@204
    const/16 v5, 0x25

    #@206
    move-object/from16 v0, p0

    #@208
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@20b
    const/16 v4, 0x25

    #@20d
    aput-object v3, v2, v4

    #@20f
    .line 290
    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    #@211
    const/16 v4, 0x9

    #@213
    const/16 v5, 0x26

    #@215
    move-object/from16 v0, p0

    #@217
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@21a
    const/16 v4, 0x26

    #@21c
    aput-object v3, v2, v4

    #@21e
    .line 291
    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    #@220
    const/16 v4, 0x8

    #@222
    const/16 v5, 0x27

    #@224
    move-object/from16 v0, p0

    #@226
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@229
    const/16 v4, 0x27

    #@22b
    aput-object v3, v2, v4

    #@22d
    .line 292
    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    #@22f
    const/16 v4, 0x9

    #@231
    const/16 v5, 0x28

    #@233
    move-object/from16 v0, p0

    #@235
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@238
    const/16 v4, 0x28

    #@23a
    aput-object v3, v2, v4

    #@23c
    .line 293
    new-instance v3, Landroid/icu/impl/UCharacterProperty$5;

    #@23e
    const/16 v4, 0xb

    #@240
    move-object/from16 v0, p0

    #@242
    move-object/from16 v1, p0

    #@244
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$5;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@247
    const/16 v4, 0x29

    #@249
    aput-object v3, v2, v4

    #@24b
    .line 299
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@24d
    const/4 v4, 0x1

    #@24e
    const/high16 v5, 0x20000000

    #@250
    move-object/from16 v0, p0

    #@252
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@255
    const/16 v4, 0x2a

    #@257
    aput-object v3, v2, v4

    #@259
    .line 300
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@25b
    const/4 v4, 0x1

    #@25c
    const/high16 v5, 0x40000000    # 2.0f

    #@25e
    move-object/from16 v0, p0

    #@260
    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    #@263
    const/16 v4, 0x2b

    #@265
    aput-object v3, v2, v4

    #@267
    .line 301
    new-instance v3, Landroid/icu/impl/UCharacterProperty$6;

    #@269
    const/4 v4, 0x6

    #@26a
    move-object/from16 v0, p0

    #@26c
    move-object/from16 v1, p0

    #@26e
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$6;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@271
    const/16 v4, 0x2c

    #@273
    aput-object v3, v2, v4

    #@275
    .line 306
    new-instance v3, Landroid/icu/impl/UCharacterProperty$7;

    #@277
    const/4 v4, 0x1

    #@278
    move-object/from16 v0, p0

    #@27a
    move-object/from16 v1, p0

    #@27c
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$7;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@27f
    const/16 v4, 0x2d

    #@281
    aput-object v3, v2, v4

    #@283
    .line 317
    new-instance v3, Landroid/icu/impl/UCharacterProperty$8;

    #@285
    const/4 v4, 0x1

    #@286
    move-object/from16 v0, p0

    #@288
    move-object/from16 v1, p0

    #@28a
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$8;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@28d
    const/16 v4, 0x2e

    #@28f
    aput-object v3, v2, v4

    #@291
    .line 322
    new-instance v3, Landroid/icu/impl/UCharacterProperty$9;

    #@293
    const/4 v4, 0x1

    #@294
    move-object/from16 v0, p0

    #@296
    move-object/from16 v1, p0

    #@298
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$9;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@29b
    const/16 v4, 0x2f

    #@29d
    aput-object v3, v2, v4

    #@29f
    .line 333
    new-instance v3, Landroid/icu/impl/UCharacterProperty$10;

    #@2a1
    const/4 v4, 0x1

    #@2a2
    move-object/from16 v0, p0

    #@2a4
    move-object/from16 v1, p0

    #@2a6
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$10;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@2a9
    const/16 v4, 0x30

    #@2ab
    aput-object v3, v2, v4

    #@2ad
    .line 345
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@2af
    const/16 v4, 0x31

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@2b6
    const/16 v4, 0x31

    #@2b8
    aput-object v3, v2, v4

    #@2ba
    .line 346
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@2bc
    const/16 v4, 0x32

    #@2be
    move-object/from16 v0, p0

    #@2c0
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@2c3
    const/16 v4, 0x32

    #@2c5
    aput-object v3, v2, v4

    #@2c7
    .line 347
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@2c9
    const/16 v4, 0x33

    #@2cb
    move-object/from16 v0, p0

    #@2cd
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@2d0
    const/16 v4, 0x33

    #@2d2
    aput-object v3, v2, v4

    #@2d4
    .line 348
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@2d6
    const/16 v4, 0x34

    #@2d8
    move-object/from16 v0, p0

    #@2da
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@2dd
    const/16 v4, 0x34

    #@2df
    aput-object v3, v2, v4

    #@2e1
    .line 349
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@2e3
    const/16 v4, 0x35

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@2ea
    const/16 v4, 0x35

    #@2ec
    aput-object v3, v2, v4

    #@2ee
    .line 350
    new-instance v3, Landroid/icu/impl/UCharacterProperty$11;

    #@2f0
    const/4 v4, 0x7

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    move-object/from16 v1, p0

    #@2f5
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$11;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@2f8
    const/16 v4, 0x36

    #@2fa
    aput-object v3, v2, v4

    #@2fc
    .line 375
    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    #@2fe
    const/16 v4, 0x37

    #@300
    move-object/from16 v0, p0

    #@302
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@305
    const/16 v4, 0x37

    #@307
    aput-object v3, v2, v4

    #@309
    .line 376
    new-instance v3, Landroid/icu/impl/UCharacterProperty$12;

    #@30b
    const/16 v4, 0xa

    #@30d
    move-object/from16 v0, p0

    #@30f
    move-object/from16 v1, p0

    #@311
    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$12;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@314
    const/16 v4, 0x38

    #@316
    aput-object v3, v2, v4

    #@318
    .line 229
    move-object/from16 v0, p0

    #@31a
    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@31c
    .line 484
    const/16 v2, 0x16

    #@31e
    new-array v0, v2, [Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@320
    move-object/from16 v19, v0

    #@322
    .line 485
    new-instance v2, Landroid/icu/impl/UCharacterProperty$13;

    #@324
    move-object/from16 v0, p0

    #@326
    move-object/from16 v1, p0

    #@328
    invoke-direct {v2, v0, v1}, Landroid/icu/impl/UCharacterProperty$13;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V

    #@32b
    const/4 v3, 0x0

    #@32c
    aput-object v2, v19, v3

    #@32e
    .line 490
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@330
    const/4 v3, 0x0

    #@331
    const v4, 0x1ff00

    #@334
    const/16 v5, 0x8

    #@336
    move-object/from16 v0, p0

    #@338
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@33b
    const/4 v3, 0x1

    #@33c
    aput-object v2, v19, v3

    #@33e
    .line 491
    new-instance v2, Landroid/icu/impl/UCharacterProperty$14;

    #@340
    const/16 v3, 0x8

    #@342
    move-object/from16 v0, p0

    #@344
    move-object/from16 v1, p0

    #@346
    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$14;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@349
    const/4 v3, 0x2

    #@34a
    aput-object v2, v19, v3

    #@34c
    .line 496
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@34e
    const/4 v3, 0x2

    #@34f
    const/16 v4, 0x1f

    #@351
    const/4 v5, 0x0

    #@352
    move-object/from16 v0, p0

    #@354
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@357
    const/4 v3, 0x3

    #@358
    aput-object v2, v19, v3

    #@35a
    .line 497
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@35c
    const/4 v3, 0x0

    #@35d
    const/high16 v4, 0xe0000

    #@35f
    const/16 v5, 0x11

    #@361
    move-object/from16 v0, p0

    #@363
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@366
    const/4 v3, 0x4

    #@367
    aput-object v2, v19, v3

    #@369
    .line 498
    new-instance v2, Landroid/icu/impl/UCharacterProperty$15;

    #@36b
    const/4 v3, 0x1

    #@36c
    move-object/from16 v0, p0

    #@36e
    move-object/from16 v1, p0

    #@370
    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$15;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@373
    const/4 v3, 0x5

    #@374
    aput-object v2, v19, v3

    #@376
    .line 506
    new-instance v2, Landroid/icu/impl/UCharacterProperty$16;

    #@378
    move-object/from16 v0, p0

    #@37a
    move-object/from16 v1, p0

    #@37c
    invoke-direct {v2, v0, v1}, Landroid/icu/impl/UCharacterProperty$16;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V

    #@37f
    const/4 v3, 0x6

    #@380
    aput-object v2, v19, v3

    #@382
    .line 511
    new-instance v2, Landroid/icu/impl/UCharacterProperty$17;

    #@384
    move-object/from16 v0, p0

    #@386
    move-object/from16 v1, p0

    #@388
    invoke-direct {v2, v0, v1}, Landroid/icu/impl/UCharacterProperty$17;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V

    #@38b
    const/4 v3, 0x7

    #@38c
    aput-object v2, v19, v3

    #@38e
    .line 516
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@390
    const/4 v3, 0x2

    #@391
    const/high16 v4, 0x3f00000

    #@393
    const/16 v5, 0x14

    #@395
    move-object/from16 v0, p0

    #@397
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@39a
    const/16 v3, 0x8

    #@39c
    aput-object v2, v19, v3

    #@39e
    .line 517
    new-instance v2, Landroid/icu/impl/UCharacterProperty$18;

    #@3a0
    const/4 v3, 0x1

    #@3a1
    move-object/from16 v0, p0

    #@3a3
    move-object/from16 v1, p0

    #@3a5
    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$18;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@3a8
    const/16 v3, 0x9

    #@3aa
    aput-object v2, v19, v3

    #@3ac
    .line 525
    new-instance v2, Landroid/icu/impl/UCharacterProperty$19;

    #@3ae
    const/4 v5, 0x0

    #@3af
    const/16 v6, 0xff

    #@3b1
    const/4 v7, 0x0

    #@3b2
    move-object/from16 v3, p0

    #@3b4
    move-object/from16 v4, p0

    #@3b6
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/UCharacterProperty$19;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;III)V

    #@3b9
    const/16 v3, 0xa

    #@3bb
    aput-object v2, v19, v3

    #@3bd
    .line 530
    new-instance v2, Landroid/icu/impl/UCharacterProperty$20;

    #@3bf
    const/4 v3, 0x2

    #@3c0
    move-object/from16 v0, p0

    #@3c2
    move-object/from16 v1, p0

    #@3c4
    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$20;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@3c7
    const/16 v3, 0xb

    #@3c9
    aput-object v2, v19, v3

    #@3cb
    .line 545
    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    #@3cd
    const/16 v3, 0x8

    #@3cf
    const/16 v4, 0x100c

    #@3d1
    const/4 v5, 0x1

    #@3d2
    move-object/from16 v0, p0

    #@3d4
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@3d7
    const/16 v3, 0xc

    #@3d9
    aput-object v2, v19, v3

    #@3db
    .line 546
    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    #@3dd
    const/16 v3, 0x9

    #@3df
    const/16 v4, 0x100d

    #@3e1
    const/4 v5, 0x1

    #@3e2
    move-object/from16 v0, p0

    #@3e4
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@3e7
    const/16 v3, 0xd

    #@3e9
    aput-object v2, v19, v3

    #@3eb
    .line 548
    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    #@3ed
    const/16 v3, 0x8

    #@3ef
    const/16 v4, 0x100e

    #@3f1
    const/4 v5, 0x2

    #@3f2
    move-object/from16 v0, p0

    #@3f4
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@3f7
    const/16 v3, 0xe

    #@3f9
    aput-object v2, v19, v3

    #@3fb
    .line 549
    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    #@3fd
    const/16 v3, 0x9

    #@3ff
    const/16 v4, 0x100f

    #@401
    const/4 v5, 0x2

    #@402
    move-object/from16 v0, p0

    #@404
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@407
    const/16 v3, 0xf

    #@409
    aput-object v2, v19, v3

    #@40b
    .line 550
    new-instance v2, Landroid/icu/impl/UCharacterProperty$21;

    #@40d
    const/16 v3, 0x8

    #@40f
    move-object/from16 v0, p0

    #@411
    move-object/from16 v1, p0

    #@413
    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$21;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@416
    const/16 v3, 0x10

    #@418
    aput-object v2, v19, v3

    #@41a
    .line 555
    new-instance v2, Landroid/icu/impl/UCharacterProperty$22;

    #@41c
    const/16 v3, 0x8

    #@41e
    move-object/from16 v0, p0

    #@420
    move-object/from16 v1, p0

    #@422
    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$22;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    #@425
    const/16 v3, 0x11

    #@427
    aput-object v2, v19, v3

    #@429
    .line 560
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@42b
    const/4 v3, 0x2

    #@42c
    const/16 v4, 0x3e0

    #@42e
    const/4 v5, 0x5

    #@42f
    move-object/from16 v0, p0

    #@431
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@434
    const/16 v3, 0x12

    #@436
    aput-object v2, v19, v3

    #@438
    .line 561
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@43a
    const/4 v3, 0x2

    #@43b
    const v4, 0xf8000

    #@43e
    const/16 v5, 0xf

    #@440
    move-object/from16 v0, p0

    #@442
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@445
    const/16 v3, 0x13

    #@447
    aput-object v2, v19, v3

    #@449
    .line 562
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@44b
    const/4 v3, 0x2

    #@44c
    const/16 v4, 0x7c00

    #@44e
    const/16 v5, 0xa

    #@450
    move-object/from16 v0, p0

    #@452
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@455
    const/16 v3, 0x14

    #@457
    aput-object v2, v19, v3

    #@459
    .line 563
    new-instance v2, Landroid/icu/impl/UCharacterProperty$23;

    #@45b
    move-object/from16 v0, p0

    #@45d
    move-object/from16 v1, p0

    #@45f
    invoke-direct {v2, v0, v1}, Landroid/icu/impl/UCharacterProperty$23;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V

    #@462
    const/16 v3, 0x15

    #@464
    aput-object v2, v19, v3

    #@466
    .line 484
    move-object/from16 v0, v19

    #@468
    move-object/from16 v1, p0

    #@46a
    iput-object v0, v1, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@46c
    .line 1179
    move-object/from16 v0, p0

    #@46e
    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@470
    array-length v2, v2

    #@471
    const/16 v3, 0x39

    #@473
    if-eq v2, v3, :cond_0

    #@475
    .line 1180
    new-instance v2, Landroid/icu/util/ICUException;

    #@477
    const-string/jumbo v3, "binProps.length!=UProperty.BINARY_LIMIT"

    #@47a
    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@47d
    throw v2

    #@47e
    .line 1182
    :cond_0
    move-object/from16 v0, p0

    #@480
    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@482
    array-length v2, v2

    #@483
    const/16 v3, 0x16

    #@485
    if-eq v2, v3, :cond_1

    #@487
    .line 1183
    new-instance v2, Landroid/icu/util/ICUException;

    #@489
    const-string/jumbo v3, "intProps.length!=(UProperty.INT_LIMIT-UProperty.INT_START)"

    #@48c
    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@48f
    throw v2

    #@490
    .line 1187
    :cond_1
    const-string/jumbo v2, "uprops.icu"

    #@493
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@496
    move-result-object v10

    #@497
    .line 1188
    .local v10, "bytes":Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IsAcceptable;

    #@499
    const/4 v3, 0x0

    #@49a
    invoke-direct {v2, v3}, Landroid/icu/impl/UCharacterProperty$IsAcceptable;-><init>(Landroid/icu/impl/UCharacterProperty$IsAcceptable;)V

    #@49d
    const v3, 0x5550726f

    #@4a0
    invoke-static {v10, v3, v2}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    #@4a3
    move-result-object v2

    #@4a4
    move-object/from16 v0, p0

    #@4a6
    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_unicodeVersion_:Landroid/icu/util/VersionInfo;

    #@4a8
    .line 1190
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4ab
    move-result v14

    #@4ac
    .line 1191
    .local v14, "propertyOffset":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4af
    .line 1192
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4b2
    .line 1193
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4b5
    move-result v8

    #@4b6
    .line 1194
    .local v8, "additionalOffset":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4b9
    move-result v9

    #@4ba
    .line 1195
    .local v9, "additionalVectorsOffset":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4bd
    move-result v2

    #@4be
    move-object/from16 v0, p0

    #@4c0
    iput v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    #@4c2
    .line 1196
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4c5
    move-result v16

    #@4c6
    .line 1197
    .local v16, "scriptExtensionsOffset":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4c9
    move-result v15

    #@4ca
    .line 1198
    .local v15, "reservedOffset7":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4cd
    .line 1199
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4d0
    .line 1200
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4d3
    move-result v2

    #@4d4
    move-object/from16 v0, p0

    #@4d6
    iput v2, v0, Landroid/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    #@4d8
    .line 1201
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@4db
    move-result v2

    #@4dc
    move-object/from16 v0, p0

    #@4de
    iput v2, v0, Landroid/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    #@4e0
    .line 1202
    const/16 v2, 0x10

    #@4e2
    invoke-static {v10, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@4e5
    .line 1205
    invoke-static {v10}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    #@4e8
    move-result-object v2

    #@4e9
    move-object/from16 v0, p0

    #@4eb
    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    #@4ed
    .line 1206
    add-int/lit8 v2, v14, -0x10

    #@4ef
    mul-int/lit8 v11, v2, 0x4

    #@4f1
    .line 1207
    .local v11, "expectedTrieLength":I
    move-object/from16 v0, p0

    #@4f3
    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    #@4f5
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    #@4f8
    move-result v18

    #@4f9
    .line 1208
    .local v18, "trieLength":I
    move/from16 v0, v18

    #@4fb
    if-le v0, v11, :cond_2

    #@4fd
    .line 1209
    new-instance v2, Ljava/io/IOException;

    #@4ff
    const-string/jumbo v3, "uprops.icu: not enough bytes for main trie"

    #@502
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@505
    throw v2

    #@506
    .line 1212
    :cond_2
    sub-int v2, v11, v18

    #@508
    invoke-static {v10, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@50b
    .line 1215
    sub-int v2, v8, v14

    #@50d
    mul-int/lit8 v2, v2, 0x4

    #@50f
    invoke-static {v10, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@512
    .line 1217
    move-object/from16 v0, p0

    #@514
    iget v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    #@516
    if-lez v2, :cond_4

    #@518
    .line 1219
    invoke-static {v10}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    #@51b
    move-result-object v2

    #@51c
    move-object/from16 v0, p0

    #@51e
    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    #@520
    .line 1220
    sub-int v2, v9, v8

    #@522
    mul-int/lit8 v11, v2, 0x4

    #@524
    .line 1221
    move-object/from16 v0, p0

    #@526
    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    #@528
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    #@52b
    move-result v18

    #@52c
    .line 1222
    move/from16 v0, v18

    #@52e
    if-le v0, v11, :cond_3

    #@530
    .line 1223
    new-instance v2, Ljava/io/IOException;

    #@532
    const-string/jumbo v3, "uprops.icu: not enough bytes for additional-properties trie"

    #@535
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@538
    throw v2

    #@539
    .line 1226
    :cond_3
    sub-int v2, v11, v18

    #@53b
    invoke-static {v10, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@53e
    .line 1229
    sub-int v17, v16, v9

    #@540
    .line 1230
    .local v17, "size":I
    move/from16 v0, v17

    #@542
    new-array v2, v0, [I

    #@544
    move-object/from16 v0, p0

    #@546
    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    #@548
    .line 1231
    const/4 v12, 0x0

    #@549
    .local v12, "i":I
    :goto_0
    move/from16 v0, v17

    #@54b
    if-ge v12, v0, :cond_4

    #@54d
    .line 1232
    move-object/from16 v0, p0

    #@54f
    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    #@551
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    #@554
    move-result v3

    #@555
    aput v3, v2, v12

    #@557
    .line 1231
    add-int/lit8 v12, v12, 0x1

    #@559
    goto :goto_0

    #@55a
    .line 1237
    .end local v12    # "i":I
    .end local v17    # "size":I
    :cond_4
    sub-int v2, v15, v16

    #@55c
    mul-int/lit8 v13, v2, 0x2

    #@55e
    .line 1238
    .local v13, "numChars":I
    if-lez v13, :cond_5

    #@560
    .line 1239
    new-array v2, v13, [C

    #@562
    move-object/from16 v0, p0

    #@564
    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    #@566
    .line 1240
    const/4 v12, 0x0

    #@567
    .restart local v12    # "i":I
    :goto_1
    if-ge v12, v13, :cond_5

    #@569
    .line 1241
    move-object/from16 v0, p0

    #@56b
    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    #@56d
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getChar()C

    #@570
    move-result v3

    #@571
    aput-char v3, v2, v12

    #@573
    .line 1240
    add-int/lit8 v12, v12, 0x1

    #@575
    goto :goto_1

    #@576
    .line 1176
    .end local v12    # "i":I
    :cond_5
    return-void
.end method

.method public static getEuropeanDigit(I)I
    .locals 6
    .param p0, "ch"    # I

    #@0
    .prologue
    const v5, 0xff21

    #@3
    const/16 v4, 0x7a

    #@5
    const/16 v1, 0x61

    #@7
    const/16 v3, 0x5a

    #@9
    const/16 v0, 0x41

    #@b
    .line 772
    if-le p0, v4, :cond_1

    #@d
    if-ge p0, v5, :cond_1

    #@f
    .line 775
    :cond_0
    const/4 v0, -0x1

    #@10
    return v0

    #@11
    .line 773
    :cond_1
    if-lt p0, v0, :cond_0

    #@13
    if-le p0, v3, :cond_2

    #@15
    if-lt p0, v1, :cond_0

    #@17
    .line 774
    :cond_2
    const v2, 0xff5a

    #@1a
    if-gt p0, v2, :cond_0

    #@1c
    const v2, 0xff3a

    #@1f
    if-le p0, v2, :cond_3

    #@21
    const v2, 0xff41

    #@24
    if-lt p0, v2, :cond_0

    #@26
    .line 777
    :cond_3
    if-gt p0, v4, :cond_5

    #@28
    .line 779
    add-int/lit8 v2, p0, 0xa

    #@2a
    if-gt p0, v3, :cond_4

    #@2c
    :goto_0
    sub-int v0, v2, v0

    #@2e
    return v0

    #@2f
    :cond_4
    move v0, v1

    #@30
    goto :goto_0

    #@31
    .line 782
    :cond_5
    const v0, 0xff3a

    #@34
    if-gt p0, v0, :cond_6

    #@36
    .line 783
    add-int/lit8 v0, p0, 0xa

    #@38
    sub-int/2addr v0, v5

    #@39
    return v0

    #@3a
    .line 786
    :cond_6
    add-int/lit8 v0, p0, 0xa

    #@3c
    const v1, 0xff41

    #@3f
    sub-int/2addr v0, v1

    #@40
    return v0
.end method

.method public static final getMask(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 759
    const/4 v0, 0x1

    #@1
    shl-int/2addr v0, p0

    #@2
    return v0
.end method

.method private static final getNumericTypeValue(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    .line 996
    shr-int/lit8 v0, p0, 0x6

    #@2
    return v0
.end method

.method public static getRawSupplementary(CC)I
    .locals 2
    .param p0, "lead"    # C
    .param p1, "trail"    # C

    #@0
    .prologue
    .line 658
    shl-int/lit8 v0, p0, 0xa

    #@2
    add-int/2addr v0, p1

    #@3
    const v1, -0x35fdc00

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method private static final isgraphPOSIX(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 180
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@4
    move-result v1

    #@5
    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    #@8
    move-result v1

    #@9
    .line 181
    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    #@b
    sget v3, Landroid/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    #@d
    or-int/2addr v2, v3

    #@e
    sget v3, Landroid/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    #@10
    or-int/2addr v2, v3

    #@11
    sget v3, Landroid/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    #@13
    or-int/2addr v2, v3

    #@14
    .line 180
    and-int/2addr v1, v2

    #@15
    if-nez v1, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    :cond_0
    return v0
.end method

.method private static final ntvGetType(I)I
    .locals 1
    .param p0, "ntv"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1025
    if-nez p0, :cond_0

    #@3
    .line 1024
    :goto_0
    return v0

    #@4
    .line 1026
    :cond_0
    const/16 v0, 0xb

    #@6
    if-ge p0, v0, :cond_1

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_0

    #@a
    .line 1027
    :cond_1
    const/16 v0, 0x15

    #@c
    if-ge p0, v0, :cond_2

    #@e
    const/4 v0, 0x2

    #@f
    goto :goto_0

    #@10
    .line 1028
    :cond_2
    const/4 v0, 0x3

    #@11
    goto :goto_0
.end method


# virtual methods
.method public addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 1302
    iget-object v2, p0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 1304
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@12
    .local v0, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 1311
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    const/16 v2, 0x9

    #@18
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@1b
    .line 1312
    const/16 v2, 0xa

    #@1d
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@20
    .line 1315
    const/16 v2, 0xe

    #@22
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@25
    .line 1316
    const/16 v2, 0x1c

    #@27
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@2a
    .line 1317
    const/16 v2, 0x20

    #@2c
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@2f
    .line 1318
    const/16 v2, 0x85

    #@31
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@34
    .line 1319
    const/16 v2, 0x86

    #@36
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@39
    .line 1322
    const/16 v2, 0x7f

    #@3b
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3e
    .line 1323
    const/16 v2, 0x200a

    #@40
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@43
    .line 1324
    const/16 v2, 0x2010

    #@45
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@48
    .line 1325
    const/16 v2, 0x206a

    #@4a
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@4d
    .line 1326
    const/16 v2, 0x2070

    #@4f
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@52
    .line 1327
    const v2, 0xfeff

    #@55
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@58
    .line 1328
    const v2, 0xff00

    #@5b
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@5e
    .line 1331
    const/16 v2, 0xa0

    #@60
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@63
    .line 1332
    const/16 v2, 0xa1

    #@65
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@68
    .line 1333
    const/16 v2, 0x2007

    #@6a
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@6d
    .line 1334
    const/16 v2, 0x2008

    #@6f
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@72
    .line 1335
    const/16 v2, 0x202f

    #@74
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@77
    .line 1336
    const/16 v2, 0x2030

    #@79
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@7c
    .line 1341
    const/16 v2, 0x3007

    #@7e
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@81
    .line 1342
    const/16 v2, 0x3008

    #@83
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@86
    .line 1343
    const/16 v2, 0x4e00

    #@88
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@8b
    .line 1344
    const/16 v2, 0x4e01

    #@8d
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@90
    .line 1345
    const/16 v2, 0x4e8c

    #@92
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@95
    .line 1346
    const/16 v2, 0x4e8d

    #@97
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@9a
    .line 1347
    const/16 v2, 0x4e09

    #@9c
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@9f
    .line 1348
    const/16 v2, 0x4e0a

    #@a1
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@a4
    .line 1349
    const/16 v2, 0x56db

    #@a6
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@a9
    .line 1350
    const/16 v2, 0x56dc

    #@ab
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@ae
    .line 1351
    const/16 v2, 0x4e94

    #@b0
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@b3
    .line 1352
    const/16 v2, 0x4e95

    #@b5
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@b8
    .line 1353
    const/16 v2, 0x516d

    #@ba
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@bd
    .line 1354
    const/16 v2, 0x516e

    #@bf
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@c2
    .line 1355
    const/16 v2, 0x4e03

    #@c4
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@c7
    .line 1356
    const/16 v2, 0x4e04

    #@c9
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@cc
    .line 1357
    const/16 v2, 0x516b

    #@ce
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@d1
    .line 1358
    const/16 v2, 0x516c

    #@d3
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@d6
    .line 1359
    const/16 v2, 0x4e5d

    #@d8
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@db
    .line 1360
    const/16 v2, 0x4e5e

    #@dd
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@e0
    .line 1363
    const/16 v2, 0x61

    #@e2
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@e5
    .line 1364
    const/16 v2, 0x7b

    #@e7
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@ea
    .line 1365
    const/16 v2, 0x41

    #@ec
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@ef
    .line 1366
    const/16 v2, 0x5b

    #@f1
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@f4
    .line 1367
    const v2, 0xff41

    #@f7
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@fa
    .line 1368
    const v2, 0xff5b

    #@fd
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@100
    .line 1369
    const v2, 0xff21

    #@103
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@106
    .line 1370
    const v2, 0xff3b

    #@109
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@10c
    .line 1373
    const/16 v2, 0x67

    #@10e
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@111
    .line 1374
    const/16 v2, 0x47

    #@113
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@116
    .line 1375
    const v2, 0xff47

    #@119
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@11c
    .line 1376
    const v2, 0xff27

    #@11f
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@122
    .line 1379
    const/16 v2, 0x2060

    #@124
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@127
    .line 1380
    const v2, 0xfff0

    #@12a
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@12d
    .line 1381
    const v2, 0xfffc

    #@130
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@133
    .line 1382
    const/high16 v2, 0xe0000

    #@135
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@138
    .line 1383
    const v2, 0xe1000

    #@13b
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@13e
    .line 1386
    const/16 v2, 0x34f

    #@140
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@143
    .line 1387
    const/16 v2, 0x350

    #@145
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@148
    .line 1389
    return-object p1

    #@149
    .line 1305
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@14b
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@14e
    goto/16 :goto_0
.end method

.method public digit(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 790
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    #@3
    move-result v1

    #@4
    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v0, v1, -0x1

    #@a
    .line 791
    .local v0, "value":I
    const/16 v1, 0x9

    #@c
    if-gt v0, v1, :cond_0

    #@e
    .line 792
    return v0

    #@f
    .line 794
    :cond_0
    const/4 v1, -0x1

    #@10
    return v1
.end method

.method public getAdditional(II)I
    .locals 2
    .param p1, "codepoint"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    sget-boolean v0, Landroid/icu/impl/UCharacterProperty;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    if-ltz p2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    if-nez v0, :cond_1

    #@a
    new-instance v0, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v0

    #@10
    :cond_0
    move v0, v1

    #@11
    goto :goto_0

    #@12
    .line 127
    :cond_1
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    #@14
    if-lt p2, v0, :cond_2

    #@16
    .line 128
    return v1

    #@17
    .line 130
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    #@19
    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    #@1b
    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v1, p2

    #@20
    aget v0, v0, v1

    #@22
    return v0
.end method

.method public getAge(I)Landroid/icu/util/VersionInfo;
    .locals 4
    .param p1, "codepoint"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 155
    invoke-virtual {p0, p1, v3}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    #@4
    move-result v1

    #@5
    shr-int/lit8 v0, v1, 0x18

    #@7
    .line 157
    .local v0, "version":I
    shr-int/lit8 v1, v0, 0x4

    #@9
    and-int/lit8 v1, v1, 0xf

    #@b
    .line 158
    and-int/lit8 v2, v0, 0xf

    #@d
    .line 156
    invoke-static {v1, v2, v3, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public getIntPropertyMaxValue(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 584
    const/16 v0, 0x1000

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 585
    if-ltz p1, :cond_1

    #@6
    const/16 v0, 0x39

    #@8
    if-ge p1, v0, :cond_1

    #@a
    .line 586
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 588
    :cond_0
    const/16 v0, 0x1016

    #@e
    if-ge p1, v0, :cond_1

    #@10
    .line 589
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@12
    add-int/lit16 v1, p1, -0x1000

    #@14
    aget-object v0, v0, v1

    #@16
    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getMaxValue(I)I

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 591
    :cond_1
    const/4 v0, -0x1

    #@1c
    return v0
.end method

.method public getIntPropertyValue(II)I
    .locals 2
    .param p1, "c"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 571
    const/16 v1, 0x1000

    #@3
    if-ge p2, v1, :cond_1

    #@5
    .line 572
    if-ltz p2, :cond_3

    #@7
    const/16 v1, 0x39

    #@9
    if-ge p2, v1, :cond_3

    #@b
    .line 573
    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@d
    aget-object v1, v1, p2

    #@f
    invoke-virtual {v1, p1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0

    #@17
    .line 575
    :cond_1
    const/16 v1, 0x1016

    #@19
    if-ge p2, v1, :cond_2

    #@1b
    .line 576
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@1d
    add-int/lit16 v1, p2, -0x1000

    #@1f
    aget-object v0, v0, v1

    #@21
    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getValue(I)I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 577
    :cond_2
    const/16 v1, 0x2000

    #@28
    if-ne p2, v1, :cond_3

    #@2a
    .line 578
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    #@2d
    move-result v0

    #@2e
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    #@31
    move-result v0

    #@32
    return v0

    #@33
    .line 580
    :cond_3
    return v0
.end method

.method public getMaxValues(I)I
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 742
    packed-switch p1, :pswitch_data_0

    #@3
    .line 748
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 744
    :pswitch_1
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    #@7
    return v0

    #@8
    .line 746
    :pswitch_2
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    #@a
    return v0

    #@b
    .line 742
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getNumericValue(I)I
    .locals 7
    .param p1, "c"    # I

    #@0
    .prologue
    const/16 v6, 0x9

    #@2
    const/4 v5, -0x2

    #@3
    .line 800
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    #@6
    move-result v4

    #@7
    invoke-static {v4}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    #@a
    move-result v2

    #@b
    .line 802
    .local v2, "ntv":I
    if-nez v2, :cond_0

    #@d
    .line 803
    invoke-static {p1}, Landroid/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    #@10
    move-result v4

    #@11
    return v4

    #@12
    .line 804
    :cond_0
    const/16 v4, 0xb

    #@14
    if-ge v2, v4, :cond_1

    #@16
    .line 806
    add-int/lit8 v4, v2, -0x1

    #@18
    return v4

    #@19
    .line 807
    :cond_1
    const/16 v4, 0x15

    #@1b
    if-ge v2, v4, :cond_2

    #@1d
    .line 809
    add-int/lit8 v4, v2, -0xb

    #@1f
    return v4

    #@20
    .line 810
    :cond_2
    const/16 v4, 0xb0

    #@22
    if-ge v2, v4, :cond_3

    #@24
    .line 812
    add-int/lit8 v4, v2, -0x15

    #@26
    return v4

    #@27
    .line 813
    :cond_3
    const/16 v4, 0x1e0

    #@29
    if-ge v2, v4, :cond_4

    #@2b
    .line 815
    return v5

    #@2c
    .line 816
    :cond_4
    const/16 v4, 0x300

    #@2e
    if-ge v2, v4, :cond_8

    #@30
    .line 818
    shr-int/lit8 v4, v2, 0x5

    #@32
    add-int/lit8 v1, v4, -0xe

    #@34
    .line 819
    .local v1, "mant":I
    and-int/lit8 v4, v2, 0x1f

    #@36
    add-int/lit8 v0, v4, 0x2

    #@38
    .line 820
    .local v0, "exp":I
    if-lt v0, v6, :cond_5

    #@3a
    if-ne v0, v6, :cond_7

    #@3c
    const/4 v4, 0x2

    #@3d
    if-gt v1, v4, :cond_7

    #@3f
    .line 821
    :cond_5
    move v3, v1

    #@40
    .line 823
    .local v3, "numValue":I
    :cond_6
    mul-int/lit8 v3, v3, 0xa

    #@42
    .line 824
    add-int/lit8 v0, v0, -0x1

    #@44
    if-gtz v0, :cond_6

    #@46
    .line 825
    return v3

    #@47
    .line 827
    .end local v3    # "numValue":I
    :cond_7
    return v5

    #@48
    .line 829
    .end local v0    # "exp":I
    .end local v1    # "mant":I
    :cond_8
    const/16 v4, 0x324

    #@4a
    if-ge v2, v4, :cond_9

    #@4c
    .line 831
    shr-int/lit8 v4, v2, 0x2

    #@4e
    add-int/lit16 v3, v4, -0xbf

    #@50
    .line 832
    .restart local v3    # "numValue":I
    and-int/lit8 v4, v2, 0x3

    #@52
    add-int/lit8 v0, v4, 0x1

    #@54
    .line 834
    .restart local v0    # "exp":I
    packed-switch v0, :pswitch_data_0

    #@57
    .line 852
    :goto_0
    return v3

    #@58
    .line 836
    :pswitch_0
    const v4, 0xc5c100

    #@5b
    mul-int/2addr v3, v4

    #@5c
    .line 837
    goto :goto_0

    #@5d
    .line 839
    :pswitch_1
    const v4, 0x34bc0

    #@60
    mul-int/2addr v3, v4

    #@61
    .line 840
    goto :goto_0

    #@62
    .line 842
    :pswitch_2
    mul-int/lit16 v3, v3, 0xe10

    #@64
    .line 843
    goto :goto_0

    #@65
    .line 845
    :pswitch_3
    mul-int/lit8 v3, v3, 0x3c

    #@67
    .line 846
    goto :goto_0

    #@68
    .line 855
    .end local v0    # "exp":I
    .end local v3    # "numValue":I
    :cond_9
    return v5

    #@69
    .line 834
    nop

    #@6a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getProperty(I)I
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getSource(I)I
    .locals 3
    .param p1, "which"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 595
    if-gez p1, :cond_0

    #@4
    .line 596
    return v1

    #@5
    .line 597
    :cond_0
    const/16 v0, 0x39

    #@7
    if-ge p1, v0, :cond_1

    #@9
    .line 598
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@b
    aget-object v0, v0, p1

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->getSource()I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 599
    :cond_1
    const/16 v0, 0x1000

    #@14
    if-ge p1, v0, :cond_2

    #@16
    .line 600
    return v1

    #@17
    .line 601
    :cond_2
    const/16 v0, 0x1016

    #@19
    if-ge p1, v0, :cond_3

    #@1b
    .line 602
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    #@1d
    add-int/lit16 v1, p1, -0x1000

    #@1f
    aget-object v0, v0, v1

    #@21
    invoke-virtual {v0}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getSource()I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 603
    :cond_3
    const/16 v0, 0x4000

    #@28
    if-ge p1, v0, :cond_4

    #@2a
    .line 604
    sparse-switch p1, :sswitch_data_0

    #@2d
    .line 610
    return v1

    #@2e
    .line 607
    :sswitch_0
    const/4 v0, 0x1

    #@2f
    return v0

    #@30
    .line 612
    :cond_4
    const/16 v0, 0x400e

    #@32
    if-ge p1, v0, :cond_5

    #@34
    .line 613
    packed-switch p1, :pswitch_data_0

    #@37
    .line 636
    return v1

    #@38
    .line 615
    :pswitch_0
    return v2

    #@39
    .line 618
    :pswitch_1
    const/4 v0, 0x5

    #@3a
    return v0

    #@3b
    .line 628
    :pswitch_2
    const/4 v0, 0x4

    #@3c
    return v0

    #@3d
    .line 633
    :pswitch_3
    const/4 v0, 0x3

    #@3e
    return v0

    #@3f
    .line 639
    :cond_5
    packed-switch p1, :pswitch_data_1

    #@42
    .line 643
    return v1

    #@43
    .line 641
    :pswitch_4
    return v2

    #@44
    .line 604
    :sswitch_data_0
    .sparse-switch
        0x2000 -> :sswitch_0
        0x3000 -> :sswitch_0
    .end sparse-switch

    #@4e
    .line 613
    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    #@6c
    .line 639
    :pswitch_data_1
    .packed-switch 0x7000
        :pswitch_4
    .end packed-switch
.end method

.method public getType(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 401
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x1f

    #@6
    return v0
.end method

.method public getUnicodeNumericValue(I)D
    .locals 12
    .param p1, "c"    # I

    #@0
    .prologue
    const-wide v10, -0x3e6290cbac000000L    # -1.23456789E8

    #@5
    .line 861
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    #@8
    move-result v8

    #@9
    invoke-static {v8}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    #@c
    move-result v3

    #@d
    .line 863
    .local v3, "ntv":I
    if-nez v3, :cond_0

    #@f
    .line 864
    return-wide v10

    #@10
    .line 865
    :cond_0
    const/16 v8, 0xb

    #@12
    if-ge v3, v8, :cond_1

    #@14
    .line 867
    add-int/lit8 v8, v3, -0x1

    #@16
    int-to-double v8, v8

    #@17
    return-wide v8

    #@18
    .line 868
    :cond_1
    const/16 v8, 0x15

    #@1a
    if-ge v3, v8, :cond_2

    #@1c
    .line 870
    add-int/lit8 v8, v3, -0xb

    #@1e
    int-to-double v8, v8

    #@1f
    return-wide v8

    #@20
    .line 871
    :cond_2
    const/16 v8, 0xb0

    #@22
    if-ge v3, v8, :cond_3

    #@24
    .line 873
    add-int/lit8 v8, v3, -0x15

    #@26
    int-to-double v8, v8

    #@27
    return-wide v8

    #@28
    .line 874
    :cond_3
    const/16 v8, 0x1e0

    #@2a
    if-ge v3, v8, :cond_4

    #@2c
    .line 876
    shr-int/lit8 v8, v3, 0x4

    #@2e
    add-int/lit8 v7, v8, -0xc

    #@30
    .line 877
    .local v7, "numerator":I
    and-int/lit8 v8, v3, 0xf

    #@32
    add-int/lit8 v0, v8, 0x1

    #@34
    .line 878
    .local v0, "denominator":I
    int-to-double v8, v7

    #@35
    int-to-double v10, v0

    #@36
    div-double/2addr v8, v10

    #@37
    return-wide v8

    #@38
    .line 879
    .end local v0    # "denominator":I
    .end local v7    # "numerator":I
    :cond_4
    const/16 v8, 0x300

    #@3a
    if-ge v3, v8, :cond_6

    #@3c
    .line 882
    shr-int/lit8 v8, v3, 0x5

    #@3e
    add-int/lit8 v2, v8, -0xe

    #@40
    .line 883
    .local v2, "mant":I
    and-int/lit8 v8, v3, 0x1f

    #@42
    add-int/lit8 v1, v8, 0x2

    #@44
    .line 884
    .local v1, "exp":I
    int-to-double v4, v2

    #@45
    .line 887
    .local v4, "numValue":D
    :goto_0
    const/4 v8, 0x4

    #@46
    if-lt v1, v8, :cond_5

    #@48
    .line 888
    const-wide v8, 0x40c3880000000000L    # 10000.0

    #@4d
    mul-double/2addr v4, v8

    #@4e
    .line 889
    add-int/lit8 v1, v1, -0x4

    #@50
    goto :goto_0

    #@51
    .line 891
    :cond_5
    packed-switch v1, :pswitch_data_0

    #@54
    .line 906
    :goto_1
    return-wide v4

    #@55
    .line 893
    :pswitch_0
    const-wide v8, 0x408f400000000000L    # 1000.0

    #@5a
    mul-double/2addr v4, v8

    #@5b
    .line 894
    goto :goto_1

    #@5c
    .line 896
    :pswitch_1
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@5e
    mul-double/2addr v4, v8

    #@5f
    .line 897
    goto :goto_1

    #@60
    .line 899
    :pswitch_2
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    #@62
    mul-double/2addr v4, v8

    #@63
    .line 900
    goto :goto_1

    #@64
    .line 907
    .end local v1    # "exp":I
    .end local v2    # "mant":I
    .end local v4    # "numValue":D
    :cond_6
    const/16 v8, 0x324

    #@66
    if-ge v3, v8, :cond_7

    #@68
    .line 909
    shr-int/lit8 v8, v3, 0x2

    #@6a
    add-int/lit16 v6, v8, -0xbf

    #@6c
    .line 910
    .local v6, "numValue":I
    and-int/lit8 v8, v3, 0x3

    #@6e
    add-int/lit8 v1, v8, 0x1

    #@70
    .line 912
    .restart local v1    # "exp":I
    packed-switch v1, :pswitch_data_1

    #@73
    .line 930
    :goto_2
    int-to-double v8, v6

    #@74
    return-wide v8

    #@75
    .line 914
    :pswitch_3
    const v8, 0xc5c100

    #@78
    mul-int/2addr v6, v8

    #@79
    .line 915
    goto :goto_2

    #@7a
    .line 917
    :pswitch_4
    const v8, 0x34bc0

    #@7d
    mul-int/2addr v6, v8

    #@7e
    .line 918
    goto :goto_2

    #@7f
    .line 920
    :pswitch_5
    mul-int/lit16 v6, v6, 0xe10

    #@81
    .line 921
    goto :goto_2

    #@82
    .line 923
    :pswitch_6
    mul-int/lit8 v6, v6, 0x3c

    #@84
    .line 924
    goto :goto_2

    #@85
    .line 933
    .end local v1    # "exp":I
    .end local v6    # "numValue":I
    :cond_7
    return-wide v10

    #@86
    .line 891
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@90
    .line 912
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public hasBinaryProperty(II)Z
    .locals 2
    .param p1, "c"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 390
    if-ltz p2, :cond_0

    #@3
    const/16 v0, 0x39

    #@5
    if-gt v0, p2, :cond_1

    #@7
    .line 392
    :cond_0
    return v1

    #@8
    .line 394
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    #@a
    aget-object v0, v0, p2

    #@c
    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 1394
    iget v2, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    #@2
    if-lez v2, :cond_0

    #@4
    .line 1396
    iget-object v2, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    #@6
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .line 1398
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@16
    .local v0, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1392
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    .end local v1    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :cond_0
    return-void

    #@1b
    .line 1399
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v1    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@1d
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@20
    goto :goto_0
.end method
