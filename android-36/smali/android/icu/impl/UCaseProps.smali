.class public final Landroid/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source "UCaseProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCaseProps$IsAcceptable;,
        Landroid/icu/impl/UCaseProps$ContextIterator;,
        Landroid/icu/impl/UCaseProps$LatinCase;
    }
.end annotation


# static fields
.field private static final blacklist ABOVE:I = 0x40

.field private static final blacklist CLOSURE_MAX_LENGTH:I = 0xf

.field private static final blacklist DATA_FILE_NAME:Ljava/lang/String; = "ucase.icu"

.field private static final blacklist DATA_NAME:Ljava/lang/String; = "ucase"

.field private static final blacklist DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final blacklist DELTA_SHIFT:I = 0x7

.field private static final blacklist DOT_MASK:I = 0x60

.field private static final blacklist EXCEPTION:I = 0x8

.field private static final blacklist EXC_CLOSURE:I = 0x6

.field private static final blacklist EXC_CONDITIONAL_FOLD:I = 0x8000

.field private static final blacklist EXC_CONDITIONAL_SPECIAL:I = 0x4000

.field private static final blacklist EXC_DELTA:I = 0x4

.field private static final blacklist EXC_DELTA_IS_NEGATIVE:I = 0x400

.field private static final blacklist EXC_DOT_SHIFT:I = 0x7

.field private static final blacklist EXC_DOUBLE_SLOTS:I = 0x100

.field private static final blacklist EXC_FOLD:I = 0x1

.field private static final blacklist EXC_FULL_MAPPINGS:I = 0x7

.field private static final blacklist EXC_LOWER:I = 0x0

.field private static final blacklist EXC_NO_SIMPLE_CASE_FOLDING:I = 0x200

.field private static final blacklist EXC_SENSITIVE:I = 0x800

.field private static final blacklist EXC_SHIFT:I = 0x4

.field private static final blacklist EXC_TITLE:I = 0x3

.field private static final blacklist EXC_UPPER:I = 0x2

.field private static final blacklist FMT:I = 0x63415345

.field static final blacklist FOLD_CASE_OPTIONS_MASK:I = 0x7

.field private static final blacklist FULL_LOWER:I = 0xf

.field static final blacklist IGNORABLE:I = 0x4

.field public static final blacklist INSTANCE:Landroid/icu/impl/UCaseProps;

.field private static final blacklist IX_EXC_LENGTH:I = 0x3

.field private static final blacklist IX_TOP:I = 0x10

.field private static final blacklist IX_TRIE_SIZE:I = 0x2

.field private static final blacklist IX_UNFOLD_LENGTH:I = 0x4

.field static final blacklist LOC_ARMENIAN:I = 0x6

.field public static final blacklist LOC_DUTCH:I = 0x5

.field static final blacklist LOC_GREEK:I = 0x4

.field static final blacklist LOC_LITHUANIAN:I = 0x3

.field public static final blacklist LOC_ROOT:I = 0x1

.field static final blacklist LOC_TURKISH:I = 0x2

.field public static final blacklist LOWER:I = 0x1

.field public static final blacklist MAX_STRING_LENGTH:I = 0x1f

.field public static final blacklist NONE:I = 0x0

.field private static final blacklist OTHER_ACCENT:I = 0x60

.field private static final blacklist SENSITIVE:I = 0x10

.field private static final blacklist SOFT_DOTTED:I = 0x20

.field public static final blacklist TITLE:I = 0x3

.field public static final blacklist TYPE_MASK:I = 0x3

.field private static final blacklist UNFOLD_ROWS:I = 0x0

.field private static final blacklist UNFOLD_ROW_WIDTH:I = 0x1

.field private static final blacklist UNFOLD_STRING_WIDTH:I = 0x2

.field public static final blacklist UPPER:I = 0x2

.field public static final blacklist dummyStringBuilder:Ljava/lang/StringBuilder;

