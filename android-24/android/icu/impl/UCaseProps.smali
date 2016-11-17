.class public final Landroid/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source "UCaseProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCaseProps$ContextIterator;,
        Landroid/icu/impl/UCaseProps$IsAcceptable;
    }
.end annotation


# static fields
.field private static final ABOVE:I = 0x40

.field private static final CLOSURE_MAX_LENGTH:I = 0xf

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ucase.icu"

.field private static final DATA_NAME:Ljava/lang/String; = "ucase"

.field private static final DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final DELTA_SHIFT:I = 0x7

.field private static final DOT_MASK:I = 0x60

.field private static final EXCEPTION:I = 0x10

.field private static final EXC_CLOSURE:I = 0x6

.field private static final EXC_CONDITIONAL_FOLD:I = 0x8000

.field private static final EXC_CONDITIONAL_SPECIAL:I = 0x4000

.field private static final EXC_DOT_SHIFT:I = 0x7

.field private static final EXC_DOUBLE_SLOTS:I = 0x100

.field private static final EXC_FOLD:I = 0x1

.field private static final EXC_FULL_MAPPINGS:I = 0x7

.field private static final EXC_LOWER:I = 0x0

.field private static final EXC_SHIFT:I = 0x5

.field private static final EXC_TITLE:I = 0x3

.field private static final EXC_UPPER:I = 0x2

.field private static final FMT:I = 0x63415345

.field private static final FOLD_CASE_OPTIONS_MASK:I = 0xff

.field private static final FULL_LOWER:I = 0xf

.field public static final INSTANCE:Landroid/icu/impl/UCaseProps;

.field private static final IX_EXC_LENGTH:I = 0x3

.field private static final IX_TOP:I = 0x10

.field private static final IX_TRIE_SIZE:I = 0x2

.field private static final IX_UNFOLD_LENGTH:I = 0x4

.field private static final LOC_LITHUANIAN:I = 0x3

.field private static final LOC_ROOT:I = 0x1

.field private static final LOC_TURKISH:I = 0x2

.field private static final LOC_UNKNOWN:I = 0x0

.field public static final LOWER:I = 0x1

.field public static final MAX_STRING_LENGTH:I = 0x1f

.field public static final NONE:I = 0x0

.field private static final OTHER_ACCENT:I = 0x60

.field private static final SENSITIVE:I = 0x8

.field private static final SOFT_DOTTED:I = 0x20

.field public static final TITLE:I = 0x3

.field public static final TYPE_MASK:I = 0x3

.field private static final UNFOLD_ROWS:I = 0x0

.field private static final UNFOLD_ROW_WIDTH:I = 0x1

.field private static final UNFOLD_STRING_WIDTH:I = 0x2

.field public static final UPPER:I = 0x2

.field public static final dummyStringBuilder:Ljava/lang/StringBuilder;

