.class public final Landroid/icu/impl/UCharacterProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCharacterProperty$BinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$IntProperty;,
        Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$MathCompatBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$MCMBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;,
        Landroid/icu/impl/UCharacterProperty$IsAcceptable;,
        Landroid/icu/impl/UCharacterProperty$LayoutProps;,
        Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;,
        Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist AGE_SHIFT_:I = 0x18

.field private static final blacklist ALPHABETIC_PROPERTY_:I = 0x8

.field private static final blacklist ASCII_HEX_DIGIT_PROPERTY_:I = 0x7

.field private static final blacklist CGJ:I = 0x34f

.field private static final blacklist CR:I = 0xd

.field private static final blacklist DASH_PROPERTY_:I = 0x1

.field private static final blacklist DATA_FILE_NAME_:Ljava/lang/String; = "uprops.icu"

.field private static final blacklist DATA_FORMAT:I = 0x5550726f

.field private static final blacklist DECOMPOSITION_TYPE_MASK_:I = 0x1f

.field private static final blacklist DEFAULT_IGNORABLE_CODE_POINT_PROPERTY_:I = 0x13

.field private static final blacklist DEL:I = 0x7f

.field private static final blacklist DEPRECATED_PROPERTY_:I = 0x14

.field private static final blacklist DIACRITIC_PROPERTY_:I = 0xa

.field private static final blacklist EAST_ASIAN_MASK_:I = 0x7000

.field private static final blacklist EAST_ASIAN_SHIFT_:I = 0xc

.field private static final blacklist EXTENDER_PROPERTY_:I = 0xb

.field private static final blacklist FIGURESP:I = 0x2007

.field private static final blacklist GCB_MASK:I = 0x3e0

.field private static final blacklist GCB_SHIFT:I = 0x5

.field private static final blacklist GC_CC_MASK:I

.field private static final blacklist GC_CN_MASK:I

.field private static final blacklist GC_CS_MASK:I

.field private static final blacklist GC_ZL_MASK:I

.field private static final blacklist GC_ZP_MASK:I

.field private static final blacklist GC_ZS_MASK:I

.field private static final blacklist GC_Z_MASK:I

.field private static final blacklist GRAPHEME_BASE_PROPERTY_:I = 0x1a

.field private static final blacklist GRAPHEME_EXTEND_PROPERTY_:I = 0xd

.field private static final blacklist GRAPHEME_LINK_PROPERTY_:I = 0xe

.field private static final blacklist HAIRSP:I = 0x200a

.field private static final blacklist HEX_DIGIT_PROPERTY_:I = 0x6

.field private static final blacklist HYPHEN_PROPERTY_:I = 0x2

.field private static final blacklist IDEOGRAPHIC_PROPERTY_:I = 0x9

.field private static final blacklist IDS_BINARY_OPERATOR_PROPERTY_:I = 0xf

.field private static final blacklist IDS_TRINARY_OPERATOR_PROPERTY_:I = 0x10