.field private static final blacklist flagsOffset:[B

.field private static final blacklist iDot:Ljava/lang/String; = "i\u0307"

.field private static final blacklist iDotAcute:Ljava/lang/String; = "i\u0307\u0301"

.field private static final blacklist iDotGrave:Ljava/lang/String; = "i\u0307\u0300"

.field private static final blacklist iDotTilde:Ljava/lang/String; = "i\u0307\u0303"

.field private static final blacklist iOgonekDot:Ljava/lang/String; = "\u012f\u0307"

.field private static final blacklist jDot:Ljava/lang/String; = "j\u0307"


# instance fields
.field private blacklist exceptions:Ljava/lang/String;

.field private blacklist indexes:[I

.field private blacklist trie:Landroid/icu/impl/Trie2_16;

.field private blacklist unfold:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 127
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1778
    :try_start_10
    new-instance v0, Landroid/icu/impl/UCaseProps;

    invoke-direct {v0}, Landroid/icu/impl/UCaseProps;-><init>()V

    sput-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_19

    .line 1781
    nop

    .line 1782
    return-void

    .line 1779
    :catch_19
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :array_20
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x5t
        0x6t
        0x6t
        0x7t
        0x6t
        0x7t
        0x7t
        0x8t
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "ucase.icu"

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 47
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/icu/impl/UCaseProps;->readData(Ljava/nio/ByteBuffer;)V

    .line 48
    return-void
.end method

.method public static final blacklist getCaseLocale(Landroid/icu/util/ULocale;)I
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 886
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final blacklist getCaseLocale(Ljava/lang/String;)I
    .registers 9
    .param p0, "language"    # Ljava/lang/String;

    .line 894
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v0, v6, :cond_55

    .line 895
    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x74

    if-le v0, v7, :cond_1e

    goto :goto_54

    .line 897
    :cond_1e
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_53

    .line 899
    :cond_2f
    const-string v0, "el"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 900
    return v3

    .line 901
    :cond_38
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 902
    return v5

    .line 903
    :cond_41
    const-string v0, "nl"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 904
    return v2

    .line 905
    :cond_4a
    const-string v0, "hy"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 906
    return v1

    .line 898
    :cond_53
    :goto_53
    return v6

    .line 896
    :cond_54
    :goto_54
    return v4

    .line 908
    :cond_55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_91

    .line 909
    const-string v0, "tur"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "aze"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_90

    .line 911
    :cond_6c
    const-string v0, "ell"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 912
    return v3

    .line 913
    :cond_75
    const-string v0, "lit"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 914
    return v5

    .line 915
    :cond_7e
    const-string v0, "nld"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 916
    return v2

    .line 917
    :cond_87
    const-string v0, "hye"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 918
    return v1

    .line 910
    :cond_90
    :goto_90
    return v6

    .line 921
    :cond_91
    return v4
.end method

.method public static final blacklist getCaseLocale(Ljava/util/Locale;)I
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 883
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static final blacklist getDelta(I)I
    .registers 2
    .param p0, "props"    # I

    .line 1712
    int-to-short v0, p0

    shr-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private static final blacklist getExceptionsOffset(I)I
    .registers 2
    .param p0, "props"    # I

    .line 119
    shr-int/lit8 v0, p0, 0x4

    return v0
.end method

.method private final blacklist getSlotValue(III)I
    .registers 7
    .param p1, "excWord"    # I
    .param p2, "index"    # I
    .param p3, "excOffset"    # I

    .line 178
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_10

    .line 179
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v0

    add-int/2addr p3, v0

    .line 180
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "value":I
    goto :goto_29

    .line 182
    .end local v0    # "value":I
    :cond_10
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 183
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "excOffset":I
    .local v1, "excOffset":I
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 184
    .local p3, "value":I
    shl-int/lit8 v0, p3, 0x10

    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    move p3, v1

    .line 186
    .end local v1    # "excOffset":I
    .restart local v0    # "value":I
    .local p3, "excOffset":I
    :goto_29
    return v0
.end method

.method private final blacklist getSlotValueAndOffset(III)J
    .registers 12
    .param p1, "excWord"    # I
    .param p2, "index"    # I
    .param p3, "excOffset"    # I

    .line 164
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_11

    .line 165
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v0

    add-int/2addr p3, v0

    .line 166
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    .local v0, "value":J
    goto :goto_30

    .line 168
    .end local v0    # "value":J
    :cond_11
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 169
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "excOffset":I
    .local v1, "excOffset":I
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    int-to-long v2, p3

    .line 170
    .local v2, "value":J
    const/16 p3, 0x10

    shl-long v4, v2, p3

    iget-object p3, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    int-to-long v6, p3

    or-long v2, v4, v6

    move p3, v1

    move-wide v0, v2

    .line 172
    .end local v1    # "excOffset":I
    .end local v2    # "value":J
    .restart local v0    # "value":J
    .restart local p3    # "excOffset":I
    :goto_30
    int-to-long v2, p3

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2
.end method

.method static blacklist getTrie()Landroid/icu/impl/Trie2_16;
    .registers 1

    .line 1671
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iget-object v0, v0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    return-object v0
.end method

.method private static final blacklist getTypeAndIgnorableFromProps(I)I
    .registers 2
    .param p0, "props"    # I

    .line 1688
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static final blacklist getTypeFromProps(I)I
    .registers 2
    .param p0, "props"    # I

    .line 1683
    and-int/lit8 v0, p0, 0x3

    return v0
.end method

.method private static final blacklist hasSlot(II)Z
    .registers 4
    .param p0, "flags"    # I
    .param p1, "index"    # I

    .line 147
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private final blacklist isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z
    .registers 7
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p2, "dir"    # I

    .line 928
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 929
    return v0

    .line 932
    :cond_4
    invoke-interface {p1, p2}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :goto_7
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_1c

    .line 933
    invoke-virtual {p0, v2}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v1

    .line 934
    .local v1, "type":I
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_17

    .line 941
    .end local v1    # "type":I
    goto :goto_7

    .line 936
    .restart local v1    # "type":I
    :cond_17
    if-eqz v1, :cond_1b

    .line 937
    const/4 v0, 0x1

    return v0

    .line 939
    :cond_1b
    return v0

    .line 943
    .end local v1    # "type":I
    :cond_1c
    return v0
.end method

.method private final blacklist isFollowedByDotAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .registers 7
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;

    .line 1049
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1050
    return v0

    .line 1053
    :cond_4
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_8
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    move v3, v2

    .local v3, "c":I
    if-ltz v2, :cond_1d

    .line 1054
    const/16 v2, 0x307

    if-ne v3, v2, :cond_14

    .line 1055
    return v1

    .line 1057
    :cond_14
    invoke-virtual {p0, v3}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    .line 1058
    .local v2, "dotType":I
    const/16 v4, 0x60

    if-eq v2, v4, :cond_8

    .line 1059
    return v0

    .line 1063
    .end local v2    # "dotType":I
    :cond_1d
    return v0
.end method

.method private final blacklist isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .registers 7
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;

    .line 1028
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1029
    return v0

    .line 1032
    :cond_4
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_8
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    move v3, v2

    .local v3, "c":I
    if-ltz v2, :cond_1d

    .line 1033
    invoke-virtual {p0, v3}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    .line 1034
    .local v2, "dotType":I
    const/16 v4, 0x40

    if-ne v2, v4, :cond_18

    .line 1035
    return v1

    .line 1036
    :cond_18
    const/16 v4, 0x60

    if-eq v2, v4, :cond_8

    .line 1037
    return v0

    .line 1041
    .end local v2    # "dotType":I
    :cond_1d
    return v0
.end method

.method private final blacklist isPrecededBySoftDotted(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .registers 6
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;

    .line 951
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 952
    return v0

    .line 955
    :cond_4
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_8
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_1e

    .line 956
    invoke-virtual {p0, v2}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    .line 957
    .local v1, "dotType":I
    const/16 v3, 0x20

    if-ne v1, v3, :cond_19

    .line 958
    const/4 v0, 0x1

    return v0

    .line 959
    :cond_19
    const/16 v3, 0x60

    if-eq v1, v3, :cond_8

    .line 960
    return v0

    .line 964
    .end local v1    # "dotType":I
    :cond_1e
    return v0
.end method

.method private final blacklist isPrecededBy_I(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .registers 6
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;

    .line 1006
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1007
    return v0

    .line 1010
    :cond_4
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_8
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_1e

    .line 1011
    const/16 v1, 0x49

    if-ne v2, v1, :cond_15

    .line 1012
    const/4 v0, 0x1

    return v0

    .line 1014
    :cond_15
    invoke-virtual {p0, v2}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    .line 1015
    .local v1, "dotType":I
    const/16 v3, 0x60

    if-eq v1, v3, :cond_8

    .line 1016
    return v0

    .line 1020
    .end local v1    # "dotType":I
    :cond_1e
    return v0
.end method

.method static final blacklist isUpperOrTitleFromProps(I)Z
    .registers 2
    .param p0, "props"    # I

    .line 1692
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static final blacklist propsHasException(I)Z
    .registers 2
    .param p0, "props"    # I

    .line 123
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private final blacklist readData(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/icu/impl/UCaseProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/UCaseProps$IsAcceptable;-><init>(Landroid/icu/impl/UCaseProps-IA;)V

    const v1, 0x63415345

    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 56
    .local v0, "count":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_66

    .line 59
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    .line 61
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 62
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_2b

    .line 63
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 67
    .end local v1    # "i":I
    :cond_2b
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    .line 68
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    .line 69
    .local v1, "expectedTrieLength":I
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v3}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v3

    .line 70
    .local v3, "trieLength":I
    if-gt v3, v1, :cond_5e

    .line 74
    sub-int v4, v1, v3

    invoke-static {p1, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 77
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v5, 0x3

    aget v0, v4, v5

    .line 78
    if-lez v0, :cond_50

    .line 79
    invoke-static {p1, v0, v2}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    .line 83
    :cond_50
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v5, 0x4

    aget v0, v4, v5

    .line 84
    if-lez v0, :cond_5d

    .line 85
    invoke-static {p1, v0, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    .line 87
    :cond_5d
    return-void

    .line 71
    :cond_5e
    new-instance v2, Ljava/io/IOException;

    const-string v4, "ucase.icu: not enough bytes for the trie"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    .end local v1    # "expectedTrieLength":I
    .end local v3    # "trieLength":I
    :cond_66
    new-instance v1, Ljava/io/IOException;

    const-string v2, "indexes[0] too small in ucase.icu"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final blacklist slotOffset(II)B
    .registers 5
    .param p0, "flags"    # I
    .param p1, "index"    # I

    .line 150
    sget-object v0, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    const/4 v1, 0x1

    shl-int v2, v1, p1

    sub-int/2addr v2, v1

    and-int v1, p0, v2

    aget-byte v0, v0, v1

    return v0
.end method

.method private final blacklist strcmpMax(Ljava/lang/String;II)I
    .registers 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "unfoldOffset"    # I
    .param p3, "max"    # I

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 479
    .local v0, "length":I
    sub-int/2addr p3, v0

    .line 480
    const/4 v1, 0x0

    .line 482
    .local v1, "i1":I
    :goto_6
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i1":I
    .local v2, "i1":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 483
    .local v1, "c1":I
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "unfoldOffset":I
    .local v4, "unfoldOffset":I
    aget-char p2, v3, p2

    .line 484
    .local p2, "c2":I
    if-nez p2, :cond_16

    .line 485
    const/4 v3, 0x1

    return v3

    .line 487
    :cond_16
    sub-int/2addr v1, p2

    .line 488
    if-eqz v1, :cond_1a

    .line 489
    return v1

    .line 491
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2b

    .line 494
    if-eqz p3, :cond_29

    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    aget-char v3, v3, v4

    if-nez v3, :cond_27

    goto :goto_29

    .line 497
    :cond_27
    neg-int v3, p3

    return v3

    .line 495
    :cond_29
    :goto_29
    const/4 v3, 0x0

    return v3

    .line 491
    :cond_2b
    move v1, v2

    move p2, v4

    goto :goto_6
.end method

.method private final blacklist toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I
    .registers 25
    .param p1, "c"    # I
    .param p2, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p3, "out"    # Ljava/lang/Appendable;
    .param p4, "loc"    # I
    .param p5, "upperNotTitle"    # Z

    .line 1254
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p1

    .line 1255
    .local v5, "result":I
    iget-object v0, v1, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, v2}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v6

    .line 1256
    .local v6, "props":I
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_2b

    .line 1257
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    if-ne v0, v7, :cond_27

    .line 1258
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int v5, v2, v0

    move-object/from16 v14, p2

    goto/16 :goto_103

    .line 1257
    :cond_27
    move-object/from16 v14, p2

    goto/16 :goto_103

    .line 1261
    :cond_2b
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 1262
    .local v0, "excOffset":I
    iget-object v8, v1, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "excOffset":I
    .local v9, "excOffset":I
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1265
    .local v8, "excWord":I
    move v10, v9

    .line 1267
    .local v10, "excOffset2":I
    and-int/lit16 v0, v8, 0x4000

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x4

    if-eqz v0, :cond_83

    .line 1269
    if-ne v4, v12, :cond_48

    const/16 v0, 0x69

    if-ne v2, v0, :cond_48

    .line 1281
    const/16 v0, 0x130

    return v0

    .line 1282
    :cond_48
    if-ne v4, v11, :cond_58

    const/16 v0, 0x307

    if-ne v2, v0, :cond_58

    move-object/from16 v14, p2

    invoke-direct {v1, v14}, Landroid/icu/impl/UCaseProps;->isPrecededBySoftDotted(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1292
    const/4 v0, 0x0

    return v0

    .line 1282
    :cond_58
    move-object/from16 v14, p2

    .line 1293
    :cond_5a
    const/16 v0, 0x587

    if-ne v2, v0, :cond_7e

    .line 1299
    const/4 v0, 0x6

    if-ne v4, v0, :cond_6c

    .line 1300
    if-eqz p5, :cond_66

    :try_start_63
    const-string v0, "\u0535\u054e"

    goto :goto_68

    :cond_66
    const-string v0, "\u0535\u057e"

    :goto_68
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_76

    .line 1302
    :cond_6c
    if-eqz p5, :cond_71

    const-string v0, "\u0535\u0552"

    goto :goto_73

    :cond_71
    const-string v0, "\u0535\u0582"

    :goto_73
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_76} :catch_77

    .line 1304
    :goto_76
    return v12

    .line 1305
    :catch_77
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v7, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1293
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7e
    move/from16 v18, v7

    move/from16 v17, v8

    goto :goto_ce

    .line 1311
    :cond_83
    move-object/from16 v14, p2

    const/4 v0, 0x7

    invoke-static {v8, v0}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v15

    if-eqz v15, :cond_ca

    .line 1312
    invoke-direct {v1, v8, v0, v9}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v11

    .line 1313
    .local v11, "value":J
    long-to-int v0, v11

    const v16, 0xffff

    and-int v0, v0, v16

    .line 1316
    .local v0, "full":I
    const/16 v16, 0x20

    move/from16 v18, v7

    move/from16 v17, v8

    .end local v8    # "excWord":I
    .local v17, "excWord":I
    shr-long v7, v11, v16

    long-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    .line 1319
    .end local v9    # "excOffset":I
    .local v7, "excOffset":I
    and-int/lit8 v8, v0, 0xf

    add-int/2addr v7, v8

    .line 1320
    shr-int/2addr v0, v13

    .line 1321
    and-int/lit8 v8, v0, 0xf

    add-int/2addr v7, v8

    .line 1322
    shr-int/2addr v0, v13

    .line 1324
    if-eqz p5, :cond_b0

    .line 1325
    and-int/lit8 v0, v0, 0xf

    move v9, v7

    move v7, v0

    goto :goto_b9

    .line 1328
    :cond_b0
    and-int/lit8 v8, v0, 0xf

    add-int/2addr v7, v8

    .line 1329
    shr-int/lit8 v8, v0, 0x4

    and-int/lit8 v0, v8, 0xf

    move v9, v7

    move v7, v0

    .line 1332
    .end local v0    # "full":I
    .local v7, "full":I
    .restart local v9    # "excOffset":I
    :goto_b9
    if-eqz v7, :cond_ce

    .line 1335
    :try_start_bb
    iget-object v0, v1, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v8, v9, v7

    invoke-interface {v3, v0, v9, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c2} :catch_c3

    .line 1338
    return v7

    .line 1339
    :catch_c3
    move-exception v0

    .line 1340
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v8, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "full":I
    .end local v11    # "value":J
    .end local v17    # "excWord":I
    .restart local v8    # "excWord":I
    :cond_ca
    move/from16 v18, v7

    move/from16 v17, v8

    .line 1345
    .end local v8    # "excWord":I
    .restart local v17    # "excWord":I
    :cond_ce
    :goto_ce
    move/from16 v7, v17

    .end local v17    # "excWord":I
    .local v7, "excWord":I
    invoke-static {v7, v13}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    move/from16 v8, v18

    if-ne v0, v8, :cond_ec

    .line 1346
    invoke-direct {v1, v7, v13, v10}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    .line 1347
    .local v0, "delta":I
    and-int/lit16 v8, v7, 0x400

    if-nez v8, :cond_e9

    add-int v8, v2, v0

    goto :goto_eb

    :cond_e9
    sub-int v8, v2, v0

    :goto_eb
    return v8

    .line 1349
    .end local v0    # "delta":I
    :cond_ec
    if-nez p5, :cond_f7

    const/4 v15, 0x3

    invoke-static {v7, v15}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 1350
    const/4 v0, 0x3

    .local v0, "index":I
    goto :goto_ff

    .line 1351
    .end local v0    # "index":I
    :cond_f7
    const/4 v0, 0x2

    invoke-static {v7, v0}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1353
    const/4 v0, 0x2

    .line 1357
    .restart local v0    # "index":I
    :goto_ff
    invoke-direct {v1, v7, v0, v10}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v5

    .line 1360
    .end local v0    # "index":I
    .end local v7    # "excWord":I
    .end local v9    # "excOffset":I
    .end local v10    # "excOffset2":I
    :goto_103
    if-ne v5, v2, :cond_107

    not-int v0, v5

    goto :goto_108

    :cond_107
    move v0, v5

    :goto_108
    return v0

    .line 1355
    .restart local v7    # "excWord":I
    .restart local v9    # "excOffset":I
    .restart local v10    # "excOffset2":I
    :cond_109
    not-int v0, v2

    return v0
.end method


# virtual methods
.method public final blacklist addCaseClosure(ILandroid/icu/text/UnicodeSet;)V
    .registers 16
    .param p1, "c"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    .line 267
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 268
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 269
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-eqz v1, :cond_de

    .line 271
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v1

    .line 272
    .local v1, "delta":I
    if-eqz v1, :cond_1d

    .line 273
    add-int v2, p1, v1

    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 275
    .end local v1    # "delta":I
    :cond_1d
    goto/16 :goto_de

    .line 281
    :cond_1f
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 282
    .local v1, "excOffset":I
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "excOffset":I
    .local v3, "excOffset":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 283
    .local v1, "excWord":I
    move v2, v3

    .line 290
    .local v2, "excOffset0":I
    const v4, 0x8000

    and-int/2addr v4, v1

    const/16 v5, 0x49

    const/16 v6, 0x69

    if-eqz v4, :cond_46

    .line 292
    if-ne p1, v5, :cond_3c

    .line 294
    invoke-virtual {p2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 295
    return-void

    .line 296
    :cond_3c
    const/16 v4, 0x130

    if-ne p1, v4, :cond_51

    .line 299
    const-string v4, "i\u0307"

    invoke-virtual {p2, v4}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 300
    return-void

    .line 302
    :cond_46
    if-ne p1, v6, :cond_4c

    .line 303
    invoke-virtual {p2, v5}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 304
    return-void

    .line 305
    :cond_4c
    const/16 v4, 0x131

    if-ne p1, v4, :cond_51

    .line 307
    return-void

    .line 311
    :cond_51
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_52
    const/4 v5, 0x3

    if-gt v4, v5, :cond_66

    .line 312
    invoke-static {v1, v4}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 313
    move v3, v2

    .line 314
    invoke-direct {p0, v1, v4, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v5

    .line 315
    .local v5, "mapping":I
    invoke-virtual {p2, v5}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 311
    .end local v5    # "mapping":I
    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 318
    .end local v4    # "index":I
    :cond_66
    const/4 v4, 0x4

    invoke-static {v1, v4}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 319
    move v3, v2

    .line 320
    invoke-direct {p0, v1, v4, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v5

    .line 321
    .local v5, "delta":I
    and-int/lit16 v6, v1, 0x400

    if-nez v6, :cond_79

    add-int v6, p1, v5

    goto :goto_7b

    :cond_79
    sub-int v6, p1, v5

    :goto_7b
    invoke-virtual {p2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 326
    .end local v5    # "delta":I
    :cond_7e
    const/4 v5, 0x6

    invoke-static {v1, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v6

    const/16 v7, 0x20

    if-eqz v6, :cond_95

    .line 327
    move v3, v2

    .line 328
    invoke-direct {p0, v1, v5, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v5

    .line 329
    .local v5, "value":J
    long-to-int v8, v5

    and-int/lit8 v8, v8, 0xf

    .line 330
    .local v8, "closureLength":I
    shr-long v9, v5, v7

    long-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    .line 331
    .end local v5    # "value":J
    .local v9, "closureOffset":I
    goto :goto_97

    .line 332
    .end local v8    # "closureLength":I
    .end local v9    # "closureOffset":I
    :cond_95
    const/4 v8, 0x0

    .line 333
    .restart local v8    # "closureLength":I
    const/4 v9, 0x0

    .line 337
    .restart local v9    # "closureOffset":I
    :goto_97
    const/4 v5, 0x7

    invoke-static {v1, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 338
    move v3, v2

    .line 339
    invoke-direct {p0, v1, v5, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v5

    .line 340
    .restart local v5    # "value":J
    long-to-int v10, v5

    .line 343
    .local v10, "fullLength":I
    shr-long v11, v5, v7

    long-to-int v7, v11

    add-int/lit8 v7, v7, 0x1

    .line 345
    .end local v3    # "excOffset":I
    .local v7, "excOffset":I
    const v3, 0xffff

    and-int/2addr v3, v10

    .line 348
    .end local v10    # "fullLength":I
    .local v3, "fullLength":I
    and-int/lit8 v10, v3, 0xf

    add-int/2addr v7, v10

    .line 349
    shr-int/2addr v3, v4

    .line 352
    and-int/lit8 v10, v3, 0xf

    .line 353
    .local v10, "length":I
    if-eqz v10, :cond_c1

    .line 354
    iget-object v11, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v12, v7, v10

    invoke-virtual {v11, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 355
    add-int/2addr v7, v10

    .line 359
    :cond_c1
    shr-int/2addr v3, v4

    .line 360
    and-int/lit8 v11, v3, 0xf

    add-int/2addr v7, v11

    .line 361
    shr-int/2addr v3, v4

    .line 362
    add-int v4, v7, v3

    .line 364
    .end local v7    # "excOffset":I
    .local v4, "excOffset":I
    move v9, v4

    move v3, v4

    .line 368
    .end local v4    # "excOffset":I
    .end local v5    # "value":J
    .end local v10    # "length":I
    .local v3, "excOffset":I
    :cond_ca
    add-int v4, v9, v8

    .line 369
    .local v4, "limit":I
    move v5, v9

    .local v5, "index":I
    :goto_cd
    if-ge v5, v4, :cond_de

    .line 370
    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 371
    .local v6, "mapping":I
    invoke-virtual {p2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 369
    .end local v6    # "mapping":I
    invoke-static {p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_cd

    .line 374
    .end local v1    # "excWord":I
    .end local v2    # "excOffset0":I
    .end local v3    # "excOffset":I
    .end local v4    # "limit":I
    .end local v5    # "index":I
    .end local v8    # "closureLength":I
    .end local v9    # "closureOffset":I
    :cond_de
    :goto_de
    return-void
.end method

.method public final blacklist addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 101
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
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

    .line 104
    iget v1, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_6

    .line 115
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1d
    return-void
.end method

.method public final blacklist addSimpleCaseClosure(ILandroid/icu/text/UnicodeSet;)V
    .registers 16
    .param p1, "c"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    .line 377
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 378
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 379
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-eqz v1, :cond_ce

    .line 381
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v1

    .line 382
    .local v1, "delta":I
    if-eqz v1, :cond_1d

    .line 383
    add-int v2, p1, v1

    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 385
    .end local v1    # "delta":I
    :cond_1d
    goto/16 :goto_ce

    .line 388
    :cond_1f
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 389
    .local v1, "excOffset":I
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "excOffset":I
    .local v3, "excOffset":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 390
    .local v1, "excWord":I
    move v2, v3

    .line 394
    .local v2, "excOffset0":I
    const v4, 0x8000

    and-int/2addr v4, v1

    const/16 v5, 0x49

    const/16 v6, 0x69

    if-eqz v4, :cond_41

    .line 396
    if-ne p1, v5, :cond_3c

    .line 398
    invoke-virtual {p2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 399
    return-void

    .line 400
    :cond_3c
    const/16 v4, 0x130

    if-ne p1, v4, :cond_4c

    .line 402
    return-void

    .line 404
    :cond_41
    if-ne p1, v6, :cond_47

    .line 405
    invoke-virtual {p2, v5}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 406
    return-void

    .line 407
    :cond_47
    const/16 v4, 0x131

    if-ne p1, v4, :cond_4c

    .line 409
    return-void

    .line 413
    :cond_4c
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_4d
    const/4 v5, 0x3

    if-gt v4, v5, :cond_61

    .line 414
    invoke-static {v1, v4}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 415
    move v3, v2

    .line 416
    invoke-direct {p0, v1, v4, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v5

    .line 417
    .local v5, "mapping":I
    invoke-virtual {p2, v5}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 413
    .end local v5    # "mapping":I
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 420
    .end local v4    # "index":I
    :cond_61
    const/4 v4, 0x4

    invoke-static {v1, v4}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 421
    move v3, v2

    .line 422
    invoke-direct {p0, v1, v4, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v5

    .line 423
    .local v5, "delta":I
    and-int/lit16 v6, v1, 0x400

    if-nez v6, :cond_74

    add-int v6, p1, v5

    goto :goto_76

    :cond_74
    sub-int v6, p1, v5

    .line 424
    .local v6, "mapping":I
    :goto_76
    invoke-virtual {p2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 429
    .end local v5    # "delta":I
    .end local v6    # "mapping":I
    :cond_79
    const/4 v5, 0x6

    invoke-static {v1, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v6

    const/16 v7, 0x20

    if-eqz v6, :cond_90

    .line 430
    move v3, v2

    .line 431
    invoke-direct {p0, v1, v5, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v5

    .line 432
    .local v5, "value":J
    long-to-int v8, v5

    and-int/lit8 v8, v8, 0xf

    .line 433
    .local v8, "closureLength":I
    shr-long v9, v5, v7

    long-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    .line 434
    .end local v5    # "value":J
    .local v9, "closureOffset":I
    goto :goto_92

    .line 435
    .end local v8    # "closureLength":I
    .end local v9    # "closureOffset":I
    :cond_90
    const/4 v8, 0x0

    .line 436
    .restart local v8    # "closureLength":I
    const/4 v9, 0x0

    .line 440
    .restart local v9    # "closureOffset":I
    :goto_92
    if-lez v8, :cond_ba

    const/4 v5, 0x7

    invoke-static {v1, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 441
    move v3, v2

    .line 442
    invoke-direct {p0, v1, v5, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v5

    .line 443
    .restart local v5    # "value":J
    long-to-int v10, v5

    .line 446
    .local v10, "fullLength":I
    shr-long v11, v5, v7

    long-to-int v7, v11

    add-int/lit8 v7, v7, 0x1

    .line 448
    .end local v3    # "excOffset":I
    .local v7, "excOffset":I
    const v3, 0xffff

    and-int/2addr v3, v10

    .line 451
    .end local v10    # "fullLength":I
    .local v3, "fullLength":I
    and-int/lit8 v10, v3, 0xf

    add-int/2addr v7, v10

    .line 452
    shr-int/2addr v3, v4

    .line 453
    and-int/lit8 v10, v3, 0xf

    add-int/2addr v7, v10

    .line 454
    shr-int/2addr v3, v4

    .line 455
    and-int/lit8 v10, v3, 0xf

    add-int/2addr v7, v10

    .line 456
    shr-int/2addr v3, v4

    .line 457
    add-int v4, v7, v3

    .line 459
    .end local v7    # "excOffset":I
    .local v4, "excOffset":I
    move v9, v4

    move v3, v4

    .line 463
    .end local v4    # "excOffset":I
    .end local v5    # "value":J
    .local v3, "excOffset":I
    :cond_ba
    add-int v4, v9, v8

    .line 464
    .local v4, "limit":I
    move v5, v9

    .local v5, "index":I
    :goto_bd
    if-ge v5, v4, :cond_ce

    .line 465
    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 466
    .restart local v6    # "mapping":I
    invoke-virtual {p2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 464
    .end local v6    # "mapping":I
    invoke-static {p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_bd

    .line 469
    .end local v1    # "excWord":I
    .end local v2    # "excOffset0":I
    .end local v3    # "excOffset":I
    .end local v4    # "limit":I
    .end local v5    # "index":I
    .end local v8    # "closureLength":I
    .end local v9    # "closureOffset":I
    :cond_ce
    :goto_ce
    return-void
.end method

.method public final blacklist addStringCaseClosure(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z
    .registers 15
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    .line 515
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    if-nez p1, :cond_8

    goto :goto_59

    .line 518
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 519
    .local v0, "length":I
    const/4 v2, 0x1

    if-gt v0, v2, :cond_10

    .line 527
    return v1

    .line 530
    :cond_10
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    aget-char v3, v3, v1

    .line 531
    .local v3, "unfoldRows":I
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    aget-char v4, v4, v2

    .line 532
    .local v4, "unfoldRowWidth":I
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    const/4 v6, 0x2

    aget-char v5, v5, v6

    .line 535
    .local v5, "unfoldStringWidth":I
    if-le v0, v5, :cond_20

    .line 537
    return v1

    .line 541
    :cond_20
    const/4 v7, 0x0

    .line 542
    .local v7, "start":I
    move v8, v3

    .line 543
    .local v8, "limit":I
    :goto_22
    if-ge v7, v8, :cond_58

    .line 544
    add-int v9, v7, v8

    div-int/2addr v9, v6

    .line 545
    .local v9, "i":I
    add-int/lit8 v10, v9, 0x1

    mul-int/2addr v10, v4

    .line 546
    .local v10, "unfoldOffset":I
    invoke-direct {p0, p1, v10, v5}, Landroid/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I

    move-result v11

    .line 548
    .local v11, "result":I
    if-nez v11, :cond_51

    .line 552
    move v1, v5

    .end local v9    # "i":I
    .local v1, "i":I
    :goto_31
    if-ge v1, v4, :cond_50

    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    add-int v9, v10, v1

    aget-char v6, v6, v9

    if-eqz v6, :cond_50

    .line 553
    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    iget-object v9, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    array-length v9, v9

    invoke-static {v6, v10, v9, v1}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v6

    .line 554
    .local v6, "c":I
    invoke-virtual {p2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 555
    invoke-virtual {p0, v6, p2}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    .line 552
    invoke-static {v6}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v9

    add-int/2addr v1, v9

    goto :goto_31

    .line 557
    .end local v6    # "c":I
    :cond_50
    return v2

    .line 558
    .end local v1    # "i":I
    .restart local v9    # "i":I
    :cond_51
    if-gez v11, :cond_55

    .line 559
    move v8, v9

    goto :goto_22

    .line 561
    :cond_55
    add-int/lit8 v7, v9, 0x1

    goto :goto_22

    .line 565
    .end local v9    # "i":I
    .end local v10    # "unfoldOffset":I
    .end local v11    # "result":I
    :cond_58
    return v1

    .line 516
    .end local v0    # "length":I
    .end local v3    # "unfoldRows":I
    .end local v4    # "unfoldRowWidth":I
    .end local v5    # "unfoldStringWidth":I
    .end local v7    # "start":I
    .end local v8    # "limit":I
    :cond_59
    :goto_59
    return v1
.end method

.method public final blacklist fold(II)I
    .registers 10
    .param p1, "c"    # I
    .param p2, "options"    # I

    .line 1431
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 1432
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1433
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1434
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_77

    .line 1437
    :cond_18
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 1438
    .local v1, "excOffset":I
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "excOffset":I
    .local v3, "excOffset":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1440
    .local v1, "excWord":I
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_42

    .line 1442
    and-int/lit8 v2, p2, 0x7

    const/16 v4, 0x69

    const/16 v5, 0x130

    const/16 v6, 0x49

    if-nez v2, :cond_3a

    .line 1444
    if-ne p1, v6, :cond_37

    .line 1446
    return v4

    .line 1447
    :cond_37
    if-ne p1, v5, :cond_42

    .line 1449
    return p1

    .line 1453
    :cond_3a
    if-ne p1, v6, :cond_3f

    .line 1455
    const/16 v2, 0x131

    return v2

    .line 1456
    :cond_3f
    if-ne p1, v5, :cond_42

    .line 1458
    return v4

    .line 1462
    :cond_42
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_47

    .line 1463
    return p1

    .line 1465
    :cond_47
    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1466
    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v2

    .line 1467
    .local v2, "delta":I
    and-int/lit16 v4, v1, 0x400

    if-nez v4, :cond_5f

    add-int v4, p1, v2

    goto :goto_61

    :cond_5f
    sub-int v4, p1, v2

    :goto_61
    return v4

    .line 1469
    .end local v2    # "delta":I
    :cond_62
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1470
    const/4 v2, 0x1

    .local v2, "index":I
    goto :goto_73

    .line 1471
    .end local v2    # "index":I
    :cond_6b
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1472
    const/4 v2, 0x0

    .line 1476
    .restart local v2    # "index":I
    :goto_73
    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    .line 1478
    .end local v1    # "excWord":I
    .end local v2    # "index":I
    .end local v3    # "excOffset":I
    :cond_77
    :goto_77
    return p1

    .line 1474
    .restart local v1    # "excWord":I
    .restart local v3    # "excOffset":I
    :cond_78
    return p1
.end method

.method public final blacklist getDotType(I)I
    .registers 5
    .param p1, "c"    # I

    .line 580
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 581
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 582
    and-int/lit8 v1, v0, 0x60

    return v1

    .line 584
    :cond_f
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shr-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, 0x60

    return v1
.end method

.method public final blacklist getType(I)I
    .registers 3
    .param p1, "c"    # I

    .line 570
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    return v0
.end method

.method public final blacklist getTypeOrIgnorable(I)I
    .registers 3
    .param p1, "c"    # I

    .line 575
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeAndIgnorableFromProps(I)I

    move-result v0

    return v0
.end method

.method public final blacklist hasBinaryProperty(II)Z
    .registers 7
    .param p1, "c"    # I
    .param p2, "which"    # I

    .line 1597
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_80

    .line 1639
    return v2

    .line 1633
    :sswitch_8
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1634
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1635
    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    if-gez v0, :cond_25

    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1636
    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    if-gez v0, :cond_25

    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    if-ltz v0, :cond_26

    :cond_25
    move v2, v3

    .line 1634
    :cond_26
    return v2

    .line 1629
    :sswitch_27
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1630
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    if-ltz v0, :cond_35

    move v2, v3

    :cond_35
    return v2

    .line 1626
    :sswitch_36
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1627
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    if-ltz v0, :cond_44

    move v2, v3

    :cond_44
    return v2

    .line 1623
    :sswitch_45
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1624
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    if-ltz v0, :cond_53

    move v2, v3

    :cond_53
    return v2

    .line 1609
    :sswitch_54
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v1

    shr-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_5d

    move v2, v3

    :cond_5d
    return v2

    .line 1607
    :sswitch_5e
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v0

    if-eqz v0, :cond_65

    move v2, v3

    :cond_65
    return v2

    .line 1605
    :sswitch_66
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isCaseSensitive(I)Z

    move-result v0

    return v0

    .line 1601
    :sswitch_6b
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v1

    if-ne v0, v1, :cond_72

    move v2, v3

    :cond_72
    return v2

    .line 1603
    :sswitch_73
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isSoftDotted(I)Z

    move-result v0

    return v0

    .line 1599
    :sswitch_78
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v0

    if-ne v3, v0, :cond_7f

    move v2, v3

    :cond_7f
    return v2

    :sswitch_data_80
    .sparse-switch
        0x16 -> :sswitch_78
        0x1b -> :sswitch_73
        0x1e -> :sswitch_6b
        0x22 -> :sswitch_66
        0x31 -> :sswitch_5e
        0x32 -> :sswitch_54
        0x33 -> :sswitch_45
        0x34 -> :sswitch_36
        0x35 -> :sswitch_27
        0x37 -> :sswitch_8
    .end sparse-switch
.end method

.method public final blacklist isCaseSensitive(I)Z
    .registers 7
    .param p1, "c"    # I

    .line 593
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 594
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_15

    .line 595
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    return v2

    .line 597
    :cond_15
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    return v2
.end method

.method public final blacklist isSoftDotted(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 589
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final blacklist toFullFolding(ILjava/lang/Appendable;I)I
    .registers 15
    .param p1, "c"    # I
    .param p2, "out"    # Ljava/lang/Appendable;
    .param p3, "options"    # I

    .line 1500
    move v0, p1

    .line 1501
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v1

    .line 1502
    .local v1, "props":I
    invoke-static {v1}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1503
    invoke-static {v1}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 1504
    invoke-static {v1}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v2

    add-int v0, p1, v2

    goto/16 :goto_b7

    .line 1507
    :cond_1b
    invoke-static {v1}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v2

    .line 1508
    .local v2, "excOffset":I
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "excOffset":I
    .local v4, "excOffset":I
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1511
    .local v2, "excWord":I
    move v3, v4

    .line 1513
    .local v3, "excOffset2":I
    const v5, 0x8000

    and-int/2addr v5, v2

    const/4 v6, 0x1

    if-eqz v5, :cond_54

    .line 1515
    and-int/lit8 v5, p3, 0x7

    const/16 v7, 0x69

    const/16 v8, 0x130

    const/16 v9, 0x49

    if-nez v5, :cond_4c

    .line 1517
    if-ne p1, v9, :cond_3c

    .line 1519
    return v7

    .line 1520
    :cond_3c
    if-ne p1, v8, :cond_82

    .line 1523
    :try_start_3e
    const-string v5, "i\u0307"

    invoke-interface {p2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_45

    .line 1524
    const/4 v5, 0x2

    return v5

    .line 1525
    :catch_45
    move-exception v5

    .line 1526
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v6, v5}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1531
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4c
    if-ne p1, v9, :cond_51

    .line 1533
    const/16 v5, 0x131

    return v5

    .line 1534
    :cond_51
    if-ne p1, v8, :cond_82

    .line 1536
    return v7

    .line 1539
    :cond_54
    const/4 v5, 0x7

    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 1540
    invoke-direct {p0, v2, v5, v4}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v7

    .line 1541
    .local v7, "value":J
    long-to-int v5, v7

    const v9, 0xffff

    and-int/2addr v5, v9

    .line 1544
    .local v5, "full":I
    const/16 v9, 0x20

    shr-long v9, v7, v9

    long-to-int v9, v9

    add-int/2addr v9, v6

    .line 1547
    .end local v4    # "excOffset":I
    .local v9, "excOffset":I
    and-int/lit8 v4, v5, 0xf

    add-int/2addr v4, v9

    .line 1548
    .end local v9    # "excOffset":I
    .restart local v4    # "excOffset":I
    shr-int/lit8 v9, v5, 0x4

    and-int/lit8 v5, v9, 0xf

    .line 1550
    if-eqz v5, :cond_82

    .line 1553
    :try_start_73
    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v9, v4, v5

    invoke-interface {p2, v6, v4, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7a} :catch_7b

    .line 1556
    return v5

    .line 1557
    :catch_7b
    move-exception v6

    .line 1558
    .local v6, "e":Ljava/io/IOException;
    new-instance v9, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v9, v6}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 1563
    .end local v5    # "full":I
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "value":J
    :cond_82
    and-int/lit16 v5, v2, 0x200

    if-eqz v5, :cond_88

    .line 1564
    not-int v5, p1

    return v5

    .line 1566
    :cond_88
    const/4 v5, 0x4

    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v7

    if-eqz v7, :cond_a3

    invoke-static {v1}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 1567
    invoke-direct {p0, v2, v5, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v5

    .line 1568
    .local v5, "delta":I
    and-int/lit16 v6, v2, 0x400

    if-nez v6, :cond_a0

    add-int v6, p1, v5

    goto :goto_a2

    :cond_a0
    sub-int v6, p1, v5

    :goto_a2
    return v6

    .line 1570
    .end local v5    # "delta":I
    :cond_a3
    invoke-static {v2, v6}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 1571
    const/4 v5, 0x1

    .local v5, "index":I
    goto :goto_b3

    .line 1572
    .end local v5    # "index":I
    :cond_ab
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 1573
    const/4 v5, 0x0

    .line 1577
    .restart local v5    # "index":I
    :goto_b3
    invoke-direct {p0, v2, v5, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    .line 1580
    .end local v2    # "excWord":I
    .end local v3    # "excOffset2":I
    .end local v4    # "excOffset":I
    .end local v5    # "index":I
    :cond_b7
    :goto_b7
    if-ne v0, p1, :cond_bb

    not-int v2, v0

    goto :goto_bc

    :cond_bb
    move v2, v0

    :goto_bc
    return v2

    .line 1575
    .restart local v2    # "excWord":I
    .restart local v3    # "excOffset2":I
    .restart local v4    # "excOffset":I
    :cond_bd
    not-int v5, p1

    return v5
.end method

.method public final blacklist toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .registers 24
    .param p1, "c"    # I
    .param p2, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p3, "out"    # Ljava/lang/Appendable;
    .param p4, "caseLocale"    # I

    .line 1092
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p1

    .line 1093
    .local v6, "result":I
    iget-object v0, v1, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, v2}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v7

    .line 1094
    .local v7, "props":I
    invoke-static {v7}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1095
    invoke-static {v7}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 1096
    invoke-static {v7}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int v6, v2, v0

    goto/16 :goto_12c

    .line 1099
    :cond_26
    invoke-static {v7}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 1100
    .local v0, "excOffset":I
    iget-object v8, v1, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "excOffset":I
    .local v9, "excOffset":I
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1103
    .local v8, "excWord":I
    move v10, v9

    .line 1105
    .local v10, "excOffset2":I
    and-int/lit16 v0, v8, 0x4000

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_d8

    .line 1113
    const-string v0, "i\u0307"

    const/16 v13, 0x49

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-ne v5, v14, :cond_90

    if-eq v2, v13, :cond_4e

    move/from16 v16, v14

    const/16 v14, 0x4a

    if-eq v2, v14, :cond_50

    const/16 v14, 0x12e

    if-ne v2, v14, :cond_56

    goto :goto_50

    :cond_4e
    move/from16 v16, v14

    .line 1116
    :cond_50
    :goto_50
    invoke-direct {v1, v3}, Landroid/icu/impl/UCaseProps;->isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v14

    if-nez v14, :cond_62

    :cond_56
    const/16 v14, 0xcc

    if-eq v2, v14, :cond_62

    const/16 v14, 0xcd

    if-eq v2, v14, :cond_62

    const/16 v14, 0x128

    if-ne v2, v14, :cond_90

    .line 1137
    :cond_62
    sparse-switch v2, :sswitch_data_132

    .line 1157
    return v12

    .line 1145
    :sswitch_66
    :try_start_66
    const-string v0, "\u012f\u0307"

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1146
    return v15

    .line 1154
    :sswitch_6c
    const-string v0, "i\u0307\u0303"

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1155
    return v16

    .line 1151
    :sswitch_72
    const-string v0, "i\u0307\u0301"

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1152
    return v16

    .line 1148
    :sswitch_78
    const-string v0, "i\u0307\u0300"

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1149
    return v16

    .line 1142
    :sswitch_7e
    const-string v0, "j\u0307"

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1143
    return v15

    .line 1159
    :catch_84
    move-exception v0

    goto :goto_8a

    .line 1139
    :sswitch_86
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_89} :catch_84

    .line 1140
    return v15

    .line 1160
    .local v0, "e":Ljava/io/IOException;
    :goto_8a
    new-instance v11, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v11, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 1163
    .end local v0    # "e":Ljava/io/IOException;
    :cond_90
    const/16 v14, 0x130

    if-ne v5, v15, :cond_99

    if-ne v2, v14, :cond_99

    .line 1171
    const/16 v0, 0x69

    return v0

    .line 1172
    :cond_99
    if-ne v5, v15, :cond_a8

    move/from16 v16, v12

    const/16 v12, 0x307

    if-ne v2, v12, :cond_aa

    invoke-direct {v1, v3}, Landroid/icu/impl/UCaseProps;->isPrecededBy_I(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v12

    if-eqz v12, :cond_aa

    .line 1180
    return v16

    .line 1172
    :cond_a8
    move/from16 v16, v12

    .line 1181
    :cond_aa
    if-ne v5, v15, :cond_b7

    if-ne v2, v13, :cond_b7

    invoke-direct {v1, v3}, Landroid/icu/impl/UCaseProps;->isFollowedByDotAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v12

    if-nez v12, :cond_b7

    .line 1188
    const/16 v0, 0x131

    return v0

    .line 1189
    :cond_b7
    if-ne v2, v14, :cond_c4

    .line 1196
    :try_start_b9
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    .line 1197
    return v15

    .line 1198
    :catch_bd
    move-exception v0

    .line 1199
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v11, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v11, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 1201
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c4
    const/16 v0, 0x3a3

    if-ne v2, v0, :cond_105

    .line 1202
    invoke-direct {v1, v3, v11}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v0

    if-nez v0, :cond_105

    .line 1203
    const/4 v0, -0x1

    invoke-direct {v1, v3, v0}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1211
    const/16 v0, 0x3c2

    return v0

    .line 1215
    :cond_d8
    move/from16 v16, v12

    const/4 v0, 0x7

    invoke-static {v8, v0}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v12

    if-eqz v12, :cond_105

    .line 1216
    invoke-direct {v1, v8, v0, v9}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v12

    .line 1217
    .local v12, "value":J
    long-to-int v0, v12

    and-int/lit8 v14, v0, 0xf

    .line 1218
    .local v14, "full":I
    if-eqz v14, :cond_103

    .line 1220
    const/16 v0, 0x20

    move v15, v11

    move-wide/from16 v17, v12

    .end local v12    # "value":J
    .local v17, "value":J
    shr-long v11, v17, v0

    long-to-int v0, v11

    add-int/lit8 v9, v0, 0x1

    .line 1224
    :try_start_f4
    iget-object v0, v1, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v11, v9, v14

    invoke-interface {v4, v0, v9, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fb} :catch_fc

    .line 1227
    return v14

    .line 1228
    :catch_fc
    move-exception v0

    .line 1229
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v11, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v11, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 1218
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "value":J
    .restart local v12    # "value":J
    :cond_103
    move-wide/from16 v17, v12

    .line 1234
    .end local v12    # "value":J
    .end local v14    # "full":I
    :cond_105
    const/4 v0, 0x4

    invoke-static {v8, v0}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v11

    if-eqz v11, :cond_120

    invoke-static {v7}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v11

    if-eqz v11, :cond_120

    .line 1235
    invoke-direct {v1, v8, v0, v10}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    .line 1236
    .local v0, "delta":I
    and-int/lit16 v11, v8, 0x400

    if-nez v11, :cond_11d

    add-int v11, v2, v0

    goto :goto_11f

    :cond_11d
    sub-int v11, v2, v0

    :goto_11f
    return v11

    .line 1238
    .end local v0    # "delta":I
    :cond_120
    move/from16 v0, v16

    invoke-static {v8, v0}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v11

    if-eqz v11, :cond_12c

    .line 1239
    invoke-direct {v1, v8, v0, v10}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v6

    .line 1243
    .end local v8    # "excWord":I
    .end local v9    # "excOffset":I
    .end local v10    # "excOffset2":I
    :cond_12c
    :goto_12c
    if-ne v6, v2, :cond_130

    not-int v0, v6

    goto :goto_131

    :cond_130
    move v0, v6

    :goto_131
    return v0

    :sswitch_data_132
    .sparse-switch
        0x49 -> :sswitch_86
        0x4a -> :sswitch_7e
        0xcc -> :sswitch_78
        0xcd -> :sswitch_72
        0x128 -> :sswitch_6c
        0x12e -> :sswitch_66
    .end sparse-switch
.end method

.method public final blacklist toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .registers 11
    .param p1, "c"    # I
    .param p2, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p3, "out"    # Ljava/lang/Appendable;
    .param p4, "caseLocale"    # I

    .line 1372
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "c":I
    .end local p2    # "iter":Landroid/icu/impl/UCaseProps$ContextIterator;
    .end local p3    # "out":Ljava/lang/Appendable;
    .end local p4    # "caseLocale":I
    .local v1, "c":I
    .local v2, "iter":Landroid/icu/impl/UCaseProps$ContextIterator;
    .local v3, "out":Ljava/lang/Appendable;
    .local v4, "caseLocale":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result p1

    return p1
.end method

.method public final blacklist toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .registers 11
    .param p1, "c"    # I
    .param p2, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p3, "out"    # Ljava/lang/Appendable;
    .param p4, "caseLocale"    # I

    .line 1366
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "c":I
    .end local p2    # "iter":Landroid/icu/impl/UCaseProps$ContextIterator;
    .end local p3    # "out":Ljava/lang/Appendable;
    .end local p4    # "caseLocale":I
    .local v1, "c":I
    .local v2, "iter":Landroid/icu/impl/UCaseProps$ContextIterator;
    .local v3, "out":Ljava/lang/Appendable;
    .local v4, "caseLocale":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result p1

    return p1
.end method

.method public final blacklist tolower(I)I
    .registers 7
    .param p1, "c"    # I

    .line 192
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 193
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 194
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 195
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_4a

    .line 198
    :cond_18
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 199
    .local v1, "excOffset":I
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "excOffset":I
    .local v3, "excOffset":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 200
    .local v1, "excWord":I
    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 201
    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v2

    .line 202
    .local v2, "delta":I
    and-int/lit16 v4, v1, 0x400

    if-nez v4, :cond_3c

    add-int v4, p1, v2

    goto :goto_3e

    :cond_3c
    sub-int v4, p1, v2

    :goto_3e
    return v4

    .line 204
    .end local v2    # "delta":I
    :cond_3f
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 205
    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    .line 208
    .end local v1    # "excWord":I
    .end local v3    # "excOffset":I
    :cond_4a
    :goto_4a
    return p1
.end method

.method public final blacklist totitle(I)I
    .registers 8
    .param p1, "c"    # I

    .line 232
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 233
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 234
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-ne v1, v2, :cond_55

    .line 235
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_55

    .line 238
    :cond_19
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 239
    .local v1, "excOffset":I
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "excOffset":I
    .local v4, "excOffset":I
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 240
    .local v1, "excWord":I
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v5

    if-ne v5, v2, :cond_40

    .line 241
    invoke-direct {p0, v1, v3, v4}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v2

    .line 242
    .local v2, "delta":I
    and-int/lit16 v3, v1, 0x400

    if-nez v3, :cond_3d

    add-int v3, p1, v2

    goto :goto_3f

    :cond_3d
    sub-int v3, p1, v2

    :goto_3f
    return v3

    .line 245
    .end local v2    # "delta":I
    :cond_40
    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 246
    const/4 v2, 0x3

    .local v2, "index":I
    goto :goto_51

    .line 247
    .end local v2    # "index":I
    :cond_49
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 248
    const/4 v2, 0x2

    .line 252
    .restart local v2    # "index":I
    :goto_51
    invoke-direct {p0, v1, v2, v4}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    .line 254
    .end local v1    # "excWord":I
    .end local v2    # "index":I
    .end local v4    # "excOffset":I
    :cond_55
    :goto_55
    return p1

    .line 250
    .restart local v1    # "excWord":I
    .restart local v4    # "excOffset":I
    :cond_56
    return p1
.end method

.method public final blacklist toupper(I)I
    .registers 8
    .param p1, "c"    # I

    .line 212
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 213
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 214
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-ne v1, v2, :cond_4b

    .line 215
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_4b

    .line 218
    :cond_19
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v1

    .line 219
    .local v1, "excOffset":I
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "excOffset":I
    .local v4, "excOffset":I
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 220
    .local v1, "excWord":I
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v5

    if-ne v5, v2, :cond_40

    .line 221
    invoke-direct {p0, v1, v3, v4}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v2

    .line 222
    .local v2, "delta":I
    and-int/lit16 v3, v1, 0x400

    if-nez v3, :cond_3d

    add-int v3, p1, v2

    goto :goto_3f

    :cond_3d
    sub-int v3, p1, v2

    :goto_3f
    return v3

    .line 224
    .end local v2    # "delta":I
    :cond_40
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 225
    invoke-direct {p0, v1, v2, v4}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    .line 228
    .end local v1    # "excWord":I
    .end local v4    # "excOffset":I
    :cond_4b
    :goto_4b
    return p1
.end method