.field private static final flagsOffset:[B

.field private static final iDot:Ljava/lang/String; = "i\u0307"

.field private static final iDotAcute:Ljava/lang/String; = "i\u0307\u0301"

.field private static final iDotGrave:Ljava/lang/String; = "i\u0307\u0300"

.field private static final iDotTilde:Ljava/lang/String; = "i\u0307\u0303"

.field private static final iOgonekDot:Ljava/lang/String; = "\u012f\u0307"

.field private static final jDot:Ljava/lang/String; = "j\u0307"

.field private static final rootLocCache:[I


# instance fields
.field private exceptions:[C

.field private indexes:[I

.field private trie:Landroid/icu/impl/Trie2_16;

.field private unfold:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 124
    const/16 v1, 0x100

    #@3
    new-array v1, v1, [B

    #@5
    fill-array-data v1, :array_0

    #@8
    sput-object v1, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    #@a
    .line 1244
    new-array v1, v3, [I

    #@c
    const/4 v2, 0x0

    #@d
    aput v3, v1, v2

    #@f
    sput-object v1, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    #@11
    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    sput-object v1, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@18
    .line 1426
    :try_start_0
    new-instance v1, Landroid/icu/impl/UCaseProps;

    #@1a
    invoke-direct {v1}, Landroid/icu/impl/UCaseProps;-><init>()V

    #@1d
    sput-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 37
    return-void

    #@20
    .line 1427
    :catch_0
    move-exception v0

    #@21
    .line 1428
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@23
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v1

    #@27
    .line 124
    nop

    #@28
    :array_0
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

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const-string/jumbo v1, "ucase.icu"

    #@6
    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v0

    #@a
    .line 44
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/icu/impl/UCaseProps;->readData(Ljava/nio/ByteBuffer;)V

    #@d
    .line 42
    return-void
.end method

.method private static final getCaseLocale(Landroid/icu/util/ULocale;[I)I
    .locals 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "locCache"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 622
    if-eqz p1, :cond_0

    #@3
    aget v1, p1, v3

    #@5
    .local v1, "result":I
    if-eqz v1, :cond_0

    #@7
    .line 623
    return v1

    #@8
    .line 626
    .end local v1    # "result":I
    :cond_0
    const/4 v1, 0x1

    #@9
    .line 628
    .restart local v1    # "result":I
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 629
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "tr"

    #@10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    const-string/jumbo v2, "tur"

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_1

    #@1f
    const-string/jumbo v2, "az"

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_1

    #@28
    const-string/jumbo v2, "aze"

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_4

    #@31
    .line 630
    :cond_1
    const/4 v1, 0x2

    #@32
    .line 635
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    #@34
    .line 636
    aput v1, p1, v3

    #@36
    .line 638
    :cond_3
    return v1

    #@37
    .line 631
    :cond_4
    const-string/jumbo v2, "lt"

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_5

    #@40
    const-string/jumbo v2, "lit"

    #@43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 632
    :cond_5
    const/4 v1, 0x3

    #@4a
    goto :goto_0
.end method

.method private static final getDelta(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    .line 1362
    int-to-short v0, p0

    #@1
    shr-int/lit8 v0, v0, 0x7

    #@3
    return v0
.end method

.method private static final getExceptionsOffset(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    .line 116
    shr-int/lit8 v0, p0, 0x5

    #@2
    return v0
.end method

.method private final getSlotValue(III)I
    .locals 4
    .param p1, "excWord"    # I
    .param p2, "index"    # I
    .param p3, "excOffset"    # I

    #@0
    .prologue
    .line 175
    and-int/lit16 v2, p1, 0x100

    #@2
    if-nez v2, :cond_0

    #@4
    .line 176
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    #@7
    move-result v2

    #@8
    add-int/2addr p3, v2

    #@9
    .line 177
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@b
    aget-char v1, v2, p3

    #@d
    .line 183
    .local v1, "value":I
    :goto_0
    return v1

    #@e
    .line 179
    .end local v1    # "value":I
    :cond_0
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    #@11
    move-result v2

    #@12
    mul-int/lit8 v2, v2, 0x2

    #@14
    add-int/2addr p3, v2

    #@15
    .line 180
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@17
    add-int/lit8 v0, p3, 0x1

    #@19
    .end local p3    # "excOffset":I
    .local v0, "excOffset":I
    aget-char v1, v2, p3

    #@1b
    .line 181
    .restart local v1    # "value":I
    shl-int/lit8 v2, v1, 0x10

    #@1d
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@1f
    aget-char v3, v3, v0

    #@21
    or-int v1, v2, v3

    #@23
    move p3, v0

    #@24
    .end local v0    # "excOffset":I
    .restart local p3    # "excOffset":I
    goto :goto_0
.end method

.method private final getSlotValueAndOffset(III)J
    .locals 8
    .param p1, "excWord"    # I
    .param p2, "index"    # I
    .param p3, "excOffset"    # I

    #@0
    .prologue
    .line 161
    and-int/lit16 v1, p1, 0x100

    #@2
    if-nez v1, :cond_0

    #@4
    .line 162
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    #@7
    move-result v1

    #@8
    add-int/2addr p3, v1

    #@9
    .line 163
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@b
    aget-char v1, v1, p3

    #@d
    int-to-long v2, v1

    #@e
    .line 169
    .local v2, "value":J
    :goto_0
    int-to-long v4, p3

    #@f
    const/16 v1, 0x20

    #@11
    shl-long/2addr v4, v1

    #@12
    or-long/2addr v4, v2

    #@13
    return-wide v4

    #@14
    .line 165
    .end local v2    # "value":J
    :cond_0
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    #@17
    move-result v1

    #@18
    mul-int/lit8 v1, v1, 0x2

    #@1a
    add-int/2addr p3, v1

    #@1b
    .line 166
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@1d
    add-int/lit8 v0, p3, 0x1

    #@1f
    .end local p3    # "excOffset":I
    .local v0, "excOffset":I
    aget-char v1, v1, p3

    #@21
    int-to-long v2, v1

    #@22
    .line 167
    .restart local v2    # "value":J
    const/16 v1, 0x10

    #@24
    shl-long v4, v2, v1

    #@26
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@28
    aget-char v1, v1, v0

    #@2a
    int-to-long v6, v1

    #@2b
    or-long v2, v4, v6

    #@2d
    move p3, v0

    #@2e
    .end local v0    # "excOffset":I
    .restart local p3    # "excOffset":I
    goto :goto_0
.end method

.method private static final getTypeAndIgnorableFromProps(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    .line 1342
    and-int/lit8 v0, p0, 0x7

    #@2
    return v0
.end method

.method private static final getTypeFromProps(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    .line 1338
    and-int/lit8 v0, p0, 0x3

    #@2
    return v0
.end method

.method private static final hasSlot(II)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 144
    shl-int v2, v0, p1

    #@4
    and-int/2addr v2, p0

    #@5
    if-eqz v2, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    move v0, v1

    #@9
    goto :goto_0
.end method

.method private final isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z
    .locals 4
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p2, "dir"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 645
    if-nez p1, :cond_0

    #@3
    .line 646
    return v3

    #@4
    .line 649
    :cond_0
    invoke-interface {p1, p2}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    #@7
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    #@a
    move-result v0

    #@b
    .local v0, "c":I
    if-ltz v0, :cond_3

    #@d
    .line 650
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    #@10
    move-result v1

    #@11
    .line 651
    .local v1, "type":I
    and-int/lit8 v2, v1, 0x4

    #@13
    if-nez v2, :cond_1

    #@15
    .line 653
    if-eqz v1, :cond_2

    #@17
    .line 654
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 656
    :cond_2
    return v3

    #@1a
    .line 660
    .end local v1    # "type":I
    :cond_3
    return v3
.end method

.method private final isFollowedByDotAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 5
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 766
    if-nez p1, :cond_0

    #@4
    .line 767
    return v3

    #@5
    .line 770
    :cond_0
    invoke-interface {p1, v4}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    #@8
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    #@b
    move-result v0

    #@c
    .local v0, "c":I
    if-ltz v0, :cond_3

    #@e
    .line 771
    const/16 v2, 0x307

    #@10
    if-ne v0, v2, :cond_2

    #@12
    .line 772
    return v4

    #@13
    .line 774
    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@16
    move-result v1

    #@17
    .line 775
    .local v1, "dotType":I
    const/16 v2, 0x60

    #@19
    if-eq v1, v2, :cond_1

    #@1b
    .line 776
    return v3

    #@1c
    .line 780
    .end local v1    # "dotType":I
    :cond_3
    return v3
.end method

.method private final isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 5
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 745
    if-nez p1, :cond_0

    #@4
    .line 746
    return v3

    #@5
    .line 749
    :cond_0
    invoke-interface {p1, v4}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    #@8
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    #@b
    move-result v0

    #@c
    .local v0, "c":I
    if-ltz v0, :cond_3

    #@e
    .line 750
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@11
    move-result v1

    #@12
    .line 751
    .local v1, "dotType":I
    const/16 v2, 0x40

    #@14
    if-ne v1, v2, :cond_2

    #@16
    .line 752
    return v4

    #@17
    .line 753
    :cond_2
    const/16 v2, 0x60

    #@19
    if-eq v1, v2, :cond_1

    #@1b
    .line 754
    return v3

    #@1c
    .line 758
    .end local v1    # "dotType":I
    :cond_3
    return v3
.end method

.method private final isPrecededBySoftDotted(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 668
    if-nez p1, :cond_0

    #@3
    .line 669
    return v3

    #@4
    .line 672
    :cond_0
    const/4 v2, -0x1

    #@5
    invoke-interface {p1, v2}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    #@8
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    #@b
    move-result v0

    #@c
    .local v0, "c":I
    if-ltz v0, :cond_3

    #@e
    .line 673
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@11
    move-result v1

    #@12
    .line 674
    .local v1, "dotType":I
    const/16 v2, 0x20

    #@14
    if-ne v1, v2, :cond_2

    #@16
    .line 675
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 676
    :cond_2
    const/16 v2, 0x60

    #@1a
    if-eq v1, v2, :cond_1

    #@1c
    .line 677
    return v3

    #@1d
    .line 681
    .end local v1    # "dotType":I
    :cond_3
    return v3
.end method

.method private final isPrecededBy_I(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4
    .param p1, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 723
    if-nez p1, :cond_0

    #@3
    .line 724
    return v3

    #@4
    .line 727
    :cond_0
    const/4 v2, -0x1

    #@5
    invoke-interface {p1, v2}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    #@8
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    #@b
    move-result v0

    #@c
    .local v0, "c":I
    if-ltz v0, :cond_3

    #@e
    .line 728
    const/16 v2, 0x49

    #@10
    if-ne v0, v2, :cond_2

    #@12
    .line 729
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 731
    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@17
    move-result v1

    #@18
    .line 732
    .local v1, "dotType":I
    const/16 v2, 0x60

    #@1a
    if-eq v1, v2, :cond_1

    #@1c
    .line 733
    return v3

    #@1d
    .line 737
    .end local v1    # "dotType":I
    :cond_3
    return v3
.end method

.method private static final propsHasException(I)Z
    .locals 2
    .param p0, "props"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 120
    and-int/lit8 v1, p0, 0x10

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private final readData(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 49
    new-instance v4, Landroid/icu/impl/UCaseProps$IsAcceptable;

    #@3
    const/4 v5, 0x0

    #@4
    invoke-direct {v4, v5}, Landroid/icu/impl/UCaseProps$IsAcceptable;-><init>(Landroid/icu/impl/UCaseProps$IsAcceptable;)V

    #@7
    const v5, 0x63415345

    #@a
    invoke-static {p1, v5, v4}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@d
    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    move-result v0

    #@11
    .line 53
    .local v0, "count":I
    const/16 v4, 0x10

    #@13
    if-ge v0, v4, :cond_0

    #@15
    .line 54
    new-instance v4, Ljava/io/IOException;

    #@17
    const-string/jumbo v5, "indexes[0] too small in ucase.icu"

    #@1a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v4

    #@1e
    .line 56
    :cond_0
    new-array v4, v0, [I

    #@20
    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@22
    .line 58
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@24
    aput v0, v4, v6

    #@26
    .line 59
    const/4 v2, 0x1

    #@27
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@29
    .line 60
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@2b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@2e
    move-result v5

    #@2f
    aput v5, v4, v2

    #@31
    .line 59
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 64
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    #@37
    move-result-object v4

    #@38
    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3a
    .line 65
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@3c
    const/4 v5, 0x2

    #@3d
    aget v1, v4, v5

    #@3f
    .line 66
    .local v1, "expectedTrieLength":I
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@41
    invoke-virtual {v4}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    #@44
    move-result v3

    #@45
    .line 67
    .local v3, "trieLength":I
    if-le v3, v1, :cond_2

    #@47
    .line 68
    new-instance v4, Ljava/io/IOException;

    #@49
    const-string/jumbo v5, "ucase.icu: not enough bytes for the trie"

    #@4c
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4

    #@50
    .line 71
    :cond_2
    sub-int v4, v1, v3

    #@52
    invoke-static {p1, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@55
    .line 74
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@57
    const/4 v5, 0x3

    #@58
    aget v0, v4, v5

    #@5a
    .line 75
    if-lez v0, :cond_3

    #@5c
    .line 76
    invoke-static {p1, v0, v6}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@5f
    move-result-object v4

    #@60
    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@62
    .line 80
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@64
    const/4 v5, 0x4

    #@65
    aget v0, v4, v5

    #@67
    .line 81
    if-lez v0, :cond_4

    #@69
    .line 82
    invoke-static {p1, v0, v6}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@6c
    move-result-object v4

    #@6d
    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@6f
    .line 47
    :cond_4
    return-void
.end method

.method private static final slotOffset(II)B
    .locals 2
    .param p0, "flags"    # I
    .param p1, "index"    # I

    #@0
    .prologue
    .line 147
    sget-object v0, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    #@2
    const/4 v1, 0x1

    #@3
    shl-int/2addr v1, p1

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    and-int/2addr v1, p0

    #@7
    aget-byte v0, v0, v1

    #@9
    return v0
.end method

.method private final strcmpMax(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "unfoldOffset"    # I
    .param p3, "max"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v4

    #@5
    .line 368
    .local v4, "length":I
    sub-int/2addr p3, v4

    #@6
    .line 369
    const/4 v2, 0x0

    #@7
    .line 371
    .local v2, "i1":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    #@9
    .end local v2    # "i1":I
    .local v3, "i1":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 372
    .local v0, "c1":I
    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@f
    add-int/lit8 v5, p2, 0x1

    #@11
    .end local p2    # "unfoldOffset":I
    .local v5, "unfoldOffset":I
    aget-char v1, v6, p2

    #@13
    .line 373
    .local v1, "c2":I
    if-nez v1, :cond_0

    #@15
    .line 374
    const/4 v6, 0x1

    #@16
    return v6

    #@17
    .line 376
    :cond_0
    sub-int/2addr v0, v1

    #@18
    .line 377
    if-eqz v0, :cond_1

    #@1a
    .line 378
    return v0

    #@1b
    .line 380
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@1d
    if-lez v4, :cond_2

    #@1f
    move v2, v3

    #@20
    .end local v3    # "i1":I
    .restart local v2    # "i1":I
    move p2, v5

    #@21
    .end local v5    # "unfoldOffset":I
    .restart local p2    # "unfoldOffset":I
    goto :goto_0

    #@22
    .line 383
    .end local v2    # "i1":I
    .end local p2    # "unfoldOffset":I
    .restart local v3    # "i1":I
    .restart local v5    # "unfoldOffset":I
    :cond_2
    if-eqz p3, :cond_3

    #@24
    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@26
    aget-char v6, v6, v5

    #@28
    if-nez v6, :cond_4

    #@2a
    .line 384
    :cond_3
    return v7

    #@2b
    .line 386
    :cond_4
    neg-int v6, p3

    #@2c
    return v6
.end method

.method private final toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[IZ)I
    .locals 16
    .param p1, "c"    # I
    .param p2, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p3, "out"    # Ljava/lang/StringBuilder;
    .param p4, "locale"    # Landroid/icu/util/ULocale;
    .param p5, "locCache"    # [I
    .param p6, "upperNotTitle"    # Z

    #@0
    .prologue
    .line 962
    move/from16 v10, p1

    #@2
    .line 963
    .local v10, "result":I
    move-object/from16 v0, p0

    #@4
    iget-object v11, v0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@6
    move/from16 v0, p1

    #@8
    invoke-virtual {v11, v0}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@b
    move-result v9

    #@c
    .line 964
    .local v9, "props":I
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@f
    move-result v11

    #@10
    if-nez v11, :cond_2

    #@12
    .line 965
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@15
    move-result v11

    #@16
    const/4 v14, 0x1

    #@17
    if-ne v11, v14, :cond_0

    #@19
    .line 966
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@1c
    move-result v11

    #@1d
    add-int v10, p1, v11

    #@1f
    .line 1047
    :cond_0
    :goto_0
    move/from16 v0, p1

    #@21
    if-ne v10, v0, :cond_1

    #@23
    not-int v10, v10

    #@24
    .end local v10    # "result":I
    :cond_1
    return v10

    #@25
    .line 969
    .restart local v10    # "result":I
    :cond_2
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@28
    move-result v2

    #@29
    .line 970
    .local v2, "excOffset":I
    move-object/from16 v0, p0

    #@2b
    iget-object v11, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@2d
    add-int/lit8 v3, v2, 0x1

    #@2f
    .end local v2    # "excOffset":I
    .local v3, "excOffset":I
    aget-char v5, v11, v2

    #@31
    .line 973
    .local v5, "excWord":I
    move v4, v3

    #@32
    .line 975
    .local v4, "excOffset2":I
    and-int/lit16 v11, v5, 0x4000

    #@34
    if-eqz v11, :cond_6

    #@36
    .line 977
    invoke-static/range {p4 .. p5}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;[I)I

    #@39
    move-result v8

    #@3a
    .line 979
    .local v8, "loc":I
    const/4 v11, 0x2

    #@3b
    if-ne v8, v11, :cond_3

    #@3d
    const/16 v11, 0x69

    #@3f
    move/from16 v0, p1

    #@41
    if-ne v0, v11, :cond_3

    #@43
    .line 991
    const/16 v11, 0x130

    #@45
    return v11

    #@46
    .line 992
    :cond_3
    const/4 v11, 0x3

    #@47
    if-ne v8, v11, :cond_4

    #@49
    const/16 v11, 0x307

    #@4b
    move/from16 v0, p1

    #@4d
    if-ne v0, v11, :cond_4

    #@4f
    move-object/from16 v0, p0

    #@51
    move-object/from16 v1, p2

    #@53
    invoke-direct {v0, v1}, Landroid/icu/impl/UCaseProps;->isPrecededBySoftDotted(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    #@56
    move-result v11

    #@57
    if-eqz v11, :cond_a

    #@59
    .line 1002
    const/4 v11, 0x0

    #@5a
    return v11

    #@5b
    :cond_4
    move v2, v3

    #@5c
    .line 1036
    .end local v3    # "excOffset":I
    .end local v8    # "loc":I
    .restart local v2    # "excOffset":I
    :cond_5
    :goto_1
    if-nez p6, :cond_8

    #@5e
    const/4 v11, 0x3

    #@5f
    invoke-static {v5, v11}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@62
    move-result v11

    #@63
    if-eqz v11, :cond_8

    #@65
    .line 1037
    const/4 v7, 0x3

    #@66
    .line 1044
    .local v7, "index":I
    :goto_2
    move-object/from16 v0, p0

    #@68
    invoke-direct {v0, v5, v7, v4}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@6b
    move-result v10

    #@6c
    goto :goto_0

    #@6d
    .line 1006
    .end local v2    # "excOffset":I
    .end local v7    # "index":I
    .restart local v3    # "excOffset":I
    :cond_6
    const/4 v11, 0x7

    #@6e
    invoke-static {v5, v11}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@71
    move-result v11

    #@72
    if-eqz v11, :cond_a

    #@74
    .line 1007
    const/4 v11, 0x7

    #@75
    move-object/from16 v0, p0

    #@77
    invoke-direct {v0, v5, v11, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@7a
    move-result-wide v12

    #@7b
    .line 1008
    .local v12, "value":J
    long-to-int v11, v12

    #@7c
    const v14, 0xffff

    #@7f
    and-int v6, v11, v14

    #@81
    .line 1011
    .local v6, "full":I
    const/16 v11, 0x20

    #@83
    shr-long v14, v12, v11

    #@85
    long-to-int v11, v14

    #@86
    add-int/lit8 v2, v11, 0x1

    #@88
    .line 1014
    .end local v3    # "excOffset":I
    .restart local v2    # "excOffset":I
    and-int/lit8 v11, v6, 0xf

    #@8a
    add-int/2addr v2, v11

    #@8b
    .line 1015
    shr-int/lit8 v6, v6, 0x4

    #@8d
    .line 1016
    and-int/lit8 v11, v6, 0xf

    #@8f
    add-int/2addr v2, v11

    #@90
    .line 1017
    shr-int/lit8 v6, v6, 0x4

    #@92
    .line 1019
    if-eqz p6, :cond_7

    #@94
    .line 1020
    and-int/lit8 v6, v6, 0xf

    #@96
    .line 1027
    :goto_3
    if-eqz v6, :cond_5

    #@98
    .line 1029
    move-object/from16 v0, p0

    #@9a
    iget-object v11, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@9c
    move-object/from16 v0, p3

    #@9e
    invoke-virtual {v0, v11, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@a1
    .line 1032
    return v6

    #@a2
    .line 1023
    :cond_7
    and-int/lit8 v11, v6, 0xf

    #@a4
    add-int/2addr v2, v11

    #@a5
    .line 1024
    shr-int/lit8 v11, v6, 0x4

    #@a7
    and-int/lit8 v6, v11, 0xf

    #@a9
    goto :goto_3

    #@aa
    .line 1038
    .end local v6    # "full":I
    .end local v12    # "value":J
    :cond_8
    const/4 v11, 0x2

    #@ab
    invoke-static {v5, v11}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@ae
    move-result v11

    #@af
    if-eqz v11, :cond_9

    #@b1
    .line 1040
    const/4 v7, 0x2

    #@b2
    .restart local v7    # "index":I
    goto :goto_2

    #@b3
    .line 1042
    .end local v7    # "index":I
    :cond_9
    move/from16 v0, p1

    #@b5
    not-int v11, v0

    #@b6
    return v11

    #@b7
    .end local v2    # "excOffset":I
    .restart local v3    # "excOffset":I
    :cond_a
    move v2, v3

    #@b8
    .end local v3    # "excOffset":I
    .restart local v2    # "excOffset":I
    goto :goto_1
.end method


# virtual methods
.method public final addCaseClosure(ILandroid/icu/text/UnicodeSet;)V
    .locals 18
    .param p1, "c"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 260
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 280
    move-object/from16 v0, p0

    #@5
    iget-object v13, v0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@7
    move/from16 v0, p1

    #@9
    invoke-virtual {v13, v0}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@c
    move-result v12

    #@d
    .line 281
    .local v12, "props":I
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@10
    move-result v13

    #@11
    if-nez v13, :cond_1

    #@13
    .line 282
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@16
    move-result v13

    #@17
    if-eqz v13, :cond_0

    #@19
    .line 284
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@1c
    move-result v4

    #@1d
    .line 285
    .local v4, "delta":I
    if-eqz v4, :cond_0

    #@1f
    .line 286
    add-int v13, p1, v4

    #@21
    move-object/from16 v0, p2

    #@23
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@26
    .line 251
    .end local v4    # "delta":I
    :cond_0
    return-void

    #@27
    .line 263
    .end local v12    # "props":I
    :sswitch_0
    const/16 v13, 0x69

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@2e
    .line 264
    return-void

    #@2f
    .line 266
    :sswitch_1
    const/16 v13, 0x49

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@36
    .line 267
    return-void

    #@37
    .line 270
    :sswitch_2
    const-string/jumbo v13, "i\u0307"

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@3f
    .line 271
    return-void

    #@40
    .line 274
    :sswitch_3
    return-void

    #@41
    .line 294
    .restart local v12    # "props":I
    :cond_1
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@44
    move-result v5

    #@45
    .line 296
    .local v5, "excOffset":I
    move-object/from16 v0, p0

    #@47
    iget-object v13, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@49
    add-int/lit8 v6, v5, 0x1

    #@4b
    .end local v5    # "excOffset":I
    .local v6, "excOffset":I
    aget-char v8, v13, v5

    #@4d
    .line 299
    .local v8, "excWord":I
    move v7, v6

    #@4e
    .line 302
    .local v7, "excOffset0":I
    const/4 v10, 0x0

    #@4f
    .local v10, "index":I
    move v5, v6

    #@50
    .end local v6    # "excOffset":I
    .restart local v5    # "excOffset":I
    :goto_0
    const/4 v13, 0x3

    #@51
    if-gt v10, v13, :cond_3

    #@53
    .line 303
    invoke-static {v8, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@56
    move-result v13

    #@57
    if-eqz v13, :cond_2

    #@59
    .line 304
    move v5, v7

    #@5a
    .line 305
    move-object/from16 v0, p0

    #@5c
    invoke-direct {v0, v8, v10, v7}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@5f
    move-result p1

    #@60
    .line 306
    move-object/from16 v0, p2

    #@62
    move/from16 v1, p1

    #@64
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@67
    .line 302
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 311
    :cond_3
    const/4 v13, 0x6

    #@6b
    invoke-static {v8, v13}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@6e
    move-result v13

    #@6f
    if-eqz v13, :cond_6

    #@71
    .line 312
    move v5, v7

    #@72
    .line 313
    const/4 v13, 0x6

    #@73
    move-object/from16 v0, p0

    #@75
    invoke-direct {v0, v8, v13, v7}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@78
    move-result-wide v14

    #@79
    .line 314
    .local v14, "value":J
    long-to-int v13, v14

    #@7a
    and-int/lit8 v2, v13, 0xf

    #@7c
    .line 315
    .local v2, "closureLength":I
    const/16 v13, 0x20

    #@7e
    shr-long v16, v14, v13

    #@80
    move-wide/from16 v0, v16

    #@82
    long-to-int v13, v0

    #@83
    add-int/lit8 v3, v13, 0x1

    #@85
    .line 322
    .end local v14    # "value":J
    .local v3, "closureOffset":I
    :goto_1
    const/4 v13, 0x7

    #@86
    invoke-static {v8, v13}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@89
    move-result v13

    #@8a
    if-eqz v13, :cond_5

    #@8c
    .line 323
    move v5, v7

    #@8d
    .line 324
    const/4 v13, 0x7

    #@8e
    move-object/from16 v0, p0

    #@90
    invoke-direct {v0, v8, v13, v7}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@93
    move-result-wide v14

    #@94
    .line 325
    .restart local v14    # "value":J
    long-to-int v9, v14

    #@95
    .line 328
    .local v9, "fullLength":I
    const/16 v13, 0x20

    #@97
    shr-long v16, v14, v13

    #@99
    move-wide/from16 v0, v16

    #@9b
    long-to-int v13, v0

    #@9c
    add-int/lit8 v5, v13, 0x1

    #@9e
    .line 330
    const v13, 0xffff

    #@a1
    and-int/2addr v9, v13

    #@a2
    .line 333
    and-int/lit8 v13, v9, 0xf

    #@a4
    add-int/2addr v5, v13

    #@a5
    .line 334
    shr-int/lit8 v9, v9, 0x4

    #@a7
    .line 337
    and-int/lit8 v11, v9, 0xf

    #@a9
    .line 338
    .local v11, "length":I
    if-eqz v11, :cond_4

    #@ab
    .line 339
    new-instance v13, Ljava/lang/String;

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v0, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@b1
    move-object/from16 v16, v0

    #@b3
    move-object/from16 v0, v16

    #@b5
    invoke-direct {v13, v0, v5, v11}, Ljava/lang/String;-><init>([CII)V

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@bd
    .line 340
    add-int/2addr v5, v11

    #@be
    .line 344
    :cond_4
    shr-int/lit8 v9, v9, 0x4

    #@c0
    .line 345
    and-int/lit8 v13, v9, 0xf

    #@c2
    add-int/2addr v5, v13

    #@c3
    .line 346
    shr-int/lit8 v9, v9, 0x4

    #@c5
    .line 347
    add-int/2addr v5, v9

    #@c6
    .line 349
    move v3, v5

    #@c7
    .line 353
    .end local v9    # "fullLength":I
    .end local v11    # "length":I
    .end local v14    # "value":J
    :cond_5
    const/4 v10, 0x0

    #@c8
    :goto_2
    if-ge v10, v2, :cond_0

    #@ca
    .line 354
    move-object/from16 v0, p0

    #@cc
    iget-object v13, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@d2
    move-object/from16 v16, v0

    #@d4
    move-object/from16 v0, v16

    #@d6
    array-length v0, v0

    #@d7
    move/from16 v16, v0

    #@d9
    move/from16 v0, v16

    #@db
    invoke-static {v13, v3, v0, v10}, Landroid/icu/text/UTF16;->charAt([CIII)I

    #@de
    move-result p1

    #@df
    .line 355
    move-object/from16 v0, p2

    #@e1
    move/from16 v1, p1

    #@e3
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@e6
    .line 353
    invoke-static/range {p1 .. p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@e9
    move-result v13

    #@ea
    add-int/2addr v10, v13

    #@eb
    goto :goto_2

    #@ec
    .line 317
    .end local v2    # "closureLength":I
    .end local v3    # "closureOffset":I
    :cond_6
    const/4 v2, 0x0

    #@ed
    .line 318
    .restart local v2    # "closureLength":I
    const/4 v3, 0x0

    #@ee
    .restart local v3    # "closureOffset":I
    goto :goto_1

    #@ef
    .line 260
    nop

    #@f0
    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_0
        0x69 -> :sswitch_1
        0x130 -> :sswitch_2
        0x131 -> :sswitch_3
    .end sparse-switch
.end method

.method public final addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 98
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 100
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
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
    .line 96
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    return-void

    #@17
    .line 101
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@19
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@1c
    goto :goto_0
.end method

.method public final addStringCaseClosure(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z
    .locals 12
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 404
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@2
    if-eqz v10, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 405
    :cond_0
    const/4 v10, 0x0

    #@7
    return v10

    #@8
    .line 407
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    .line 408
    .local v2, "length":I
    const/4 v10, 0x1

    #@d
    if-gt v2, v10, :cond_2

    #@f
    .line 416
    const/4 v10, 0x0

    #@10
    return v10

    #@11
    .line 419
    :cond_2
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@13
    const/4 v11, 0x0

    #@14
    aget-char v8, v10, v11

    #@16
    .line 420
    .local v8, "unfoldRows":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@18
    const/4 v11, 0x1

    #@19
    aget-char v7, v10, v11

    #@1b
    .line 421
    .local v7, "unfoldRowWidth":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@1d
    const/4 v11, 0x2

    #@1e
    aget-char v9, v10, v11

    #@20
    .line 424
    .local v9, "unfoldStringWidth":I
    if-le v2, v9, :cond_3

    #@22
    .line 426
    const/4 v10, 0x0

    #@23
    return v10

    #@24
    .line 430
    :cond_3
    const/4 v5, 0x0

    #@25
    .line 431
    .local v5, "start":I
    move v3, v8

    #@26
    .line 432
    .local v3, "limit":I
    :goto_0
    if-ge v5, v3, :cond_7

    #@28
    .line 433
    add-int v10, v5, v3

    #@2a
    div-int/lit8 v1, v10, 0x2

    #@2c
    .line 434
    .local v1, "i":I
    add-int/lit8 v10, v1, 0x1

    #@2e
    mul-int v6, v10, v7

    #@30
    .line 435
    .local v6, "unfoldOffset":I
    invoke-direct {p0, p1, v6, v9}, Landroid/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I

    #@33
    move-result v4

    #@34
    .line 437
    .local v4, "result":I
    if-nez v4, :cond_5

    #@36
    .line 441
    move v1, v9

    #@37
    :goto_1
    if-ge v1, v7, :cond_4

    #@39
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@3b
    add-int v11, v6, v1

    #@3d
    aget-char v10, v10, v11

    #@3f
    if-eqz v10, :cond_4

    #@41
    .line 442
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@43
    iget-object v11, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@45
    array-length v11, v11

    #@46
    invoke-static {v10, v6, v11, v1}, Landroid/icu/text/UTF16;->charAt([CIII)I

    #@49
    move-result v0

    #@4a
    .line 443
    .local v0, "c":I
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@4d
    .line 444
    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    #@50
    .line 441
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@53
    move-result v10

    #@54
    add-int/2addr v1, v10

    #@55
    goto :goto_1

    #@56
    .line 446
    .end local v0    # "c":I
    :cond_4
    const/4 v10, 0x1

    #@57
    return v10

    #@58
    .line 447
    :cond_5
    if-gez v4, :cond_6

    #@5a
    .line 448
    move v3, v1

    #@5b
    goto :goto_0

    #@5c
    .line 450
    :cond_6
    add-int/lit8 v5, v1, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 454
    .end local v1    # "i":I
    .end local v4    # "result":I
    .end local v6    # "unfoldOffset":I
    :cond_7
    const/4 v10, 0x0

    #@60
    return v10
.end method

.method public final fold(II)I
    .locals 10
    .param p1, "c"    # I
    .param p2, "options"    # I

    #@0
    .prologue
    const/16 v9, 0x130

    #@2
    const/16 v8, 0x69

    #@4
    const/16 v7, 0x49

    #@6
    const/4 v6, 0x0

    #@7
    .line 1112
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@9
    invoke-virtual {v5, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@c
    move-result v4

    #@d
    .line 1113
    .local v4, "props":I
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_1

    #@13
    .line 1114
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@16
    move-result v5

    #@17
    const/4 v6, 0x2

    #@18
    if-lt v5, v6, :cond_0

    #@1a
    .line 1115
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@1d
    move-result v5

    #@1e
    add-int/2addr p1, v5

    #@1f
    .line 1152
    :cond_0
    :goto_0
    return p1

    #@20
    .line 1118
    :cond_1
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@23
    move-result v0

    #@24
    .line 1119
    .local v0, "excOffset":I
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@26
    add-int/lit8 v1, v0, 0x1

    #@28
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v2, v5, v0

    #@2a
    .line 1121
    .local v2, "excWord":I
    const v5, 0x8000

    #@2d
    and-int/2addr v5, v2

    #@2e
    if-eqz v5, :cond_5

    #@30
    .line 1123
    and-int/lit16 v5, p2, 0xff

    #@32
    if-nez v5, :cond_3

    #@34
    .line 1125
    if-ne p1, v7, :cond_2

    #@36
    .line 1127
    return v8

    #@37
    .line 1128
    :cond_2
    if-ne p1, v9, :cond_5

    #@39
    .line 1130
    return p1

    #@3a
    .line 1134
    :cond_3
    if-ne p1, v7, :cond_4

    #@3c
    .line 1136
    const/16 v5, 0x131

    #@3e
    return v5

    #@3f
    .line 1137
    :cond_4
    if-ne p1, v9, :cond_5

    #@41
    .line 1139
    return v8

    #@42
    .line 1143
    :cond_5
    const/4 v5, 0x1

    #@43
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_6

    #@49
    .line 1144
    const/4 v3, 0x1

    #@4a
    .line 1150
    .local v3, "index":I
    :goto_1
    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@4d
    move-result p1

    #@4e
    goto :goto_0

    #@4f
    .line 1145
    .end local v3    # "index":I
    :cond_6
    invoke-static {v2, v6}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_7

    #@55
    .line 1146
    const/4 v3, 0x0

    #@56
    .restart local v3    # "index":I
    goto :goto_1

    #@57
    .line 1148
    .end local v3    # "index":I
    :cond_7
    return p1
.end method

.method public final getDotType(I)I
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    .line 469
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    .line 470
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 471
    and-int/lit8 v1, v0, 0x60

    #@e
    return v1

    #@f
    .line 473
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@11
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@14
    move-result v2

    #@15
    aget-char v1, v1, v2

    #@17
    shr-int/lit8 v1, v1, 0x7

    #@19
    and-int/lit8 v1, v1, 0x60

    #@1b
    return v1
.end method

.method public final getType(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getTypeOrIgnorable(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeAndIgnorableFromProps(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final hasBinaryProperty(II)Z
    .locals 8
    .param p1, "c"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 1257
    sparse-switch p2, :sswitch_data_0

    #@6
    .line 1299
    return v7

    #@7
    .line 1259
    :sswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    #@a
    move-result v0

    #@b
    if-ne v6, v0, :cond_0

    #@d
    move v0, v6

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v7

    #@10
    goto :goto_0

    #@11
    .line 1261
    :sswitch_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    #@14
    move-result v0

    #@15
    const/4 v1, 0x2

    #@16
    if-ne v1, v0, :cond_1

    #@18
    :goto_1
    return v6

    #@19
    :cond_1
    move v6, v7

    #@1a
    goto :goto_1

    #@1b
    .line 1263
    :sswitch_2
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isSoftDotted(I)Z

    #@1e
    move-result v0

    #@1f
    return v0

    #@20
    .line 1265
    :sswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isCaseSensitive(I)Z

    #@23
    move-result v0

    #@24
    return v0

    #@25
    .line 1267
    :sswitch_4
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    :goto_2
    return v6

    #@2c
    :cond_2
    move v6, v7

    #@2d
    goto :goto_2

    #@2e
    .line 1269
    :sswitch_5
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    #@31
    move-result v0

    #@32
    shr-int/lit8 v0, v0, 0x2

    #@34
    if-eqz v0, :cond_3

    #@36
    :goto_3
    return v6

    #@37
    :cond_3
    move v6, v7

    #@38
    goto :goto_3

    #@39
    .line 1283
    :sswitch_6
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@3b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3e
    .line 1284
    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@40
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@42
    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    #@44
    move-object v0, p0

    #@45
    move v1, p1

    #@46
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@49
    move-result v0

    #@4a
    if-ltz v0, :cond_4

    #@4c
    :goto_4
    return v6

    #@4d
    :cond_4
    move v6, v7

    #@4e
    goto :goto_4

    #@4f
    .line 1286
    :sswitch_7
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@51
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@54
    .line 1287
    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@56
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@58
    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    #@5a
    move-object v0, p0

    #@5b
    move v1, p1

    #@5c
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@5f
    move-result v0

    #@60
    if-ltz v0, :cond_5

    #@62
    :goto_5
    return v6

    #@63
    :cond_5
    move v6, v7

    #@64
    goto :goto_5

    #@65
    .line 1289
    :sswitch_8
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@67
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6a
    .line 1290
    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@6c
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@6e
    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    #@70
    move-object v0, p0

    #@71
    move v1, p1

    #@72
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@75
    move-result v0

    #@76
    if-ltz v0, :cond_6

    #@78
    :goto_6
    return v6

    #@79
    :cond_6
    move v6, v7

    #@7a
    goto :goto_6

    #@7b
    .line 1293
    :sswitch_9
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@7d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@80
    .line 1295
    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@82
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@84
    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    #@86
    move-object v0, p0

    #@87
    move v1, p1

    #@88
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@8b
    move-result v0

    #@8c
    if-gez v0, :cond_7

    #@8e
    .line 1296
    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@90
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@92
    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    #@94
    move-object v0, p0

    #@95
    move v1, p1

    #@96
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@99
    move-result v0

    #@9a
    if-ltz v0, :cond_8

    #@9c
    .line 1294
    :cond_7
    :goto_7
    return v6

    #@9d
    .line 1297
    :cond_8
    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@9f
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@a1
    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    #@a3
    move-object v0, p0

    #@a4
    move v1, p1

    #@a5
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@a8
    move-result v0

    #@a9
    if-gez v0, :cond_7

    #@ab
    move v6, v7

    #@ac
    goto :goto_7

    #@ad
    .line 1257
    nop

    #@ae
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x1b -> :sswitch_2
        0x1e -> :sswitch_1
        0x22 -> :sswitch_3
        0x31 -> :sswitch_4
        0x32 -> :sswitch_5
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
        0x37 -> :sswitch_9
    .end sparse-switch
.end method

.method public final isCaseSensitive(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 482
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x8

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public final isSoftDotted(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 478
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x20

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public final toFullFolding(ILjava/lang/StringBuilder;I)I
    .locals 12
    .param p1, "c"    # I
    .param p2, "out"    # Ljava/lang/StringBuilder;
    .param p3, "options"    # I

    #@0
    .prologue
    .line 1174
    move v7, p1

    #@1
    .line 1175
    .local v7, "result":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v10, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v6

    #@7
    .line 1176
    .local v6, "props":I
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@a
    move-result v10

    #@b
    if-nez v10, :cond_2

    #@d
    .line 1177
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@10
    move-result v10

    #@11
    const/4 v11, 0x2

    #@12
    if-lt v10, v11, :cond_0

    #@14
    .line 1178
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@17
    move-result v10

    #@18
    add-int v7, p1, v10

    #@1a
    .line 1239
    :cond_0
    :goto_0
    if-ne v7, p1, :cond_1

    #@1c
    not-int v7, v7

    #@1d
    .end local v7    # "result":I
    :cond_1
    return v7

    #@1e
    .line 1181
    .restart local v7    # "result":I
    :cond_2
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@21
    move-result v0

    #@22
    .line 1182
    .local v0, "excOffset":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@24
    add-int/lit8 v1, v0, 0x1

    #@26
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v3, v10, v0

    #@28
    .line 1185
    .local v3, "excWord":I
    move v2, v1

    #@29
    .line 1187
    .local v2, "excOffset2":I
    const v10, 0x8000

    #@2c
    and-int/2addr v10, v3

    #@2d
    if-eqz v10, :cond_6

    #@2f
    .line 1189
    and-int/lit16 v10, p3, 0xff

    #@31
    if-nez v10, :cond_4

    #@33
    .line 1191
    const/16 v10, 0x49

    #@35
    if-ne p1, v10, :cond_3

    #@37
    .line 1193
    const/16 v10, 0x69

    #@39
    return v10

    #@3a
    .line 1194
    :cond_3
    const/16 v10, 0x130

    #@3c
    if-ne p1, v10, :cond_7

    #@3e
    .line 1196
    const-string/jumbo v10, "i\u0307"

    #@41
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 1197
    const/4 v10, 0x2

    #@45
    return v10

    #@46
    .line 1201
    :cond_4
    const/16 v10, 0x49

    #@48
    if-ne p1, v10, :cond_5

    #@4a
    .line 1203
    const/16 v10, 0x131

    #@4c
    return v10

    #@4d
    .line 1204
    :cond_5
    const/16 v10, 0x130

    #@4f
    if-ne p1, v10, :cond_7

    #@51
    .line 1206
    const/16 v10, 0x69

    #@53
    return v10

    #@54
    .line 1209
    :cond_6
    const/4 v10, 0x7

    #@55
    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@58
    move-result v10

    #@59
    if-eqz v10, :cond_7

    #@5b
    .line 1210
    const/4 v10, 0x7

    #@5c
    invoke-direct {p0, v3, v10, v1}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@5f
    move-result-wide v8

    #@60
    .line 1211
    .local v8, "value":J
    long-to-int v10, v8

    #@61
    const v11, 0xffff

    #@64
    and-int v4, v10, v11

    #@66
    .line 1214
    .local v4, "full":I
    const/16 v10, 0x20

    #@68
    shr-long v10, v8, v10

    #@6a
    long-to-int v10, v10

    #@6b
    add-int/lit8 v0, v10, 0x1

    #@6d
    .line 1217
    .end local v1    # "excOffset":I
    .restart local v0    # "excOffset":I
    and-int/lit8 v10, v4, 0xf

    #@6f
    add-int/2addr v0, v10

    #@70
    .line 1218
    shr-int/lit8 v10, v4, 0x4

    #@72
    and-int/lit8 v4, v10, 0xf

    #@74
    .line 1220
    if-eqz v4, :cond_8

    #@76
    .line 1222
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@78
    invoke-virtual {p2, v10, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@7b
    .line 1225
    return v4

    #@7c
    .end local v0    # "excOffset":I
    .end local v4    # "full":I
    .end local v8    # "value":J
    .restart local v1    # "excOffset":I
    :cond_7
    move v0, v1

    #@7d
    .line 1229
    .end local v1    # "excOffset":I
    .restart local v0    # "excOffset":I
    :cond_8
    const/4 v10, 0x1

    #@7e
    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@81
    move-result v10

    #@82
    if-eqz v10, :cond_9

    #@84
    .line 1230
    const/4 v5, 0x1

    #@85
    .line 1236
    .local v5, "index":I
    :goto_1
    invoke-direct {p0, v3, v5, v2}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@88
    move-result v7

    #@89
    goto :goto_0

    #@8a
    .line 1231
    .end local v5    # "index":I
    :cond_9
    const/4 v10, 0x0

    #@8b
    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@8e
    move-result v10

    #@8f
    if-eqz v10, :cond_a

    #@91
    .line 1232
    const/4 v5, 0x0

    #@92
    .restart local v5    # "index":I
    goto :goto_1

    #@93
    .line 1234
    .end local v5    # "index":I
    :cond_a
    not-int v10, p1

    #@94
    return v10
.end method

.method public final toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I
    .locals 12
    .param p1, "c"    # I
    .param p2, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p3, "out"    # Ljava/lang/StringBuilder;
    .param p4, "locale"    # Landroid/icu/util/ULocale;
    .param p5, "locCache"    # [I

    #@0
    .prologue
    .line 814
    move v7, p1

    #@1
    .line 815
    .local v7, "result":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v10, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v6

    #@7
    .line 816
    .local v6, "props":I
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@a
    move-result v10

    #@b
    if-nez v10, :cond_2

    #@d
    .line 817
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@10
    move-result v10

    #@11
    const/4 v11, 0x2

    #@12
    if-lt v10, v11, :cond_0

    #@14
    .line 818
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@17
    move-result v10

    #@18
    add-int v7, p1, v10

    #@1a
    .line 951
    :cond_0
    :goto_0
    if-ne v7, p1, :cond_1

    #@1c
    not-int v7, v7

    #@1d
    .end local v7    # "result":I
    :cond_1
    return v7

    #@1e
    .line 821
    .restart local v7    # "result":I
    :cond_2
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@21
    move-result v0

    #@22
    .line 822
    .local v0, "excOffset":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@24
    add-int/lit8 v1, v0, 0x1

    #@26
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v3, v10, v0

    #@28
    .line 825
    .local v3, "excWord":I
    move v2, v1

    #@29
    .line 827
    .local v2, "excOffset2":I
    and-int/lit16 v10, v3, 0x4000

    #@2b
    if-eqz v10, :cond_10

    #@2d
    .line 829
    invoke-static/range {p4 .. p5}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;[I)I

    #@30
    move-result v5

    #@31
    .line 837
    .local v5, "loc":I
    const/4 v10, 0x3

    #@32
    if-ne v5, v10, :cond_8

    #@34
    .line 839
    const/16 v10, 0x49

    #@36
    if-eq p1, v10, :cond_3

    #@38
    const/16 v10, 0x4a

    #@3a
    if-ne p1, v10, :cond_6

    #@3c
    .line 840
    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Landroid/icu/impl/UCaseProps;->isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    #@3f
    move-result v10

    #@40
    .line 839
    if-nez v10, :cond_5

    #@42
    .line 842
    :cond_4
    const/16 v10, 0xcc

    #@44
    if-eq p1, v10, :cond_5

    #@46
    const/16 v10, 0xcd

    #@48
    if-ne p1, v10, :cond_7

    #@4a
    .line 860
    :cond_5
    sparse-switch p1, :sswitch_data_0

    #@4d
    .line 880
    const/4 v10, 0x0

    #@4e
    return v10

    #@4f
    .line 839
    :cond_6
    const/16 v10, 0x12e

    #@51
    if-ne p1, v10, :cond_4

    #@53
    goto :goto_1

    #@54
    .line 842
    :cond_7
    const/16 v10, 0x128

    #@56
    if-eq p1, v10, :cond_5

    #@58
    .line 883
    :cond_8
    const/4 v10, 0x2

    #@59
    if-ne v5, v10, :cond_9

    #@5b
    const/16 v10, 0x130

    #@5d
    if-ne p1, v10, :cond_9

    #@5f
    .line 891
    const/16 v10, 0x69

    #@61
    return v10

    #@62
    .line 862
    :sswitch_0
    const-string/jumbo v10, "i\u0307"

    #@65
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 863
    const/4 v10, 0x2

    #@69
    return v10

    #@6a
    .line 865
    :sswitch_1
    const-string/jumbo v10, "j\u0307"

    #@6d
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 866
    const/4 v10, 0x2

    #@71
    return v10

    #@72
    .line 868
    :sswitch_2
    const-string/jumbo v10, "\u012f\u0307"

    #@75
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 869
    const/4 v10, 0x2

    #@79
    return v10

    #@7a
    .line 871
    :sswitch_3
    const-string/jumbo v10, "i\u0307\u0300"

    #@7d
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 872
    const/4 v10, 0x3

    #@81
    return v10

    #@82
    .line 874
    :sswitch_4
    const-string/jumbo v10, "i\u0307\u0301"

    #@85
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 875
    const/4 v10, 0x3

    #@89
    return v10

    #@8a
    .line 877
    :sswitch_5
    const-string/jumbo v10, "i\u0307\u0303"

    #@8d
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    .line 878
    const/4 v10, 0x3

    #@91
    return v10

    #@92
    .line 892
    :cond_9
    const/4 v10, 0x2

    #@93
    if-ne v5, v10, :cond_a

    #@95
    const/16 v10, 0x307

    #@97
    if-ne p1, v10, :cond_a

    #@99
    invoke-direct {p0, p2}, Landroid/icu/impl/UCaseProps;->isPrecededBy_I(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    #@9c
    move-result v10

    #@9d
    if-eqz v10, :cond_a

    #@9f
    .line 900
    const/4 v10, 0x0

    #@a0
    return v10

    #@a1
    .line 901
    :cond_a
    const/4 v10, 0x2

    #@a2
    if-ne v5, v10, :cond_b

    #@a4
    const/16 v10, 0x49

    #@a6
    if-ne p1, v10, :cond_b

    #@a8
    invoke-direct {p0, p2}, Landroid/icu/impl/UCaseProps;->isFollowedByDotAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    #@ab
    move-result v10

    #@ac
    if-eqz v10, :cond_c

    #@ae
    .line 909
    :cond_b
    const/16 v10, 0x130

    #@b0
    if-ne p1, v10, :cond_d

    #@b2
    .line 915
    const-string/jumbo v10, "i\u0307"

    #@b5
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 916
    const/4 v10, 0x2

    #@b9
    return v10

    #@ba
    .line 908
    :cond_c
    const/16 v10, 0x131

    #@bc
    return v10

    #@bd
    .line 917
    :cond_d
    const/16 v10, 0x3a3

    #@bf
    if-ne p1, v10, :cond_e

    #@c1
    .line 918
    const/4 v10, 0x1

    #@c2
    invoke-direct {p0, p2, v10}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    #@c5
    move-result v10

    #@c6
    if-eqz v10, :cond_f

    #@c8
    .line 946
    .end local v5    # "loc":I
    :cond_e
    const/4 v10, 0x0

    #@c9
    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@cc
    move-result v10

    #@cd
    if-eqz v10, :cond_0

    #@cf
    .line 947
    const/4 v10, 0x0

    #@d0
    invoke-direct {p0, v3, v10, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@d3
    move-result v7

    #@d4
    goto/16 :goto_0

    #@d6
    .line 919
    .restart local v5    # "loc":I
    :cond_f
    const/4 v10, -0x1

    #@d7
    invoke-direct {p0, p2, v10}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    #@da
    move-result v10

    #@db
    .line 917
    if-eqz v10, :cond_e

    #@dd
    .line 927
    const/16 v10, 0x3c2

    #@df
    return v10

    #@e0
    .line 931
    .end local v5    # "loc":I
    :cond_10
    const/4 v10, 0x7

    #@e1
    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@e4
    move-result v10

    #@e5
    if-eqz v10, :cond_e

    #@e7
    .line 932
    const/4 v10, 0x7

    #@e8
    invoke-direct {p0, v3, v10, v1}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@eb
    move-result-wide v8

    #@ec
    .line 933
    .local v8, "value":J
    long-to-int v10, v8

    #@ed
    and-int/lit8 v4, v10, 0xf

    #@ef
    .line 934
    .local v4, "full":I
    if-eqz v4, :cond_e

    #@f1
    .line 936
    const/16 v10, 0x20

    #@f3
    shr-long v10, v8, v10

    #@f5
    long-to-int v10, v10

    #@f6
    add-int/lit8 v0, v10, 0x1

    #@f8
    .line 939
    .end local v1    # "excOffset":I
    .restart local v0    # "excOffset":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@fa
    invoke-virtual {p3, v10, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@fd
    .line 942
    return v4

    #@fe
    .line 860
    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0x128 -> :sswitch_5
        0x12e -> :sswitch_2
    .end sparse-switch
.end method

.method public final toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I
    .locals 7
    .param p1, "c"    # I
    .param p2, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p3, "out"    # Ljava/lang/StringBuilder;
    .param p4, "locale"    # Landroid/icu/util/ULocale;
    .param p5, "locCache"    # [I

    #@0
    .prologue
    .line 1059
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/UCaseProps;->toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[IZ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I
    .locals 7
    .param p1, "c"    # I
    .param p2, "iter"    # Landroid/icu/impl/UCaseProps$ContextIterator;
    .param p3, "out"    # Ljava/lang/StringBuilder;
    .param p4, "locale"    # Landroid/icu/util/ULocale;
    .param p5, "locCache"    # [I

    #@0
    .prologue
    .line 1053
    const/4 v6, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/UCaseProps;->toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[IZ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final tolower(I)I
    .locals 6
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 189
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v4, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v3

    #@7
    .line 190
    .local v3, "props":I
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_1

    #@d
    .line 191
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@10
    move-result v4

    #@11
    const/4 v5, 0x2

    #@12
    if-lt v4, v5, :cond_0

    #@14
    .line 192
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@17
    move-result v4

    #@18
    add-int/2addr p1, v4

    #@19
    .line 201
    :cond_0
    :goto_0
    return p1

    #@1a
    .line 195
    :cond_1
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@1d
    move-result v0

    #@1e
    .line 196
    .local v0, "excOffset":I
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@20
    add-int/lit8 v1, v0, 0x1

    #@22
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v2, v4, v0

    #@24
    .line 197
    .local v2, "excWord":I
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 198
    invoke-direct {p0, v2, v5, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@2d
    move-result p1

    #@2e
    goto :goto_0
.end method

.method public final totitle(I)I
    .locals 7
    .param p1, "c"    # I

    #@0
    .prologue
    .line 221
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v5, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v4

    #@6
    .line 222
    .local v4, "props":I
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_1

    #@c
    .line 223
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@f
    move-result v5

    #@10
    const/4 v6, 0x1

    #@11
    if-ne v5, v6, :cond_0

    #@13
    .line 224
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@16
    move-result v5

    #@17
    add-int/2addr p1, v5

    #@18
    .line 239
    :cond_0
    :goto_0
    return p1

    #@19
    .line 227
    :cond_1
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@1c
    move-result v0

    #@1d
    .line 228
    .local v0, "excOffset":I
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@1f
    add-int/lit8 v1, v0, 0x1

    #@21
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v2, v5, v0

    #@23
    .line 230
    .local v2, "excWord":I
    const/4 v5, 0x3

    #@24
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 231
    const/4 v3, 0x3

    #@2b
    .line 237
    .local v3, "index":I
    :goto_1
    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@2e
    move-result p1

    #@2f
    goto :goto_0

    #@30
    .line 232
    .end local v3    # "index":I
    :cond_2
    const/4 v5, 0x2

    #@31
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_3

    #@37
    .line 233
    const/4 v3, 0x2

    #@38
    .restart local v3    # "index":I
    goto :goto_1

    #@39
    .line 235
    .end local v3    # "index":I
    :cond_3
    return p1
.end method

.method public final toupper(I)I
    .locals 6
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 205
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v4, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v3

    #@7
    .line 206
    .local v3, "props":I
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_1

    #@d
    .line 207
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@10
    move-result v4

    #@11
    const/4 v5, 0x1

    #@12
    if-ne v4, v5, :cond_0

    #@14
    .line 208
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@17
    move-result v4

    #@18
    add-int/2addr p1, v4

    #@19
    .line 217
    :cond_0
    :goto_0
    return p1

    #@1a
    .line 211
    :cond_1
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@1d
    move-result v0

    #@1e
    .line 212
    .local v0, "excOffset":I
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@20
    add-int/lit8 v1, v0, 0x1

    #@22
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v2, v4, v0

    #@24
    .line 213
    .local v2, "excWord":I
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 214
    invoke-direct {p0, v2, v5, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@2d
    move-result p1

    #@2e
    goto :goto_0
.end method