.field private static final blacklist ID_COMPAT_MATH_CONTINUE:[I

.field private static final blacklist ID_COMPAT_MATH_START:[I

.field private static final blacklist ID_CONTINUE_PROPERTY_:I = 0x19

.field private static final blacklist ID_START_PROPERTY_:I = 0x18

.field private static final blacklist ID_TYPE_ALLOWED_MIN:I = 0x3c

.field private static final blacklist ID_TYPE_BIT:I = 0x80

.field private static final blacklist ID_TYPE_DEFAULT_IGNORABLE:I = 0x31

.field private static final blacklist ID_TYPE_DEPRECATED:I = 0x30

.field private static final blacklist ID_TYPE_EXCLUSION:I = 0x20

.field private static final blacklist ID_TYPE_FORBIDDEN:I = 0x30

.field private static final blacklist ID_TYPE_INCLUSION:I = 0x3e

.field private static final blacklist ID_TYPE_LIMITED_USE:I = 0x10

.field private static final blacklist ID_TYPE_NOT_CHARACTER:I = 0x0

.field private static final blacklist ID_TYPE_NOT_NFKC:I = 0x32

.field private static final blacklist ID_TYPE_NOT_XID:I = 0x1

.field private static final blacklist ID_TYPE_OBSOLETE:I = 0x2

.field private static final blacklist ID_TYPE_RECOMMENDED:I = 0x3f

.field private static final blacklist ID_TYPE_SHIFT:I = 0x1a

.field private static final blacklist ID_TYPE_TECHNICAL:I = 0x4

.field private static final blacklist ID_TYPE_UNCOMMON_USE:I = 0x8

.field private static final blacklist INCB_MASK:I = 0x18000

.field private static final blacklist INCB_SHIFT:I = 0xf

.field private static final blacklist INHSWAP:I = 0x206a

.field public static final blacklist INSTANCE:Landroid/icu/impl/UCharacterProperty;

.field public static final blacklist LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE_:C = '\u0130'

.field public static final blacklist LATIN_SMALL_LETTER_DOTLESS_I_:C = '\u0131'

.field public static final blacklist LATIN_SMALL_LETTER_I_:C = 'i'

.field private static final blacklist LB_MASK:I = 0x3f00000

.field private static final blacklist LB_SHIFT:I = 0x14

.field private static final blacklist LOGICAL_ORDER_EXCEPTION_PROPERTY_:I = 0x15

.field private static final blacklist MATH_PROPERTY_:I = 0x5

.field private static final blacklist MAX_BLOCK:I = 0x3ff

.field public static final blacklist MAX_SCRIPT:I = 0x3ff

.field private static final blacklist MODIFIER_COMBINING_MARK:[I

.field static final blacklist MY_MASK:I = 0x1e

.field private static final blacklist NBSP:I = 0xa0

.field private static final blacklist NL:I = 0x85

.field private static final blacklist NNBSP:I = 0x202f

.field private static final blacklist NOMDIG:I = 0x206f

.field private static final blacklist NONCHARACTER_CODE_POINT_PROPERTY_:I = 0xc

.field private static final blacklist NTV_BASE60_START_:I = 0x300

.field private static final blacklist NTV_DECIMAL_START_:I = 0x1

.field private static final blacklist NTV_DIGIT_START_:I = 0xb

.field private static final blacklist NTV_FRACTION20_START_:I = 0x324

.field private static final blacklist NTV_FRACTION32_START_:I = 0x33c

.field private static final blacklist NTV_FRACTION_START_:I = 0xb0

.field private static final blacklist NTV_LARGE_START_:I = 0x1e0

.field private static final blacklist NTV_NONE_:I = 0x0

.field private static final blacklist NTV_NUMERIC_START_:I = 0x15

.field private static final blacklist NTV_RESERVED_START_:I = 0x34c

.field private static final blacklist NUMERIC_TYPE_VALUE_SHIFT_:I = 0x6

.field private static final blacklist PATTERN_SYNTAX:I = 0x1d

.field private static final blacklist PATTERN_WHITE_SPACE:I = 0x1e

.field private static final blacklist PREPENDED_CONCATENATION_MARK:I = 0x1f

.field private static final blacklist QUOTATION_MARK_PROPERTY_:I = 0x3

.field private static final blacklist RADICAL_PROPERTY_:I = 0x11

.field private static final blacklist RLM:I = 0x200f

.field private static final blacklist SB_MASK:I = 0xf8000

.field private static final blacklist SB_SHIFT:I = 0xf

.field public static final blacklist SCRIPT_X_MASK:I = 0xfff

.field public static final blacklist SCRIPT_X_WITH_COMMON:I = 0x400

.field public static final blacklist SCRIPT_X_WITH_INHERITED:I = 0x800

.field public static final blacklist SCRIPT_X_WITH_OTHER:I = 0xc00

.field public static final blacklist SRC_BIDI:I = 0x5

.field public static final blacklist SRC_BLOCK:I = 0x12

.field public static final blacklist SRC_CASE:I = 0x4

.field public static final blacklist SRC_CASE_AND_NORM:I = 0x7

.field public static final blacklist SRC_CHAR:I = 0x1

.field public static final blacklist SRC_CHAR_AND_PROPSVEC:I = 0x6

.field public static final blacklist SRC_COUNT:I = 0x14

.field public static final blacklist SRC_EMOJI:I = 0xf

.field public static final blacklist SRC_IDSU:I = 0x10

.field public static final blacklist SRC_ID_COMPAT_MATH:I = 0x11

.field public static final blacklist SRC_INPC:I = 0xc

.field public static final blacklist SRC_INSC:I = 0xd

.field public static final blacklist SRC_MCM:I = 0x13

.field public static final blacklist SRC_NAMES:I = 0x3

.field public static final blacklist SRC_NFC:I = 0x8

.field public static final blacklist SRC_NFC_CANON_ITER:I = 0xb

.field public static final blacklist SRC_NFKC:I = 0x9

.field public static final blacklist SRC_NFKC_CF:I = 0xa

.field public static final blacklist SRC_NONE:I = 0x0

.field public static final blacklist SRC_PROPSVEC:I = 0x2

.field public static final blacklist SRC_VO:I = 0xe

.field private static final blacklist S_TERM_PROPERTY_:I = 0x1b

.field private static final blacklist TAB:I = 0x9

.field private static final blacklist TERMINAL_PUNCTUATION_PROPERTY_:I = 0x4

.field public static final blacklist TYPE_MASK:I = 0x1f

.field private static final blacklist UNIFIED_IDEOGRAPH_PROPERTY_:I = 0x12

.field private static final blacklist U_A:I = 0x41

.field private static final blacklist U_F:I = 0x46

.field private static final blacklist U_FW_A:I = 0xff21

.field private static final blacklist U_FW_F:I = 0xff26

.field private static final blacklist U_FW_Z:I = 0xff3a

.field private static final blacklist U_FW_a:I = 0xff41

.field private static final blacklist U_FW_f:I = 0xff46

.field private static final blacklist U_FW_z:I = 0xff5a

.field private static final blacklist U_Z:I = 0x5a

.field private static final blacklist U_a:I = 0x61

.field private static final blacklist U_f:I = 0x66

.field private static final blacklist U_z:I = 0x7a

.field private static final blacklist VARIATION_SELECTOR_PROPERTY_:I = 0x1c

.field private static final blacklist WB_MASK:I = 0x7c00

.field private static final blacklist WB_SHIFT:I = 0xa

.field private static final blacklist WHITE_SPACE_PROPERTY_:I = 0x0

.field private static final blacklist WJ:I = 0x2060

.field private static final blacklist XID_CONTINUE_PROPERTY_:I = 0x17

.field private static final blacklist XID_START_PROPERTY_:I = 0x16

.field private static final blacklist ZWNBSP:I = 0xfeff

.field private static final blacklist gcbToHst:[I

.field private static final blacklist idTypeToEncoded:[I


# instance fields
.field blacklist binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

.field blacklist intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

.field blacklist m_additionalColumnsCount_:I

.field blacklist m_additionalTrie_:Landroid/icu/impl/Trie2_16;

.field blacklist m_additionalVectors_:[I

.field blacklist m_blockTrie_:Landroid/icu/util/CodePointTrie;

.field blacklist m_maxBlockScriptValue_:I

.field blacklist m_maxJTGValue_:I

.field blacklist m_maxValuesOther_:I

.field public blacklist m_scriptExtensions_:[C

.field public blacklist m_trie_:Landroid/icu/impl/Trie2_16;

.field public blacklist m_unicodeVersion_:Landroid/icu/util/VersionInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetID_COMPAT_MATH_CONTINUE()[I
    .registers 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->ID_COMPAT_MATH_CONTINUE:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetID_COMPAT_MATH_START()[I
    .registers 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->ID_COMPAT_MATH_START:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMODIFIER_COMBINING_MARK()[I
    .registers 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->MODIFIER_COMBINING_MARK:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetgcbToHst()[I
    .registers 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->gcbToHst:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNumericTypeValue(I)I
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisgraphPOSIX(I)Z
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->isgraphPOSIX(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smntvGetType(I)I
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->ntvGetType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 51
    nop

    .line 304
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    .line 305
    const/16 v0, 0xf

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    .line 306
    const/16 v0, 0x12

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    .line 307
    const/16 v1, 0xc

    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v2

    sput v2, Landroid/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    .line 308
    const/16 v2, 0xd

    invoke-static {v2}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v3

    sput v3, Landroid/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    .line 309
    const/16 v3, 0xe

    invoke-static {v3}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v3

    sput v3, Landroid/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    .line 311
    sget v3, Landroid/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    sget v4, Landroid/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    or-int/2addr v3, v4

    sget v4, Landroid/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    or-int/2addr v3, v4

    sput v3, Landroid/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    .line 387
    const/16 v3, 0xa

    new-array v4, v3, [I

    fill-array-data v4, :array_76

    sput-object v4, Landroid/icu/impl/UCharacterProperty;->ID_COMPAT_MATH_CONTINUE:[I

    .line 396
    new-array v2, v2, [I

    fill-array-data v2, :array_8e

    sput-object v2, Landroid/icu/impl/UCharacterProperty;->ID_COMPAT_MATH_START:[I

    .line 413
    new-array v0, v0, [I

    fill-array-data v0, :array_ac

    sput-object v0, Landroid/icu/impl/UCharacterProperty;->MODIFIER_COMBINING_MARK:[I

    .line 687
    new-array v0, v3, [I

    fill-array-data v0, :array_d4

    sput-object v0, Landroid/icu/impl/UCharacterProperty;->gcbToHst:[I

    .line 1540
    new-array v0, v1, [I

    fill-array-data v0, :array_ec

    sput-object v0, Landroid/icu/impl/UCharacterProperty;->idTypeToEncoded:[I

    .line 1915
    :try_start_5f
    new-instance v0, Landroid/icu/impl/UCharacterProperty;

    invoke-direct {v0}, Landroid/icu/impl/UCharacterProperty;-><init>()V

    sput-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_66} :catch_68

    .line 1919
    nop

    .line 1920
    return-void

    .line 1917
    :catch_68
    move-exception v0

    .line 1918
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/util/MissingResourceException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    nop

    :array_76
    .array-data 4
        0xb2
        0xb4
        0xb9
        0xba
        0x2070
        0x2071
        0x2074
        0x207f
        0x2080
        0x208f
    .end array-data

    :array_8e
    .array-data 4
        0x2202
        0x2207
        0x221e
        0x1d6c1
        0x1d6db
        0x1d6fb
        0x1d715
        0x1d735
        0x1d74f
        0x1d76f
        0x1d789
        0x1d7a9
        0x1d7c3
    .end array-data

    :array_ac
    .array-data 4
        0x654
        0x656
        0x658
        0x659
        0x6dc
        0x6dd
        0x6e3
        0x6e4
        0x6e7
        0x6e9
        0x8ca
        0x8cc
        0x8cd
        0x8d0
        0x8d3
        0x8d4
        0x8f3
        0x8f4
    .end array-data

    :array_d4
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

    :array_ec
    .array-data 4
        0x0
        0x30
        0x31
        0x32
        0x81
        0xa0
        0x82
        0x84
        0x88
        0x90
        0x3e
        0x3f
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1588
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/16 v1, 0x4c

    new-array v2, v1, [Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v4, 0x100

    const/4 v5, 0x1

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v6, 0x80

    invoke-direct {v3, v0, v5, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v5

    new-instance v3, Landroid/icu/impl/UCharacterProperty$1;

    const/4 v6, 0x5

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$1;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v7, 0x2

    aput-object v3, v2, v7

    new-instance v3, Landroid/icu/impl/UCharacterProperty$2;

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$2;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v8, 0x3

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v5, v7}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v9, 0x80000

    invoke-direct {v3, v0, v5, v9}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v9, 0x100000

    invoke-direct {v3, v0, v5, v9}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v9, 0x6

    aput-object v3, v2, v9

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v10, 0x400

    invoke-direct {v3, v0, v5, v10}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v10, 0x7

    aput-object v3, v2, v10

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v11, 0x800

    invoke-direct {v3, v0, v5, v11}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v11, 0x8

    aput-object v3, v2, v11

    new-instance v3, Landroid/icu/impl/UCharacterProperty$3;

    invoke-direct {v3, v0, v11}, Landroid/icu/impl/UCharacterProperty$3;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v12, 0x9

    aput-object v3, v2, v12

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v13, 0x4000000

    invoke-direct {v3, v0, v5, v13}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v13, 0xa

    aput-object v3, v2, v13

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v14, 0x2000

    invoke-direct {v3, v0, v5, v14}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v14, 0xb

    aput-object v3, v2, v14

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v15, 0x4000

    invoke-direct {v3, v0, v5, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0xc

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v1, 0x40

    invoke-direct {v3, v0, v5, v1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0xd

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v5, v8}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    move/from16 v17, v8

    const/16 v8, 0xe

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    move/from16 v18, v8

    const/high16 v8, 0x2000000

    invoke-direct {v3, v0, v5, v8}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v8, 0xf

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    move/from16 v19, v15

    const/high16 v15, 0x1000000

    invoke-direct {v3, v0, v5, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0x10

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    move/from16 v20, v8

    const/16 v8, 0x200

    invoke-direct {v3, v0, v5, v8}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v8, 0x11

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const v8, 0x8000

    invoke-direct {v3, v0, v5, v8}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v8, 0x12

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    move/from16 v21, v4

    const/high16 v4, 0x10000

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x13

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$4;

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$4;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x14

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    move/from16 v22, v6

    const/high16 v6, 0x200000

    invoke-direct {v3, v0, v5, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x15

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x16

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    move/from16 v23, v6

    const/16 v6, 0x20

    invoke-direct {v3, v0, v5, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x17

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v6, 0x1000

    invoke-direct {v3, v0, v5, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x18

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v5, v11}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x19

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x20000

    invoke-direct {v3, v0, v5, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1a

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x1b

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v5, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v24, 0x1c

    aput-object v3, v2, v24

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v4, 0x40000

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x1e

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v5, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v4, 0x800000

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x20

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v4, 0x400000

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x21

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x22

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v4, 0x8000000

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x23

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v4, 0x10000000

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x24

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v4, 0x25

    invoke-direct {v3, v0, v11, v4}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v4, 0x26

    invoke-direct {v3, v0, v12, v4}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v4, 0x27

    invoke-direct {v3, v0, v11, v4}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v4, 0x28

    invoke-direct {v3, v0, v12, v4}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$5;

    invoke-direct {v3, v0, v14}, Landroid/icu/impl/UCharacterProperty$5;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x29

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v4, 0x20000000

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x2a

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x2b

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$6;

    invoke-direct {v3, v0, v9}, Landroid/icu/impl/UCharacterProperty$6;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x2c

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$7;

    invoke-direct {v3, v0, v5}, Landroid/icu/impl/UCharacterProperty$7;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x2d

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$8;

    invoke-direct {v3, v0, v5}, Landroid/icu/impl/UCharacterProperty$8;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x2e

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$9;

    invoke-direct {v3, v0, v5}, Landroid/icu/impl/UCharacterProperty$9;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x2f

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$10;

    invoke-direct {v3, v0, v5}, Landroid/icu/impl/UCharacterProperty$10;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x30

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x31

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x32

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x33

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x34

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x35

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$11;

    invoke-direct {v3, v0, v10}, Landroid/icu/impl/UCharacterProperty$11;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x36

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x37

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$12;

    invoke-direct {v3, v0, v13}, Landroid/icu/impl/UCharacterProperty$12;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x38

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v4, 0x39

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v4, 0x3a

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v4, 0x3b

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v4, 0x3c

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v4, 0x3d

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$13;

    invoke-direct {v3, v0, v7}, Landroid/icu/impl/UCharacterProperty$13;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x3e

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v4, -0x80000000

    invoke-direct {v3, v0, v5, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x3f

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    invoke-direct {v3, v0, v1}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v1

    new-instance v1, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v3, 0x41

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v3, 0x42

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v3, 0x43

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v3, 0x44

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v3, 0x45

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v3, 0x46

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;

    const/16 v3, 0x47

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$EmojiBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$14;

    invoke-direct {v1, v0, v15}, Landroid/icu/impl/UCharacterProperty$14;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0x48

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$MathCompatBinaryProperty;

    const/16 v3, 0x49

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$MathCompatBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$MathCompatBinaryProperty;

    const/16 v3, 0x4a

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/UCharacterProperty$MathCompatBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/icu/impl/UCharacterProperty$MCMBinaryProperty;

    invoke-direct {v1, v0}, Landroid/icu/impl/UCharacterProperty$MCMBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    const/16 v3, 0x4b

    aput-object v1, v2, v3

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    .line 767
    new-array v1, v6, [Landroid/icu/impl/UCharacterProperty$IntProperty;

    new-instance v2, Landroid/icu/impl/UCharacterProperty$15;

    invoke-direct {v2, v0}, Landroid/icu/impl/UCharacterProperty$15;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    aput-object v2, v1, v21

    new-instance v2, Landroid/icu/impl/UCharacterProperty$16;

    invoke-direct {v2, v0, v8}, Landroid/icu/impl/UCharacterProperty$16;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/icu/impl/UCharacterProperty$17;

    invoke-direct {v2, v0, v11}, Landroid/icu/impl/UCharacterProperty$17;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/16 v3, 0x1f

    move/from16 v4, v21

    invoke-direct {v2, v0, v7, v3, v4}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/16 v3, 0x7000

    move/from16 v25, v8

    const/16 v8, 0xc

    invoke-direct {v2, v0, v4, v3, v8}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v2, v1, v17

    new-instance v2, Landroid/icu/impl/UCharacterProperty$18;

    invoke-direct {v2, v0, v5}, Landroid/icu/impl/UCharacterProperty$18;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v2, v1, v22

    new-instance v2, Landroid/icu/impl/UCharacterProperty$19;

    invoke-direct {v2, v0}, Landroid/icu/impl/UCharacterProperty$19;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    aput-object v2, v1, v9

    new-instance v2, Landroid/icu/impl/UCharacterProperty$20;

    invoke-direct {v2, v0}, Landroid/icu/impl/UCharacterProperty$20;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    aput-object v2, v1, v10

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/high16 v3, 0x3f00000

    const/16 v4, 0x14

    invoke-direct {v2, v0, v7, v3, v4}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v2, v1, v11

    new-instance v2, Landroid/icu/impl/UCharacterProperty$21;

    invoke-direct {v2, v0, v5}, Landroid/icu/impl/UCharacterProperty$21;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v2, v1, v12

    new-instance v2, Landroid/icu/impl/UCharacterProperty$22;

    invoke-direct {v2, v0, v7}, Landroid/icu/impl/UCharacterProperty$22;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v2, v1, v13

    new-instance v2, Landroid/icu/impl/UCharacterProperty$23;

    invoke-direct {v2, v0, v7}, Landroid/icu/impl/UCharacterProperty$23;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v2, v1, v14

    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x100c

    invoke-direct {v2, v0, v11, v3, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v16, 0xc

    aput-object v2, v1, v16

    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x100d

    invoke-direct {v2, v0, v12, v3, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v2, v1, v19

    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x100e

    invoke-direct {v2, v0, v11, v3, v7}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v2, v1, v18

    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x100f

    invoke-direct {v2, v0, v12, v3, v7}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v2, v1, v20

    new-instance v2, Landroid/icu/impl/UCharacterProperty$24;

    invoke-direct {v2, v0, v11}, Landroid/icu/impl/UCharacterProperty$24;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v2, v1, v15

    new-instance v2, Landroid/icu/impl/UCharacterProperty$25;

    invoke-direct {v2, v0, v11}, Landroid/icu/impl/UCharacterProperty$25;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/16 v3, 0x3e0

    move/from16 v4, v22

    invoke-direct {v2, v0, v7, v3, v4}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v2, v1, v25

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const v3, 0xf8000

    move/from16 v4, v20

    invoke-direct {v2, v0, v7, v3, v4}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/16 v3, 0x7c00

    invoke-direct {v2, v0, v7, v3, v13}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v24, 0x14

    aput-object v2, v1, v24

    new-instance v2, Landroid/icu/impl/UCharacterProperty$26;

    invoke-direct {v2, v0}, Landroid/icu/impl/UCharacterProperty$26;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$27;

    const/16 v8, 0xc

    invoke-direct {v2, v0, v8}, Landroid/icu/impl/UCharacterProperty$27;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v2, v1, v23

    new-instance v2, Landroid/icu/impl/UCharacterProperty$28;

    move/from16 v3, v19

    invoke-direct {v2, v0, v3}, Landroid/icu/impl/UCharacterProperty$28;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$29;

    move/from16 v3, v18

    invoke-direct {v2, v0, v3}, Landroid/icu/impl/UCharacterProperty$29;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$30;

    invoke-direct {v2, v0, v7}, Landroid/icu/impl/UCharacterProperty$30;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const v3, 0x18000

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-direct {v2, v0, v4, v3, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    iput-object v1, v0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    .line 1590
    iget-object v1, v0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    array-length v1, v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4df

    .line 1593
    iget-object v1, v0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    array-length v1, v1

    if-ne v1, v6, :cond_4d7

    .line 1598
    const-string v1, "uprops.icu"

    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1599
    .local v1, "bytes":Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/icu/impl/UCharacterProperty$IsAcceptable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/impl/UCharacterProperty$IsAcceptable;-><init>(Landroid/icu/impl/UCharacterProperty-IA;)V

    const v3, 0x5550726f

    invoke-static {v1, v3, v2}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_unicodeVersion_:Landroid/icu/util/VersionInfo;

    .line 1601
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 1602
    .local v2, "propertyOffset":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1603
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1604
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1605
    .local v3, "additionalOffset":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 1606
    .local v4, "additionalVectorsOffset":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    .line 1607
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 1608
    .local v5, "scriptExtensionsOffset":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 1609
    .local v6, "blockTrieOffset":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 1610
    .local v8, "reservedOffset8":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1611
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, v0, Landroid/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    .line 1612
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, v0, Landroid/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    .line 1613
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, v0, Landroid/icu/impl/UCharacterProperty;->m_maxValuesOther_:I

    .line 1614
    const/16 v9, 0xc

    invoke-static {v1, v9}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1617
    invoke-static {v1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v9

    iput-object v9, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    .line 1618
    add-int/lit8 v9, v2, -0x10

    mul-int/lit8 v9, v9, 0x4

    .line 1619
    .local v9, "expectedTrieLength":I
    iget-object v10, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v10}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v10

    .line 1620
    .local v10, "trieLength":I
    if-gt v10, v9, :cond_4cf

    .line 1624
    sub-int v11, v9, v10

    invoke-static {v1, v11}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1627
    sub-int v11, v3, v2

    mul-int/lit8 v11, v11, 0x4

    invoke-static {v1, v11}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1629
    iget v11, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v11, :cond_49d

    .line 1631
    invoke-static {v1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v11

    iput-object v11, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    .line 1632
    sub-int v11, v4, v3

    mul-int/lit8 v9, v11, 0x4

    .line 1633
    iget-object v11, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v11}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v10

    .line 1634
    if-gt v10, v9, :cond_495

    .line 1638
    sub-int v11, v9, v10

    invoke-static {v1, v11}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1641
    sub-int v11, v5, v4

    .line 1642
    .local v11, "size":I
    const/4 v12, 0x0

    invoke-static {v1, v11, v12}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v13

    iput-object v13, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    goto :goto_49d

    .line 1635
    .end local v11    # "size":I
    :cond_495
    new-instance v7, Ljava/io/IOException;

    const-string v11, "uprops.icu: not enough bytes for additional-properties trie"

    invoke-direct {v7, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1646
    :cond_49d
    :goto_49d
    sub-int v11, v6, v5

    mul-int/2addr v11, v7

    .line 1647
    .local v11, "numChars":I
    if-lez v11, :cond_4a9

    .line 1648
    const/4 v12, 0x0

    invoke-static {v1, v11, v12}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v7

    iput-object v7, v0, Landroid/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    .line 1652
    :cond_4a9
    sub-int v7, v8, v6

    mul-int/lit8 v7, v7, 0x4

    .line 1653
    .local v7, "partLength":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 1654
    .local v12, "triePosition":I
    const/4 v13, 0x0

    sget-object v14, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

    invoke-static {v13, v14, v1}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v13

    iput-object v13, v0, Landroid/icu/impl/UCharacterProperty;->m_blockTrie_:Landroid/icu/util/CodePointTrie;

    .line 1655
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v12

    .line 1656
    .end local v10    # "trieLength":I
    .local v13, "trieLength":I
    if-gt v13, v7, :cond_4c7

    .line 1659
    sub-int v10, v7, v13

    invoke-static {v1, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1660
    return-void

    .line 1657
    :cond_4c7
    new-instance v10, Landroid/icu/util/ICUUncheckedIOException;

    const-string v14, "uprops.icu: not enough bytes for blockTrie"

    invoke-direct {v10, v14}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1621
    .end local v7    # "partLength":I
    .end local v11    # "numChars":I
    .end local v12    # "triePosition":I
    .end local v13    # "trieLength":I
    .restart local v10    # "trieLength":I
    :cond_4cf
    new-instance v7, Ljava/io/IOException;

    const-string v11, "uprops.icu: not enough bytes for main trie"

    invoke-direct {v7, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1594
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    .end local v2    # "propertyOffset":I
    .end local v3    # "additionalOffset":I
    .end local v4    # "additionalVectorsOffset":I
    .end local v5    # "scriptExtensionsOffset":I
    .end local v6    # "blockTrieOffset":I
    .end local v8    # "reservedOffset8":I
    .end local v9    # "expectedTrieLength":I
    .end local v10    # "trieLength":I
    :cond_4d7
    new-instance v1, Landroid/icu/util/ICUException;

    const-string v2, "intProps.length!=(UProperty.INT_LIMIT-UProperty.INT_START)"

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1591
    :cond_4df
    new-instance v1, Landroid/icu/util/ICUException;

    const-string v2, "binProps.length!=UProperty.BINARY_LIMIT"

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getEuropeanDigit(I)I
    .registers 8
    .param p0, "ch"    # I

    .line 1130
    const v0, 0xff21

    const/16 v1, 0x7a

    if-le p0, v1, :cond_9

    if-lt p0, v0, :cond_39

    :cond_9
    const/16 v2, 0x41

    if-lt p0, v2, :cond_39

    const/16 v3, 0x61

    const/16 v4, 0x5a

    if-le p0, v4, :cond_15

    if-lt p0, v3, :cond_39

    :cond_15
    const v5, 0xff5a

    if-gt p0, v5, :cond_39

    const v5, 0xff41

    const v6, 0xff3a

    if-le p0, v6, :cond_25

    if-ge p0, v5, :cond_25

    goto :goto_39

    .line 1135
    :cond_25
    if-gt p0, v1, :cond_2f

    .line 1137
    add-int/lit8 v0, p0, 0xa

    if-gt p0, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    sub-int/2addr v0, v2

    return v0

    .line 1140
    :cond_2f
    if-gt p0, v6, :cond_35

    .line 1141
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 1144
    :cond_35
    add-int/lit8 v0, p0, 0xa

    sub-int/2addr v0, v5

    return v0

    .line 1133
    :cond_39
    :goto_39
    const/4 v0, -0x1

    return v0
.end method

.method public static final blacklist getMask(I)I
    .registers 2
    .param p0, "type"    # I

    .line 1117
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private static final blacklist getNumericTypeValue(I)I
    .registers 2
    .param p0, "props"    # I

    .line 1359
    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private static final blacklist isgraphPOSIX(I)Z
    .registers 4
    .param p0, "c"    # I

    .line 323
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sget v1, Landroid/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    or-int/2addr v1, v2

    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    or-int/2addr v1, v2

    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method static blacklist mathCompat_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;

    .line 1826
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->ID_COMPAT_MATH_CONTINUE:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget v4, v0, v3

    .line 1827
    .local v4, "c":I
    invoke-virtual {p0, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1826
    .end local v4    # "c":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1830
    :cond_f
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->ID_COMPAT_MATH_START:[I

    array-length v1, v0

    :goto_12
    if-ge v2, v1, :cond_21

    aget v3, v0, v2

    .line 1831
    .local v3, "c":I
    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1832
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1830
    .end local v3    # "c":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1834
    :cond_21
    return-void
.end method

.method private static blacklist maybeAddType(IILandroid/icu/lang/UCharacter$IdentifierType;Ljava/util/EnumSet;)V
    .registers 5
    .param p0, "value"    # I
    .param p1, "bit"    # I
    .param p2, "t"    # Landroid/icu/lang/UCharacter$IdentifierType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/icu/lang/UCharacter$IdentifierType;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/lang/UCharacter$IdentifierType;",
            ">;)V"
        }
    .end annotation

    .line 1875
    .local p3, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/lang/UCharacter$IdentifierType;>;"
    and-int v0, p0, p1

    if-eqz v0, :cond_7

    .line 1876
    invoke-virtual {p3, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1878
    :cond_7
    return-void
.end method

.method static blacklist mcm_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;

    .line 1838
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->MODIFIER_COMBINING_MARK:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget v3, v0, v2

    .line 1839
    .local v3, "c":I
    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1838
    .end local v3    # "c":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1841
    :cond_e
    return-void
.end method

.method private static final blacklist ntvGetType(I)I
    .registers 2
    .param p0, "ntv"    # I

    .line 1402
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_11

    .line 1403
    :cond_4
    const/16 v0, 0xb

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_11

    .line 1404
    :cond_a
    const/16 v0, 0x15

    if-ge p0, v0, :cond_10

    const/4 v0, 0x2

    goto :goto_11

    .line 1405
    :cond_10
    const/4 v0, 0x3

    .line 1401
    :goto_11
    return v0
.end method

.method static blacklist ulayout_addPropertyStarts(ILandroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p0, "src"    # I
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 1821
    sget-object v0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->INSTANCE:Landroid/icu/impl/UCharacterProperty$LayoutProps;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty$LayoutProps;->addPropertyStarts(ILandroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 1718
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1720
    .local v0, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    move-object v2, v1

    .local v2, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v1, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_1d

    .line 1721
    iget v1, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_6

    .line 1727
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1d
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1728
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1731
    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1732
    const/16 v1, 0x1c

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1733
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1734
    const/16 v1, 0x85

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1735
    const/16 v1, 0x86

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1738
    const/16 v1, 0x7f

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1739
    const/16 v1, 0x200a

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1740
    const/16 v1, 0x2010

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1741
    const/16 v1, 0x206a

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1742
    const/16 v1, 0x2070

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1743
    const v1, 0xfeff

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1744
    const v1, 0xff00

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1747
    const/16 v1, 0xa0

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1748
    const/16 v1, 0xa1

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1749
    const/16 v1, 0x2007

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1750
    const/16 v1, 0x2008

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1751
    const/16 v1, 0x202f

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1752
    const/16 v1, 0x2030

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1757
    const/16 v1, 0x3007

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1758
    const/16 v1, 0x3008

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1759
    const/16 v1, 0x4e00

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1760
    const/16 v1, 0x4e01

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1761
    const/16 v1, 0x4e8c

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1762
    const/16 v1, 0x4e8d

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1763
    const/16 v1, 0x4e09

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1764
    const/16 v1, 0x4e0a

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1765
    const/16 v1, 0x56db

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1766
    const/16 v1, 0x56dc

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1767
    const/16 v1, 0x4e94

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1768
    const/16 v1, 0x4e95

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1769
    const/16 v1, 0x516d

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1770
    const/16 v1, 0x516e

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1771
    const/16 v1, 0x4e03

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1772
    const/16 v1, 0x4e04

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1773
    const/16 v1, 0x516b

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1774
    const/16 v1, 0x516c

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1775
    const/16 v1, 0x4e5d

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1776
    const/16 v1, 0x4e5e

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1779
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1780
    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1781
    const/16 v1, 0x41

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1782
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1783
    const v1, 0xff41

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1784
    const v1, 0xff5b

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1785
    const v1, 0xff21

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1786
    const v1, 0xff3b

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1789
    const/16 v1, 0x67

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1790
    const/16 v1, 0x47

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1791
    const v1, 0xff47

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1792
    const v1, 0xff27

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1795
    const/16 v1, 0x2060

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1796
    const v1, 0xfff0

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1797
    const v1, 0xfffc

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1798
    const/high16 v1, 0xe0000

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1799
    const v1, 0xe1000

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1802
    const/16 v1, 0x34f

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1803
    const/16 v1, 0x350

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1805
    return-object p1
.end method

.method public blacklist digit(I)I
    .registers 4
    .param p1, "c"    # I

    .line 1148
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1149
    .local v0, "value":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_f

    .line 1150
    return v0

    .line 1152
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getAdditional(II)I
    .registers 5
    .param p1, "codepoint"    # I
    .param p2, "column"    # I

    .line 271
    nop

    .line 272
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lt p2, v0, :cond_7

    .line 273
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getAge(I)Landroid/icu/util/VersionInfo;
    .registers 6
    .param p1, "codepoint"    # I

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x18

    .line 301
    .local v1, "version":I
    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v3, v1, 0x3

    invoke-static {v2, v3, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIDTypes(ILjava/util/EnumSet;)I
    .registers 8
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/lang/UCharacter$IdentifierType;",
            ">;)I"
        }
    .end annotation

    .line 1881
    .local p2, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/lang/UCharacter$IdentifierType;>;"
    invoke-virtual {p2}, Ljava/util/EnumSet;->clear()V

    .line 1882
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1a

    .line 1883
    .local v1, "value":I
    and-int/lit8 v2, v1, 0x30

    const/4 v3, 0x1

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3e

    if-nez v1, :cond_14

    goto :goto_3e

    .line 1901
    :cond_14
    sget-object v2, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_XID:Landroid/icu/lang/UCharacter$IdentifierType;

    invoke-static {v1, v3, v2, p2}, Landroid/icu/impl/UCharacterProperty;->maybeAddType(IILandroid/icu/lang/UCharacter$IdentifierType;Ljava/util/EnumSet;)V

    .line 1902
    const/16 v2, 0x20

    sget-object v3, Landroid/icu/lang/UCharacter$IdentifierType;->EXCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

    invoke-static {v1, v2, v3, p2}, Landroid/icu/impl/UCharacterProperty;->maybeAddType(IILandroid/icu/lang/UCharacter$IdentifierType;Ljava/util/EnumSet;)V

    .line 1903
    sget-object v2, Landroid/icu/lang/UCharacter$IdentifierType;->OBSOLETE:Landroid/icu/lang/UCharacter$IdentifierType;

    invoke-static {v1, v0, v2, p2}, Landroid/icu/impl/UCharacterProperty;->maybeAddType(IILandroid/icu/lang/UCharacter$IdentifierType;Ljava/util/EnumSet;)V

    .line 1904
    const/4 v0, 0x4

    sget-object v2, Landroid/icu/lang/UCharacter$IdentifierType;->TECHNICAL:Landroid/icu/lang/UCharacter$IdentifierType;

    invoke-static {v1, v0, v2, p2}, Landroid/icu/impl/UCharacterProperty;->maybeAddType(IILandroid/icu/lang/UCharacter$IdentifierType;Ljava/util/EnumSet;)V

    .line 1905
    const/16 v0, 0x8

    sget-object v2, Landroid/icu/lang/UCharacter$IdentifierType;->UNCOMMON_USE:Landroid/icu/lang/UCharacter$IdentifierType;

    invoke-static {v1, v0, v2, p2}, Landroid/icu/impl/UCharacterProperty;->maybeAddType(IILandroid/icu/lang/UCharacter$IdentifierType;Ljava/util/EnumSet;)V

    .line 1906
    const/16 v0, 0x10

    sget-object v2, Landroid/icu/lang/UCharacter$IdentifierType;->LIMITED_USE:Landroid/icu/lang/UCharacter$IdentifierType;

    invoke-static {v1, v0, v2, p2}, Landroid/icu/impl/UCharacterProperty;->maybeAddType(IILandroid/icu/lang/UCharacter$IdentifierType;Ljava/util/EnumSet;)V

    .line 1907
    invoke-virtual {p2}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0

    .line 1886
    :cond_3e
    :goto_3e
    sparse-switch v1, :sswitch_data_6a

    .line 1894
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1895
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "unknown IdentifierType data value 0x%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1892
    :sswitch_55
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->RECOMMENDED:Landroid/icu/lang/UCharacter$IdentifierType;

    .local v0, "t":Landroid/icu/lang/UCharacter$IdentifierType;
    goto :goto_66

    .line 1891
    .end local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    :sswitch_58
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->INCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

    .restart local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    goto :goto_66

    .line 1890
    .end local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    :sswitch_5b
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_NFKC:Landroid/icu/lang/UCharacter$IdentifierType;

    .restart local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    goto :goto_66

    .line 1889
    .end local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    :sswitch_5e
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->DEFAULT_IGNORABLE:Landroid/icu/lang/UCharacter$IdentifierType;

    .restart local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    goto :goto_66

    .line 1888
    .end local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    :sswitch_61
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->DEPRECATED:Landroid/icu/lang/UCharacter$IdentifierType;

    .restart local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    goto :goto_66

    .line 1887
    .end local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    :sswitch_64
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_CHARACTER:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 1897
    .restart local v0    # "t":Landroid/icu/lang/UCharacter$IdentifierType;
    :goto_66
    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1898
    return v3

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_64
        0x30 -> :sswitch_61
        0x31 -> :sswitch_5e
        0x32 -> :sswitch_5b
        0x3e -> :sswitch_58
        0x3f -> :sswitch_55
    .end sparse-switch
.end method

.method public blacklist getIntPropertyMaxValue(I)I
    .registers 4
    .param p1, "which"    # I

    .line 954
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_c

    .line 955
    if-ltz p1, :cond_1b

    const/16 v0, 0x4c

    if-ge p1, v0, :cond_1b

    .line 956
    const/4 v0, 0x1

    return v0

    .line 958
    :cond_c
    const/16 v0, 0x101b

    if-ge p1, v0, :cond_1b

    .line 959
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p1, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getMaxValue(I)I

    move-result v0

    return v0

    .line 961
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getIntPropertyValue(II)I
    .registers 5
    .param p1, "c"    # I
    .param p2, "which"    # I

    .line 941
    const/16 v0, 0x1000

    if-ge p2, v0, :cond_13

    .line 942
    if-ltz p2, :cond_2f

    const/16 v0, 0x4c

    if-ge p2, v0, :cond_2f

    .line 943
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result v0

    return v0

    .line 945
    :cond_13
    const/16 v0, 0x101b

    if-ge p2, v0, :cond_22

    .line 946
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p2, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getValue(I)I

    move-result v0

    return v0

    .line 947
    :cond_22
    const/16 v0, 0x2000

    if-ne p2, v0, :cond_2f

    .line 948
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    return v0

    .line 950
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxValues(I)I
    .registers 3
    .param p1, "column"    # I

    .line 1100
    packed-switch p1, :pswitch_data_c

    .line 1106
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1104
    :pswitch_5
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    return v0

    .line 1102
    :pswitch_8
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public blacklist getNumericValue(I)I
    .registers 8
    .param p1, "c"    # I

    .line 1158
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v0

    .line 1160
    .local v0, "ntv":I
    if-nez v0, :cond_f

    .line 1161
    invoke-static {p1}, Landroid/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result v1

    return v1

    .line 1162
    :cond_f
    const/16 v1, 0xb

    if-ge v0, v1, :cond_16

    .line 1164
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 1165
    :cond_16
    const/16 v1, 0x15

    if-ge v0, v1, :cond_1d

    .line 1167
    add-int/lit8 v1, v0, -0xb

    return v1

    .line 1168
    :cond_1d
    const/16 v1, 0xb0

    if-ge v0, v1, :cond_24

    .line 1170
    add-int/lit8 v1, v0, -0x15

    return v1

    .line 1171
    :cond_24
    const/16 v1, 0x1e0

    const/4 v2, -0x2

    if-ge v0, v1, :cond_2a

    .line 1173
    return v2

    .line 1174
    :cond_2a
    const/16 v1, 0x300

    if-ge v0, v1, :cond_48

    .line 1176
    shr-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, -0xe

    .line 1177
    .local v1, "mant":I
    and-int/lit8 v3, v0, 0x1f

    const/4 v4, 0x2

    add-int/2addr v3, v4

    .line 1178
    .local v3, "exp":I
    const/16 v5, 0x9

    if-lt v3, v5, :cond_40

    if-ne v3, v5, :cond_3f

    if-gt v1, v4, :cond_3f

    goto :goto_40

    .line 1185
    :cond_3f
    return v2

    .line 1179
    :cond_40
    :goto_40
    move v2, v1

    .line 1181
    .local v2, "numValue":I
    :cond_41
    mul-int/lit8 v2, v2, 0xa

    .line 1182
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_41

    .line 1183
    return v2

    .line 1187
    .end local v1    # "mant":I
    .end local v2    # "numValue":I
    .end local v3    # "exp":I
    :cond_48
    const/16 v1, 0x324

    if-ge v0, v1, :cond_69

    .line 1189
    shr-int/lit8 v1, v0, 0x2

    add-int/lit16 v1, v1, -0xbf

    .line 1190
    .local v1, "numValue":I
    and-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 1192
    .local v2, "exp":I
    packed-switch v2, :pswitch_data_70

    goto :goto_68

    .line 1194
    :pswitch_58
    const v3, 0xc5c100

    mul-int/2addr v1, v3

    .line 1195
    goto :goto_68

    .line 1197
    :pswitch_5d
    const v3, 0x34bc0

    mul-int/2addr v1, v3

    .line 1198
    goto :goto_68

    .line 1200
    :pswitch_62
    mul-int/lit16 v1, v1, 0xe10

    .line 1201
    goto :goto_68

    .line 1203
    :pswitch_65
    mul-int/lit8 v1, v1, 0x3c

    .line 1204
    nop

    .line 1210
    :goto_68
    return v1

    .line 1211
    .end local v1    # "numValue":I
    .end local v2    # "exp":I
    :cond_69
    const/16 v1, 0x34c

    if-ge v0, v1, :cond_6e

    .line 1213
    return v2

    .line 1216
    :cond_6e
    return v2

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_65
        :pswitch_62
        :pswitch_5d
        :pswitch_58
    .end packed-switch
.end method

.method public final blacklist getProperty(I)I
    .registers 3
    .param p1, "ch"    # I

    .line 259
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    return v0
.end method

.method final blacklist getSource(I)I
    .registers 5
    .param p1, "which"    # I

    .line 965
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 966
    return v0

    .line 967
    :cond_4
    const/16 v1, 0x4c

    if-ge p1, v1, :cond_11

    .line 968
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->getSource()I

    move-result v0

    return v0

    .line 969
    :cond_11
    const/16 v1, 0x1000

    if-ge p1, v1, :cond_16

    .line 970
    return v0

    .line 971
    :cond_16
    const/16 v1, 0x101b

    if-ge p1, v1, :cond_25

    .line 972
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p1, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getSource()I

    move-result v0

    return v0

    .line 973
    :cond_25
    const/16 v1, 0x4000

    if-ge p1, v1, :cond_2f

    .line 974
    sparse-switch p1, :sswitch_data_44

    .line 980
    return v0

    .line 977
    :sswitch_2d
    const/4 v0, 0x1

    return v0

    .line 982
    :cond_2f
    const/16 v1, 0x400e

    const/4 v2, 0x2

    if-ge p1, v1, :cond_3f

    .line 983
    packed-switch p1, :pswitch_data_4e

    .line 1006
    return v0

    .line 1003
    :pswitch_38
    const/4 v0, 0x3

    return v0

    .line 998
    :pswitch_3a
    const/4 v0, 0x4

    return v0

    .line 988
    :pswitch_3c
    const/4 v0, 0x5

    return v0

    .line 985
    :pswitch_3e
    return v2

    .line 1009
    :cond_3f
    packed-switch p1, :pswitch_data_6c

    .line 1014
    return v0

    .line 1012
    :pswitch_43
    return v2

    :sswitch_data_44
    .sparse-switch
        0x2000 -> :sswitch_2d
        0x3000 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x4000
        :pswitch_3e
        :pswitch_3c
        :pswitch_3a
        :pswitch_38
        :pswitch_3a
        :pswitch_38
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_38
        :pswitch_3a
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x7000
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method public blacklist getType(I)I
    .registers 3
    .param p1, "c"    # I

    .line 676
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public blacklist getUnicodeNumericValue(I)D
    .registers 10
    .param p1, "c"    # I

    .line 1222
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v0

    .line 1224
    .local v0, "ntv":I
    const-wide v1, -0x3e6290cbac000000L    # -1.23456789E8

    if-nez v0, :cond_10

    .line 1225
    return-wide v1

    .line 1226
    :cond_10
    const/16 v3, 0xb

    if-ge v0, v3, :cond_18

    .line 1228
    add-int/lit8 v1, v0, -0x1

    int-to-double v1, v1

    return-wide v1

    .line 1229
    :cond_18
    const/16 v3, 0x15

    if-ge v0, v3, :cond_20

    .line 1231
    add-int/lit8 v1, v0, -0xb

    int-to-double v1, v1

    return-wide v1

    .line 1232
    :cond_20
    const/16 v3, 0xb0

    if-ge v0, v3, :cond_28

    .line 1234
    add-int/lit8 v1, v0, -0x15

    int-to-double v1, v1

    return-wide v1

    .line 1235
    :cond_28
    const/16 v3, 0x1e0

    if-ge v0, v3, :cond_38

    .line 1237
    shr-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, -0xc

    .line 1238
    .local v1, "numerator":I
    and-int/lit8 v2, v0, 0xf

    add-int/lit8 v2, v2, 0x1

    .line 1239
    .local v2, "denominator":I
    int-to-double v3, v1

    int-to-double v5, v2

    div-double/2addr v3, v5

    return-wide v3

    .line 1240
    .end local v1    # "numerator":I
    .end local v2    # "denominator":I
    :cond_38
    const/16 v3, 0x300

    if-ge v0, v3, :cond_65

    .line 1243
    shr-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, -0xe

    .line 1244
    .local v1, "mant":I
    and-int/lit8 v2, v0, 0x1f

    add-int/lit8 v2, v2, 0x2

    .line 1245
    .local v2, "exp":I
    int-to-double v3, v1

    .line 1248
    .local v3, "numValue":D
    :goto_45
    const/4 v5, 0x4

    if-lt v2, v5, :cond_51

    .line 1249
    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v3, v5

    .line 1250
    add-int/lit8 v2, v2, -0x4

    goto :goto_45

    .line 1252
    :cond_51
    packed-switch v2, :pswitch_data_b4

    goto :goto_64

    .line 1254
    :pswitch_55
    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    .line 1255
    goto :goto_64

    .line 1257
    :pswitch_5c
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    .line 1258
    goto :goto_64

    .line 1260
    :pswitch_60
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr v3, v5

    .line 1261
    nop

    .line 1267
    :goto_64
    return-wide v3

    .line 1268
    .end local v1    # "mant":I
    .end local v2    # "exp":I
    .end local v3    # "numValue":D
    :cond_65
    const/16 v3, 0x324

    if-ge v0, v3, :cond_87

    .line 1270
    shr-int/lit8 v1, v0, 0x2

    add-int/lit16 v1, v1, -0xbf

    .line 1271
    .local v1, "numValue":I
    and-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 1273
    .restart local v2    # "exp":I
    packed-switch v2, :pswitch_data_be

    goto :goto_85

    .line 1275
    :pswitch_75
    const v3, 0xc5c100

    mul-int/2addr v1, v3

    .line 1276
    goto :goto_85

    .line 1278
    :pswitch_7a
    const v3, 0x34bc0

    mul-int/2addr v1, v3

    .line 1279
    goto :goto_85

    .line 1281
    :pswitch_7f
    mul-int/lit16 v1, v1, 0xe10

    .line 1282
    goto :goto_85

    .line 1284
    :pswitch_82
    mul-int/lit8 v1, v1, 0x3c

    .line 1285
    nop

    .line 1291
    :goto_85
    int-to-double v3, v1

    return-wide v3

    .line 1292
    .end local v1    # "numValue":I
    .end local v2    # "exp":I
    :cond_87
    const/16 v3, 0x33c

    if-ge v0, v3, :cond_9d

    .line 1294
    add-int/lit16 v1, v0, -0x324

    .line 1295
    .local v1, "frac20":I
    and-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 1296
    .local v2, "numerator":I
    shr-int/lit8 v3, v1, 0x2

    const/16 v4, 0x14

    shl-int v3, v4, v3

    .line 1297
    .local v3, "denominator":I
    int-to-double v4, v2

    int-to-double v6, v3

    div-double/2addr v4, v6

    return-wide v4

    .line 1298
    .end local v1    # "frac20":I
    .end local v2    # "numerator":I
    .end local v3    # "denominator":I
    :cond_9d
    const/16 v3, 0x34c

    if-ge v0, v3, :cond_b3

    .line 1300
    add-int/lit16 v1, v0, -0x33c

    .line 1301
    .local v1, "frac32":I
    and-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 1302
    .restart local v2    # "numerator":I
    shr-int/lit8 v3, v1, 0x2

    const/16 v4, 0x20

    shl-int v3, v4, v3

    .line 1303
    .restart local v3    # "denominator":I
    int-to-double v4, v2

    int-to-double v6, v3

    div-double/2addr v4, v6

    return-wide v4

    .line 1306
    .end local v1    # "frac32":I
    .end local v2    # "numerator":I
    .end local v3    # "denominator":I
    :cond_b3
    return-wide v1

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5c
        :pswitch_55
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_82
        :pswitch_7f
        :pswitch_7a
        :pswitch_75
    .end packed-switch
.end method

.method public blacklist hasBinaryProperty(II)Z
    .registers 4
    .param p1, "c"    # I
    .param p2, "which"    # I

    .line 665
    if-ltz p2, :cond_10

    const/16 v0, 0x4c

    if-gt v0, p2, :cond_7

    goto :goto_10

    .line 669
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result v0

    return v0

    .line 667
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIDType(II)Z
    .registers 8
    .param p1, "c"    # I
    .param p2, "typeIndex"    # I

    .line 1857
    const/4 v0, 0x0

    if-ltz p2, :cond_27

    sget-object v1, Landroid/icu/impl/UCharacterProperty;->idTypeToEncoded:[I

    array-length v1, v1

    if-lt p2, v1, :cond_9

    goto :goto_27

    .line 1860
    :cond_9
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->idTypeToEncoded:[I

    aget v1, v1, p2

    .line 1861
    .local v1, "encodedType":I
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1a

    .line 1862
    .local v2, "value":I
    and-int/lit16 v3, v1, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    .line 1863
    const/16 v3, 0x30

    if-ge v2, v3, :cond_22

    and-int v3, v2, v1

    if-eqz v3, :cond_22

    move v0, v4

    :cond_22
    return v0

    .line 1865
    :cond_23
    if-ne v2, v1, :cond_26

    move v0, v4

    :cond_26
    return v0

    .line 1858
    .end local v1    # "encodedType":I
    .end local v2    # "value":I
    :cond_27
    :goto_27
    return v0
.end method

.method public blacklist hasIDType(ILandroid/icu/lang/UCharacter$IdentifierType;)Z
    .registers 4
    .param p1, "c"    # I
    .param p2, "type"    # Landroid/icu/lang/UCharacter$IdentifierType;

    .line 1870
    invoke-virtual {p2}, Landroid/icu/lang/UCharacter$IdentifierType;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty;->hasIDType(II)Z

    move-result v0

    return v0
.end method

.method public blacklist ublock_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 1847
    new-instance v0, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {v0}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    .line 1848
    .local v0, "range":Landroid/icu/util/CodePointMap$Range;
    const/4 v1, 0x0

    .line 1849
    .local v1, "start":I
    :goto_6
    const v2, 0x11000

    if-ge v1, v2, :cond_20

    iget-object v2, p0, Landroid/icu/impl/UCharacterProperty;->m_blockTrie_:Landroid/icu/util/CodePointTrie;

    .line 1850
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/icu/util/CodePointTrie;->getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1851
    shl-int/lit8 v2, v1, 0x4

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1852
    invoke-virtual {v0}, Landroid/icu/util/CodePointMap$Range;->getEnd()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 1854
    :cond_20
    return-void
.end method

.method public blacklist upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 1810
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v0, :cond_21

    .line 1812
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1814
    .local v0, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    move-object v2, v1

    .local v2, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v1, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_21

    .line 1815
    iget v1, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_a

    .line 1818
    .end local v0    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_21
    return-void
.end method
